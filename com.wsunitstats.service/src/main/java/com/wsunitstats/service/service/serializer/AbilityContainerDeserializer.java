package com.wsunitstats.service.service.serializer;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonNode;
import com.wsunitstats.domain.submodel.ability.container.DeathAbilityContainer;
import com.wsunitstats.domain.submodel.ability.container.GenericAbilityContainer;
import com.wsunitstats.domain.submodel.ability.container.OnActionAbilityContainer;
import com.wsunitstats.domain.submodel.ability.container.WorkAbilityContainer;
import com.wsunitstats.domain.submodel.ability.container.ZoneEventAbilityContainer;

import java.io.IOException;

import static com.wsunitstats.utils.Constants.AbilityContainerType;

public class AbilityContainerDeserializer extends JsonDeserializer<GenericAbilityContainer> {
    @Override
    public GenericAbilityContainer deserialize(JsonParser parser, DeserializationContext context) throws IOException {
        GenericAbilityContainer ability = null;
        ObjectCodec codec = parser.getCodec();
        JsonNode node = codec.readTree(parser);
        if (node.isObject()) {
            JsonNode abilityType = node.get("containerType");

            if (abilityType.isNull()) {
                return null;
            }

            switch (AbilityContainerType.get(abilityType.asInt())) {
                case SELF -> ability = getAbilityContainer(OnActionAbilityContainer.class, node, codec, context);
                case WORK -> ability = getAbilityContainer(WorkAbilityContainer.class, node, codec, context);
                case ZONE_EVENT -> ability = getAbilityContainer(ZoneEventAbilityContainer.class, node, codec, context);
                case DEATH -> ability = getAbilityContainer(DeathAbilityContainer.class, node, codec, context);
            }
        }
        return ability;
    }

    private GenericAbilityContainer getAbilityContainer(Class<? extends GenericAbilityContainer> clazz, JsonNode node, ObjectCodec codec, DeserializationContext context) throws IOException {
        JavaType modelType = context.getTypeFactory().constructType(clazz);
        JsonDeserializer<?> deserializer = context.findRootValueDeserializer(modelType);
        JsonParser modelParser = node.traverse(codec);
        modelParser.nextToken();
        return (GenericAbilityContainer) deserializer.deserialize(modelParser, context);
    }
}
