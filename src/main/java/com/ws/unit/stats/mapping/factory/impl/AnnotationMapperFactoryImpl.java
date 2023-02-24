package com.ws.unit.stats.mapping.factory.impl;

import com.ws.unit.stats.mapping.mapper.Mapper;
import com.ws.unit.stats.mapping.factory.MapperFactory;
import com.ws.unit.stats.mapping.factory.MapperType;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.ClassPathScanningCandidateComponentProvider;
import org.springframework.core.annotation.Order;
import org.springframework.core.type.filter.AnnotationTypeFilter;
import org.springframework.stereotype.Service;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

import static com.ws.unit.stats.util.Constants.MAPPER_PACKAGE_NAME;

@Service
@Order
public class AnnotationMapperFactoryImpl implements MapperFactory {

    @Autowired
    private ApplicationContext appContext;

    private final Map<String, Map<String, ? super Mapper<?,?>>> mappers = new HashMap<>();

    @PostConstruct
    public void init() {
        ClassPathScanningCandidateComponentProvider componentProvider =
                new ClassPathScanningCandidateComponentProvider(false);
        componentProvider.addIncludeFilter(new AnnotationTypeFilter(MapperType.class));

        for (BeanDefinition candidate : componentProvider.findCandidateComponents(MAPPER_PACKAGE_NAME)) {
            String className = candidate.getBeanClassName();
            if (className == null) {
                continue;
            }
            Mapper<?,?> mapper = (Mapper<?,?>) appContext.getBean(className);

            Class<?> mapperClass = mapper.getClass();
            Method[] methods = mapperClass.getDeclaredMethods();
            Class<?> sourceType = null;
            Class<?> targetType = null;
            for (Method methodCandidate : methods) {
                sourceType = methodCandidate.getParameterTypes()[0];
                targetType = methodCandidate.getReturnType();
                if (!sourceType.equals(Object.class) || !targetType.equals(Object.class)) {
                    break;
                }
            }
            registerMapper(mapper, sourceType, targetType); // NOSONAR Mapper always have map method
        }
    }

    @SuppressWarnings("unchecked")
    public <S, T> Mapper<S, T> getMapper(Class<S> sourceType, Class<T> targetType) {
        if (!mappers.containsKey(sourceType.getName())) {
            return null;
        }
        Map<String, ? super Mapper<?,?>> sourceMap = mappers.get(sourceType.getName());
        if (!sourceMap.containsKey(targetType.getName())) {
            return null;
        }
        return (Mapper<S, T>) sourceMap.get(targetType.getName());
    }

    private void registerMapper(Mapper<?,?> mapper, Class<?> sourceType, Class<?> targetType) {
        Map<String, ? super Mapper<?,?>> targetMap = new HashMap<>();
        targetMap.put(targetType.getName(), mapper);
        mappers.put(sourceType.getName(), targetMap);
    }
}
