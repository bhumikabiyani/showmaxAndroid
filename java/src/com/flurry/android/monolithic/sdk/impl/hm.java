// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.LinkedHashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            hk, hv, hl

public class hm extends hk
{

    private String e;
    private int f;
    private int g;
    private LinkedHashMap h;

    public hm(String s)
    {
        super(s);
        e = "";
        f = -1;
        g = 0;
        h = hv.a(1, 0L);
    }

    public void a(int i)
    {
        f = i;
    }

    public LinkedHashMap d()
    {
        return h;
    }

    public void e()
    {
        g = g + 1;
    }

    public int f()
    {
        return g;
    }

    public hl g()
    {
        return d;
    }

    public int h()
    {
        return f;
    }
}
