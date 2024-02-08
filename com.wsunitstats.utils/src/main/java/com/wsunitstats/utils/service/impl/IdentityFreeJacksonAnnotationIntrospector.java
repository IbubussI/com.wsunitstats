package com.wsunitstats.utils.service.impl;

import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.JacksonAnnotationIntrospector;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;

/**
 * Intention of this class is to suppress JsonIdentityInfo annotation
 * during serialization to not affect the json structure
 */
public class IdentityFreeJacksonAnnotationIntrospector extends JacksonAnnotationIntrospector {
    @Override
    public ObjectIdInfo findObjectIdInfo(Annotated ann) {
        return null;
    }

    @Override
    public ObjectIdInfo findObjectReferenceInfo(Annotated ann, ObjectIdInfo objectIdInfo) {
        return null;
    }
}
