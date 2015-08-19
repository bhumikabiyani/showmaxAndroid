// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Collection;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ug, ro, afm, oz, 
//            ow, pb, qu, ql, 
//            qm, rw, qw, th, 
//            qd, qk, qq

public final class wx extends ug
    implements ro
{

    protected final afm a;
    protected final qu b;
    protected final boolean c;
    protected final th d;
    protected qu e;

    public wx(afm afm1, qu qu1, th th1)
    {
        super(afm1.p());
        a = afm1;
        b = qu1;
        d = th1;
        c = a(qu1);
    }

    private Collection b(ow ow1, qm qm1, Collection collection)
        throws IOException, oz
    {
        qu qu1 = b;
        do
        {
            Object obj = ow1.b();
            if (obj != pb.e)
            {
                if (obj == pb.m)
                {
                    obj = null;
                } else
                {
                    obj = (String)qu1.a(ow1, qm1);
                }
                collection.add(obj);
            } else
            {
                return collection;
            }
        } while (true);
    }

    private final Collection c(ow ow1, qm qm1, Collection collection)
        throws IOException, oz
    {
        if (!qm1.a(ql.o))
        {
            throw qm1.b(a.p());
        }
        qu qu1 = b;
        if (ow1.e() == pb.m)
        {
            ow1 = null;
        } else
        if (qu1 == null)
        {
            ow1 = ow1.k();
        } else
        {
            ow1 = (String)qu1.a(ow1, qm1);
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
        qm1 = c(ow1, qm1, collection);
_L4:
        return qm1;
_L2:
        if (!c)
        {
            return b(ow1, qm1, collection);
        }
        do
        {
            pb pb1 = ow1.b();
            qm1 = collection;
            if (pb1 == pb.e)
            {
                continue;
            }
            if (pb1 == pb.m)
            {
                qm1 = null;
            } else
            {
                qm1 = ow1.k();
            }
            collection.add(qm1);
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(qk qk, qq qq)
        throws qw
    {
        xo xo = d.o();
        if (xo != null)
        {
            afm afm1 = d.l();
            e = a(qk, qq, afm1, ((qc) (new qd(null, afm1, null, xo))));
        }
    }

    public Collection b(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (e != null)
        {
            return (Collection)d.a(e.a(ow1, qm1));
        } else
        {
            return a(ow1, qm1, (Collection)d.m());
        }
    }

    public qu d()
    {
        return b;
    }
}
