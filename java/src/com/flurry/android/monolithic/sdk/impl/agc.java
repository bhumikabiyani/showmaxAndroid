// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            pb

public final class agc
{

    private static final pb d[];
    protected agc a;
    protected long b;
    protected final Object c[] = new Object[16];

    public agc()
    {
    }

    public agc a()
    {
        return a;
    }

    public agc a(int i, pb pb1)
    {
        if (i < 16)
        {
            b(i, pb1);
            return null;
        } else
        {
            a = new agc();
            a.b(0, pb1);
            return a;
        }
    }

    public agc a(int i, pb pb1, Object obj)
    {
        if (i < 16)
        {
            b(i, pb1, obj);
            return null;
        } else
        {
            a = new agc();
            a.b(0, pb1, obj);
            return a;
        }
    }

    public pb a(int i)
    {
        long l1 = b;
        long l = l1;
        if (i > 0)
        {
            l = l1 >> (i << 2);
        }
        i = (int)l;
        return d[i & 0xf];
    }

    public Object b(int i)
    {
        return c[i];
    }

    public void b(int i, pb pb1)
    {
        long l1 = pb1.ordinal();
        long l = l1;
        if (i > 0)
        {
            l = l1 << (i << 2);
        }
        b = l | b;
    }

    public void b(int i, pb pb1, Object obj)
    {
        c[i] = obj;
        long l1 = pb1.ordinal();
        long l = l1;
        if (i > 0)
        {
            l = l1 << (i << 2);
        }
        b = l | b;
    }

    static 
    {
        d = new pb[16];
        pb apb[] = pb.values();
        System.arraycopy(apb, 1, d, 1, Math.min(15, apb.length - 1));
    }
}
