// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            kb, kj, jx, ji, 
//            kl, or, kf, ka, 
//            kc

class jr extends kb
{

    private final List i;
    private final Map j = new HashMap();

    public jr(ka ka, String s, jx jx1)
    {
        super(kj.b, ka, s);
        i = jx1.a();
        ka = jx1.iterator();
        for (int k = 0; ka.hasNext(); k++)
        {
            s = (String)ka.next();
            if (j.put(ji.g(s), Integer.valueOf(k)) != null)
            {
                throw new kl((new StringBuilder()).append("Duplicate enum symbol: ").append(s).toString());
            }
        }

    }

    void a(kc kc, or or1)
        throws IOException
    {
        if (c(kc, or1))
        {
            return;
        }
        or1.d();
        or1.a("type", "enum");
        d(kc, or1);
        if (e() != null)
        {
            or1.a("doc", e());
        }
        or1.f("symbols");
        for (kc = i.iterator(); kc.hasNext(); or1.b((String)kc.next())) { }
        or1.c();
        c.a(or1);
        a(or1);
        or1.e();
    }

    public int c(String s)
    {
        return ((Integer)j.get(s)).intValue();
    }

    public List c()
    {
        return i;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof jr))
            {
                return false;
            }
            obj = (jr)obj;
            if (!c(((ji) (obj))) || !a(((kb) (obj))) || !i.equals(((jr) (obj)).i) || !c.equals(((jr) (obj)).c))
            {
                return false;
            }
        }
        return true;
    }

    int m()
    {
        return super.m() + i.hashCode();
    }
}
