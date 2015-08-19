// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


class yx
{

    static final int a[];
    static final int b[];

    static 
    {
        b = new int[com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.Id.values().length];
        try
        {
            b[com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.Id.CLASS.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            b[com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.Id.MINIMAL_CLASS.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            b[com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.Id.NAME.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            b[com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.Id.NONE.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            b[com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.Id.CUSTOM.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        a = new int[com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As.values().length];
        try
        {
            a[com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As.WRAPPER_ARRAY.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            a[com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As.PROPERTY.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As.WRAPPER_OBJECT.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As.EXTERNAL_PROPERTY.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror)
        {
            return;
        }
    }
}
