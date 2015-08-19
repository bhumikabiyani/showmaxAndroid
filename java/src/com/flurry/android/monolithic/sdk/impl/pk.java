// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            pa, ot, afr

public final class pk extends pa
{

    protected final pk c;
    protected int d;
    protected int e;
    protected String f;
    protected pk g;

    public pk(pk pk1, int k, int l, int i1)
    {
        g = null;
        a = k;
        c = pk1;
        d = l;
        e = i1;
        b = -1;
    }

    public static pk a(int k, int l)
    {
        return new pk(null, 0, k, l);
    }

    public static pk g()
    {
        return new pk(null, 0, 1, 0);
    }

    public final ot a(Object obj)
    {
        return new ot(obj, -1L, d, e);
    }

    protected final void a(int k, int l, int i1)
    {
        a = k;
        b = -1;
        d = l;
        e = i1;
        f = null;
    }

    public void a(String s)
    {
        f = s;
    }

    public final pk b(int k, int l)
    {
        pk pk1 = g;
        if (pk1 == null)
        {
            pk1 = new pk(this, 1, k, l);
            g = pk1;
            return pk1;
        } else
        {
            pk1.a(1, k, l);
            return pk1;
        }
    }

    public final pk c(int k, int l)
    {
        pk pk1 = g;
        if (pk1 == null)
        {
            pk1 = new pk(this, 2, k, l);
            g = pk1;
            return pk1;
        } else
        {
            pk1.a(2, k, l);
            return pk1;
        }
    }

    public final String h()
    {
        return f;
    }

    public final pk i()
    {
        return c;
    }

    public final boolean j()
    {
        int k = b + 1;
        b = k;
        return a != 0 && k > 0;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(64);
        a;
        JVM INSTR tableswitch 0 2: default 40
    //                   0 45
    //                   1 55
    //                   2 81;
           goto _L1 _L2 _L3 _L4
_L1:
        return stringbuilder.toString();
_L2:
        stringbuilder.append("/");
        continue; /* Loop/switch isn't completed */
_L3:
        stringbuilder.append('[');
        stringbuilder.append(f());
        stringbuilder.append(']');
        continue; /* Loop/switch isn't completed */
_L4:
        stringbuilder.append('{');
        if (f != null)
        {
            stringbuilder.append('"');
            afr.a(stringbuilder, f);
            stringbuilder.append('"');
        } else
        {
            stringbuilder.append('?');
        }
        stringbuilder.append('}');
        if (true) goto _L1; else goto _L5
_L5:
    }
}
