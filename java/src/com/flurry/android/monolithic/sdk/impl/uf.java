// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Collection;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ug, ro, afm, oz, 
//            ql, qm, ow, pb, 
//            qu, rw, qw, th, 
//            qd, qk, qq

public class uf extends ug
    implements ro
{

    protected final afm a;
    protected final qu b;
    protected final rw c;
    protected final th d;
    protected qu e;

    public uf(afm afm1, qu qu1, rw rw1, th th1)
    {
        super(afm1.p());
        a = afm1;
        b = qu1;
        c = rw1;
        d = th1;
    }

    private final Collection b(ow ow1, qm qm1, Collection collection)
        throws IOException, oz
    {
        if (!qm1.a(ql.o))
        {
            throw qm1.b(a.p());
        }
        qu qu1 = b;
        rw rw1 = c;
        if (ow1.e() == pb.m)
        {
            ow1 = null;
        } else
        if (rw1 == null)
        {
            ow1 = ((ow) (qu1.a(ow1, qm1)));
        } else
        {
            ow1 = ((ow) (qu1.a(ow1, qm1, rw1)));
        }
        collection.add(ow1);
        return collection;
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public Object a(ow ow1, qm qm1, rw rw1)
        throws IOException, oz
    {
        return rw1.b(ow1, qm1);
    }

    public volatile Object a(ow ow1, qm qm1, Object obj)
        throws IOException, oz
    {
        return a(ow1, qm1, (Collection)obj);
    }

    public Collection a(ow ow1, qm qm1, Collection collection)
        throws IOException, oz
    {
        if (ow1.j()) goto _L2; else goto _L1
_L1:
        Object obj = b(ow1, qm1, collection);
_L4:
        return ((Collection) (obj));
_L2:
        qu qu1 = b;
        rw rw1 = c;
        do
        {
            pb pb1 = ow1.b();
            obj = collection;
            if (pb1 == pb.e)
            {
                continue;
            }
            if (pb1 == pb.m)
            {
                obj = null;
            } else
            if (rw1 == null)
            {
                obj = qu1.a(ow1, qm1);
            } else
            {
                obj = qu1.a(ow1, qm1, rw1);
            }
            collection.add(obj);
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(qk qk, qq qq)
        throws qw
    {
        if (d.i())
        {
            afm afm1 = d.l();
            if (afm1 == null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Invalid delegate-creator definition for ").append(a).append(": value instantiator (").append(d.getClass().getName()).append(") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'").toString());
            }
            e = a(qk, qq, afm1, ((qc) (new qd(null, afm1, null, d.o()))));
        }
    }

    public Collection b(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (e != null)
        {
            return (Collection)d.a(e.a(ow1, qm1));
        }
        if (ow1.e() == pb.h)
        {
            String s = ow1.k();
            if (s.length() == 0)
            {
                return (Collection)d.a(s);
            }
        }
        return a(ow1, qm1, (Collection)d.m());
    }

    public qu d()
    {
        return b;
    }
}
