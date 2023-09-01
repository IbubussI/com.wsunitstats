package com.wsunitstats.service.service.serializer;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonNode;
import com.wsunitstats.domain.submodel.ability.ActionAbilityModel;
import com.wsunitstats.domain.submodel.ability.CreateEnvAbilityModel;
import com.wsunitstats.domain.submodel.ability.CreateUnitAbilityModel;
import com.wsunitstats.domain.submodel.ability.DamageAbilityModel;
import com.wsunitstats.domain.submodel.ability.GenericAbility;
import com.wsunitstats.domain.submodel.ability.ResearchAbilityModel;
import com.wsunitstats.domain.submodel.ability.TransformAbilityModel;

import java.io.IOException;

import static com.wsunitstats.utils.Constants.AbilityType;

public class AbilityDeserializer extends JsonDeserializer<GenericAbility> {
    @Override
    public GenericAbility deserialize(JsonParser parser, DeserializationContext context) throws IOException {
        GenericAbility ability = null;
        ObjectCodec codec = parser.getCodec();
        JsonNode node = codec.readTree(parser);
        if (node.isObject()) {
            JsonNode abilityType = node.get("abilityType");

            if (abilityType.isNull()) {
                return null;
            }

            switch (AbilityType.get(abilityType.asInt())) {
                case CREATE_UNIT -> ability = getAbility(CreateUnitAbilityModel.class, node, codec, context);
                case RESEARCH -> ability = getAbility(ResearchAbilityModel.class, node, codec, context);
                case TRANSFORM -> ability = getAbility(TransformAbilityModel.class, node, codec, context);
                case CREATE_ENV -> ability = getAbility(CreateEnvAbilityModel.class, node, codec, context);
                case SELF_BUFF -> ability = getAbility(ActionAbilityModel.class, node, codec, context);
                case DAMAGE -> ability = getAbility(DamageAbilityModel.class, node, codec, context);
            }
        }
        return ability;
    }

    private GenericAbility getAbility(Class<? extends GenericAbility> clazz, JsonNode node, ObjectCodec codec, DeserializationContext context) throws IOException {
        JavaType modelType = context.getTypeFactory().constructType(clazz);
        JsonDeserializer<?> deserializer = context.findRootValueDeserializer(modelType);
        JsonParser modelParser = node.traverse(codec);
        modelParser.nextToken();
        return (GenericAbility) deserializer.deserialize(modelParser, context);
    }
}
