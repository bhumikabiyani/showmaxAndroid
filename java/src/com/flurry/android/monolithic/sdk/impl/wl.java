// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            we, aed, qw, xl, 
//            adz, qm

final class wl extends we
{

    protected final aed b;
    protected final xl c;

    protected wl(aed aed1, xl xl1)
    {
        super(aed1.a());
        b = aed1;
        c = xl1;
    }

    public Object b(String s, qm qm1)
        throws qw
    {
        if (c == null) goto _L2; else goto _L1
_L1:
        Object obj = c.a(s);
_L4:
        return obj;
        obj;
        adz.c(((Throwable) (obj)));
_L2:
        Enum enum = b.a(s);
        obj = enum;
        if (enum == null)
        {
            throw qm1.a(a, s, "not one of values for Enum class");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
