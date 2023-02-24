package com.ws.unit.stats.mapping.factory;

import com.ws.unit.stats.mapping.mapper.Mapper;

public interface MapperFactory {
    <S, T> Mapper<S, T> getMapper(Class<S> sourceType, Class<T> targetType);
}
