// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            qc, afm, xk, ado

public class qd
    implements qc
{

    protected final String a;
    protected final afm b;
    protected final xk c;
    protected final ado d;

    public qd(String s, afm afm, ado ado, xk xk)
    {
        a = s;
        b = afm;
        c = xk;
        d = ado;
    }

    public afm a()
    {
        return b;
    }

    public qd a(afm afm)
    {
        return new qd(a, afm, d, c);
    }

    public xk b()
    {
        return c;
    }

    public String c()
    {
        return a;
    }
}
