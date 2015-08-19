// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            qw, ow, ot

public class xe extends qw
{

    protected final Class c;
    protected final String d;

    public xe(String s, ot ot, Class class1, String s1)
    {
        super(s, ot);
        c = class1;
        d = s1;
    }

    public static xe a(ow ow1, Object obj, String s)
    {
        if (obj == null)
        {
            throw new IllegalArgumentException();
        }
        Class class1;
        if (obj instanceof Class)
        {
            class1 = (Class)obj;
        } else
        {
            class1 = obj.getClass();
        }
        ow1 = new xe((new StringBuilder()).append("Unrecognized field \"").append(s).append("\" (Class ").append(class1.getName()).append("), not marked as ignorable").toString(), ow1.i(), class1, s);
        ow1.a(obj, s);
        return ow1;
    }
}
