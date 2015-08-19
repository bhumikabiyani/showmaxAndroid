// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            yk, afm, yi, qc

public class ym extends yk
{

    protected final String a;

    public ym(afm afm, yi yi, qc qc, Class class1, String s)
    {
        super(afm, yi, qc, class1);
        a = s;
    }

    public com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As a()
    {
        return com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As.EXTERNAL_PROPERTY;
    }

    public String b()
    {
        return a;
    }
}
