// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aal, aao, aar, ra

final class aam extends aal
{

    private final Class a;
    private final Class b;
    private final ra c;
    private final ra d;

    public aam(Class class1, ra ra, Class class2, ra ra1)
    {
        a = class1;
        c = ra;
        b = class2;
        d = ra1;
    }

    public aal a(Class class1, ra ra)
    {
        return new aao(new aar[] {
            new aar(a, c), new aar(b, d)
        });
    }

    public ra a(Class class1)
    {
        if (class1 == a)
        {
            return c;
        }
        if (class1 == b)
        {
            return d;
        } else
        {
            return null;
        }
    }
}
