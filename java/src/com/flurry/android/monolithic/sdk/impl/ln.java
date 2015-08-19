// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ll, lm

class ln
{

    boolean a;
    private final ll b;
    private byte c[];
    private int d;
    private int e;

    private ln(ll ll1)
    {
        a = false;
        b = ll1;
    }

    ln(ll ll1, lm lm)
    {
        this(ll1);
    }

    void a()
    {
        c = ll.a(b);
        d = ll.b(b);
        e = ll.c(b);
        a = true;
    }

    void a(int i)
    {
        if (a)
        {
            d = i;
            return;
        } else
        {
            ll.a(b, i);
            return;
        }
    }

    void a(byte abyte0[], int i, int j)
    {
        if (a)
        {
            c = abyte0;
            e = i + j;
            d = i;
            return;
        } else
        {
            ll.a(b, abyte0);
            ll.b(b, i + j);
            ll.a(b, i);
            ll.c(b, i);
            return;
        }
    }

    int b()
    {
        if (a)
        {
            return d;
        } else
        {
            return ll.b(b);
        }
    }

    void b(int i)
    {
        if (a)
        {
            e = i;
            return;
        } else
        {
            ll.b(b, i);
            return;
        }
    }

    int c()
    {
        if (a)
        {
            return e;
        } else
        {
            return ll.c(b);
        }
    }

    byte[] d()
    {
        if (a)
        {
            return c;
        } else
        {
            return ll.a(b);
        }
    }
}
