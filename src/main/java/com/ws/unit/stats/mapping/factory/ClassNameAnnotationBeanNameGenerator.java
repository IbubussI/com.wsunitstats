package com.ws.unit.stats.mapping.factory;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.AnnotationBeanNameGenerator;

public class ClassNameAnnotationBeanNameGenerator extends AnnotationBeanNameGenerator {
    @Override
    protected String buildDefaultBeanName(BeanDefinition definition) {
        return definition.getBeanClassName();
    }
}
