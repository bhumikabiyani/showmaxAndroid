// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.lang.reflect.Array;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ug, ada, afm, oz, 
//            ow, pb, ql, qm, 
//            qu, aeh, rw

public class vc extends ug
{

    protected final afm a;
    protected final boolean b;
    protected final Class c;
    protected final qu d;
    protected final rw e;

    public vc(ada ada1, qu qu1, rw rw1)
    {
        super([Ljava/lang/Object;);
        a = ada1;
        c = ada1.g().p();
        boolean flag;
        if (c == java/lang/Object)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        b = flag;
        d = qu1;
        e = rw1;
    }

    private final Object[] d(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (ow1.e() == pb.h && qm1.a(ql.q) && ow1.k().length() == 0)
        {
            return null;
        }
        if (!qm1.a(ql.o))
        {
            if (ow1.e() == pb.h && c == java/lang/Byte)
            {
                return c(ow1, qm1);
            } else
            {
                throw qm1.b(a.p());
            }
        }
        if (ow1.e() == pb.m)
        {
            ow1 = null;
        } else
        if (e == null)
        {
            ow1 = ((ow) (d.a(ow1, qm1)));
        } else
        {
            ow1 = ((ow) (d.a(ow1, qm1, e)));
        }
        if (b)
        {
            qm1 = ((qm) (new Object[1]));
        } else
        {
            qm1 = ((qm) ((Object[])(Object[])Array.newInstance(c, 1)));
        }
        qm1[0] = ow1;
        return qm1;
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return ((Object) (b(ow1, qm1)));
    }

    public Object a(ow ow1, qm qm1, rw rw1)
        throws IOException, oz
    {
        return ((Object) (b(ow1, qm1, rw1)));
    }

    public Object[] b(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (!ow1.j())
        {
            return d(ow1, qm1);
        }
        aeh aeh1 = qm1.g();
        Object aobj[] = aeh1.a();
        rw rw1 = e;
        int i = 0;
        do
        {
            Object obj = ow1.b();
            if (obj == pb.e)
            {
                break;
            }
            int j;
            if (obj == pb.m)
            {
                obj = null;
            } else
            if (rw1 == null)
            {
                obj = d.a(ow1, qm1);
            } else
            {
                obj = d.a(ow1, qm1, rw1);
            }
            if (i >= aobj.length)
            {
                aobj = aeh1.a(aobj);
                i = 0;
            }
            j = i + 1;
            aobj[i] = obj;
            i = j;
        } while (true);
        if (b)
        {
            ow1 = ((ow) (aeh1.a(aobj, i)));
        } else
        {
            ow1 = ((ow) (aeh1.a(aobj, i, c)));
        }
        qm1.a(aeh1);
        return ow1;
    }

    public Object[] b(ow ow1, qm qm1, rw rw1)
        throws IOException, oz
    {
        return (Object[])(Object[])rw1.b(ow1, qm1);
    }

    protected Byte[] c(ow ow1, qm qm1)
        throws IOException, oz
    {
        ow1 = ow1.a(qm1.c());
        qm1 = new Byte[ow1.length];
        int i = 0;
        for (int j = ow1.length; i < j; i++)
        {
            qm1[i] = Byte.valueOf(ow1[i]);
        }

        return qm1;
    }

    public qu d()
    {
        return d;
    }
}
