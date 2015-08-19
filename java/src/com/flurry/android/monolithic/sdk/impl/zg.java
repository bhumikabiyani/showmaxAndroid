// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aaz, aax, oq, or, 
//            afm, zf, zc, ra, 
//            ru

public class zg extends aaz
{

    public zg(afm afm, zf azf[], zf azf1[], zc zc, Object obj)
    {
        super(afm, azf, azf1, zc, obj);
    }

    public zg(Class class1, zf azf[], zf azf1[], zc zc, Object obj)
    {
        super(class1, azf, azf1, zc, obj);
    }

    public static zg a(Class class1)
    {
        return new zg(class1, a, null, null, null);
    }

    public ra a()
    {
        return new aax(this);
    }

    public final void a(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        or1.d();
        if (e != null)
        {
            c(obj, or1, ru);
        } else
        {
            b(obj, or1, ru);
        }
        or1.e();
    }

    public String toString()
    {
        return (new StringBuilder()).append("BeanSerializer for ").append(c().getName()).toString();
    }
}
