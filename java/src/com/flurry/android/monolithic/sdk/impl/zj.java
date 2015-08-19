// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            rt, rv, zk, adp

public class zj extends rt
{

    protected static final rv a[] = new rv[0];
    protected static final zk b[] = new zk[0];
    protected final rv c[];
    protected final rv d[];
    protected final zk e[];

    public zj()
    {
        this(null, null, null);
    }

    protected zj(rv arv[], rv arv1[], zk azk[])
    {
        rv arv2[] = arv;
        if (arv == null)
        {
            arv2 = a;
        }
        c = arv2;
        arv = arv1;
        if (arv1 == null)
        {
            arv = a;
        }
        d = arv;
        arv = azk;
        if (azk == null)
        {
            arv = b;
        }
        e = arv;
    }

    public boolean a()
    {
        return d.length > 0;
    }

    public boolean b()
    {
        return e.length > 0;
    }

    public Iterable c()
    {
        return adp.b(c);
    }

    public Iterable d()
    {
        return adp.b(d);
    }

    public Iterable e()
    {
        return adp.b(e);
    }

}
