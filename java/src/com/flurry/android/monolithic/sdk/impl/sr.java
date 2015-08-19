// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            tj, sp, sw, xq, 
//            ty, th, sv, qc, 
//            qu, qe, afm, ado, 
//            xk

public class sr
{

    protected final xq a;
    protected final HashMap b = new LinkedHashMap();
    protected List c;
    protected HashMap d;
    protected HashSet e;
    protected th f;
    protected sv g;
    protected boolean h;

    public sr(xq xq1)
    {
        a = xq1;
    }

    public qu a(qc qc)
    {
        tj tj1 = new tj(b.values());
        tj1.a();
        return new sp(a, qc, f, tj1, d, e, h, g, c);
    }

    public void a(qe qe)
    {
    }

    public void a(sv sv)
    {
        if (g != null && sv != null)
        {
            throw new IllegalStateException("_anySetter already set to non-null");
        } else
        {
            g = sv;
            return;
        }
    }

    public void a(sw sw1)
    {
        sw sw2 = (sw)b.put(sw1.c(), sw1);
        if (sw2 != null && sw2 != sw1)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Duplicate property '").append(sw1.c()).append("' for ").append(a.a()).toString());
        } else
        {
            return;
        }
    }

    public void a(sw sw1, boolean flag)
    {
        b.put(sw1.c(), sw1);
    }

    public void a(th th)
    {
        f = th;
    }

    public void a(String s)
    {
        if (e == null)
        {
            e = new HashSet();
        }
        e.add(s);
    }

    public void a(String s, afm afm, ado ado, xk xk, Object obj)
    {
        if (c == null)
        {
            c = new ArrayList();
        }
        c.add(new ty(s, afm, ado, xk, obj));
    }

    public void a(String s, sw sw1)
    {
        if (d == null)
        {
            d = new HashMap(4);
        }
        d.put(s, sw1);
        if (b != null)
        {
            b.remove(sw1.c());
        }
    }

    public void a(boolean flag)
    {
        h = flag;
    }

    public boolean b(String s)
    {
        return b.containsKey(s);
    }
}
