// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            zf, zg, xq, zc, 
//            ra

public class zh
{

    private static final zf f[] = new zf[0];
    protected final xq a;
    protected List b;
    protected zf c[];
    protected zc d;
    protected Object e;

    public zh(xq xq1)
    {
        a = xq1;
    }

    public List a()
    {
        return b;
    }

    public void a(zc zc)
    {
        d = zc;
    }

    public void a(Object obj)
    {
        e = obj;
    }

    public void a(List list)
    {
        b = list;
    }

    public void a(zf azf[])
    {
        c = azf;
    }

    public ra b()
    {
        zf azf[];
        if (b == null || b.isEmpty())
        {
            if (d == null)
            {
                return null;
            }
            azf = f;
        } else
        {
            azf = (zf[])b.toArray(new zf[b.size()]);
        }
        return new zg(a.a(), azf, c, d, e);
    }

    public zg c()
    {
        return zg.a(a.b());
    }

}
