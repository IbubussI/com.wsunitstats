package com.wsunitstats.utils.service.impl.serializer.number;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.wsunitstats.utils.Util;

import java.io.IOException;

public class DoubleSerializer extends JsonSerializer<Double> implements ContextualSerializer {
    // default value
    private int precision = 1;

    public DoubleSerializer(int precision) {
        this.precision = precision;
    }

    public DoubleSerializer() {
        // default
    }

    @Override
    public void serialize(Double value, JsonGenerator gen, SerializerProvider serializers) throws IOException {
        if (precision == 0) {
            gen.writeNumber(value);
        } else {
            gen.writeNumber(Util.round(value, precision));
        }
    }

    @Override
    public JsonSerializer<?> createContextual(SerializerProvider provider, BeanProperty property) {
        FloatPrecision precision = property.getAnnotation(FloatPrecision.class);
        if (precision != null) {
            return new DoubleSerializer(precision.value());
        }
        return this;
    }
}
