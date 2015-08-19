// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            we, qw, qm

final class ws extends we
{

    private static final ws b = new ws(java/lang/String);
    private static final ws c = new ws(java/lang/Object);

    private ws(Class class1)
    {
        super(class1);
    }

    public static ws a(Class class1)
    {
        if (class1 == java/lang/String)
        {
            return b;
        }
        if (class1 == java/lang/Object)
        {
            return c;
        } else
        {
            return new ws(class1);
        }
    }

    public Object b(String s, qm qm)
        throws Exception
    {
        return c(s, qm);
    }

    public String c(String s, qm qm)
        throws qw
    {
        return s;
    }

}
