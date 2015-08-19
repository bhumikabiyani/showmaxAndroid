// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            th, sw, afm, adz, 
//            tw, ts, qu, ow, 
//            qm

public final class tr
{

    protected final th a;
    protected final HashMap b = new HashMap();
    protected Object c[];
    protected final sw d[];

    public tr(th th1)
    {
        Object obj = null;
        super();
        a = th1;
        sw asw[] = th1.k();
        int j = asw.length;
        int i = 0;
        th1 = null;
        while (i < j) 
        {
            sw sw1 = asw[i];
            b.put(sw1.c(), sw1);
            Object aobj[] = ((Object []) (obj));
            if (sw1.a().t())
            {
                aobj = ((Object []) (obj));
                if (obj == null)
                {
                    aobj = new Object[j];
                }
                aobj[i] = adz.f(sw1.a().p());
            }
            obj = th1;
            if (sw1.k() != null)
            {
                obj = th1;
                if (th1 == null)
                {
                    obj = new sw[j];
                }
                obj[i] = sw1;
            }
            i++;
            th1 = ((th) (obj));
            obj = ((Object) (aobj));
        }
        c = ((Object []) (obj));
        d = th1;
    }

    public sw a(String s)
    {
        return (sw)b.get(s);
    }

    public tw a(ow ow, qm qm)
    {
        ow = new tw(ow, qm, b.size());
        if (d != null)
        {
            ow.a(d);
        }
        return ow;
    }

    public Object a(tw tw1)
        throws IOException
    {
        Object obj = a.a(tw1.a(c));
        for (tw1 = tw1.a(); tw1 != null; tw1 = ((ts) (tw1)).a)
        {
            tw1.a(obj);
        }

        return obj;
    }

    public Collection a()
    {
        return b.values();
    }

    public void a(sw sw1, qu qu1)
    {
        sw1 = sw1.a(qu1);
        b.put(sw1.c(), sw1);
        qu1 = ((qu) (qu1.b()));
        if (qu1 != null)
        {
            if (c == null)
            {
                c = new Object[b.size()];
            }
            c[sw1.j()] = qu1;
        }
    }
}
