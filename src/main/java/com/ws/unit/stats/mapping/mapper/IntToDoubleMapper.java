package com.ws.unit.stats.mapping.mapper;

import com.ws.unit.stats.mapping.factory.MapperType;
import com.ws.unit.stats.util.Constants;

@MapperType
public class IntToDoubleMapper implements Mapper<Integer, Double> {

    @Override
    public Double map(Integer source) {
        if (source == null) {
            return null;
        }
        return source / Constants.FLOAT_VALUE_MULTIPLIER;
    }

}

