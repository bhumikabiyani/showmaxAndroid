// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.lang.ref.SoftReference;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ox, os, afj, afh, 
//            pv, po, ov, pr, 
//            pm, pq, afn, pc, 
//            pp, or, ow

public class op
{

    static final int a = ox.a();
    static final int b = os.a();
    protected static final ThreadLocal c = new ThreadLocal();
    protected afj d;
    protected afh e;
    protected pc f;
    protected int g;
    protected int h;
    protected pp i;
    protected pr j;
    protected pv k;

    public op()
    {
        this(null);
    }

    public op(pc pc)
    {
        d = afj.a();
        e = afh.a();
        g = a;
        h = b;
        f = pc;
    }

    public op a(ox ox1)
    {
        g = g | ox1.c();
        return this;
    }

    public op a(pc pc)
    {
        f = pc;
        return this;
    }

    public or a(Writer writer)
        throws IOException
    {
        pq pq1 = a(writer, false);
        Writer writer1 = writer;
        if (k != null)
        {
            writer1 = k.a(pq1, writer);
        }
        return a(writer1, pq1);
    }

    protected or a(Writer writer, pq pq1)
        throws IOException
    {
        writer = new po(pq1, h, f, writer);
        if (i != null)
        {
            writer.a(i);
        }
        return writer;
    }

    public ow a(Reader reader)
        throws IOException, ov
    {
        pq pq1 = a(reader, false);
        Reader reader1 = reader;
        if (j != null)
        {
            reader1 = j.a(pq1, reader);
        }
        return a(reader1, pq1);
    }

    protected ow a(Reader reader, pq pq1)
        throws IOException, ov
    {
        return new pm(pq1, g, reader, f, d.a(b(ox.j), b(ox.i)));
    }

    public pc a()
    {
        return f;
    }

    protected pq a(Object obj, boolean flag)
    {
        return new pq(b(), obj, flag);
    }

    public afn b()
    {
        Object obj = (SoftReference)c.get();
        Object obj1;
        if (obj == null)
        {
            obj = null;
        } else
        {
            obj = (afn)((SoftReference) (obj)).get();
        }
        obj1 = obj;
        if (obj == null)
        {
            obj1 = new afn();
            c.set(new SoftReference(obj1));
        }
        return ((afn) (obj1));
    }

    public final boolean b(ox ox1)
    {
        return (g & ox1.c()) != 0;
    }

}
