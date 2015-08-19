// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afo, afp

public class afn
{

    protected final byte a[][] = new byte[afo.values().length][];
    protected final char b[][] = new char[afp.values().length][];

    public afn()
    {
    }

    private final byte[] a(int i)
    {
        return new byte[i];
    }

    private final char[] b(int i)
    {
        return new char[i];
    }

    public final void a(afp afp1, char ac[])
    {
        b[afp1.ordinal()] = ac;
    }

    public final byte[] a(afo afo1)
    {
        int i = afo1.ordinal();
        byte abyte0[] = a[i];
        if (abyte0 == null)
        {
            return a(afo.a(afo1));
        } else
        {
            a[i] = null;
            return abyte0;
        }
    }

    public final char[] a(afp afp1)
    {
        return a(afp1, 0);
    }

    public final char[] a(afp afp1, int i)
    {
        int j = i;
        if (afp.a(afp1) > i)
        {
            j = afp.a(afp1);
        }
        i = afp1.ordinal();
        afp1 = b[i];
        if (afp1 == null || afp1.length < j)
        {
            return b(j);
        } else
        {
            b[i] = null;
            return afp1;
        }
    }
}
