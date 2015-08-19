// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afp, afn, afy

public final class pq
{

    protected final Object a;
    protected final boolean b;
    protected final afn c;
    protected byte d[];
    protected byte e[];
    protected char f[];
    protected char g[];
    protected char h[];

    public pq(afn afn1, Object obj, boolean flag)
    {
        d = null;
        e = null;
        f = null;
        g = null;
        h = null;
        c = afn1;
        a = obj;
        b = flag;
    }

    public final Object a()
    {
        return a;
    }

    public final void a(char ac[])
    {
        if (ac != null)
        {
            if (ac != f)
            {
                throw new IllegalArgumentException("Trying to release buffer not owned by the context");
            }
            f = null;
            c.a(afp.a, ac);
        }
    }

    public final char[] a(int i)
    {
        if (h != null)
        {
            throw new IllegalStateException("Trying to call allocNameCopyBuffer() second time");
        } else
        {
            h = c.a(afp.d, i);
            return h;
        }
    }

    public final void b(char ac[])
    {
        if (ac != null)
        {
            if (ac != g)
            {
                throw new IllegalArgumentException("Trying to release buffer not owned by the context");
            }
            g = null;
            c.a(afp.b, ac);
        }
    }

    public final boolean b()
    {
        return b;
    }

    public final afy c()
    {
        return new afy(c);
    }

    public final void c(char ac[])
    {
        if (ac != null)
        {
            if (ac != h)
            {
                throw new IllegalArgumentException("Trying to release buffer not owned by the context");
            }
            h = null;
            c.a(afp.d, ac);
        }
    }

    public final char[] d()
    {
        if (f != null)
        {
            throw new IllegalStateException("Trying to call allocTokenBuffer() second time");
        } else
        {
            f = c.a(afp.a);
            return f;
        }
    }

    public final char[] e()
    {
        if (g != null)
        {
            throw new IllegalStateException("Trying to call allocConcatBuffer() second time");
        } else
        {
            g = c.a(afp.b);
            return g;
        }
    }
}
