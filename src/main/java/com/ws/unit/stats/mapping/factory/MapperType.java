package com.ws.unit.stats.mapping.factory;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ ElementType.TYPE })
@Retention(RetentionPolicy.RUNTIME)
@ComponentScan(nameGenerator = ClassNameAnnotationBeanNameGenerator.class)
@Service
public @interface MapperType {
}
