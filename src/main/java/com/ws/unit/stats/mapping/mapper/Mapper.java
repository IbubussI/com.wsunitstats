package com.ws.unit.stats.mapping.mapper;

/**
 * Interface for any mapper
 *
 * @param <T> target type
 * @param <S> source type
 */
public interface Mapper<S, T> {

    /**
     * Maps given raw model to internal representation
     *
     * @param source accepts any type
     * @return source mapped to <T>
     */
    T map(S source);

}
