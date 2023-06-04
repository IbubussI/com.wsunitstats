package com.wsunitstats.utils.service.impl.serializer.number;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;

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
            BigDecimal bd = new BigDecimal(value);
            bd = bd.setScale(precision, RoundingMode.HALF_UP);
            gen.writeNumber(bd.doubleValue());
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
