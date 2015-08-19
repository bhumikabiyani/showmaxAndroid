// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ma, ll, mh, ji, 
//            lx

public class ly
{

    private static final ly b = new ma(null);
    int a;

    public ly()
    {
        a = 8192;
    }

    public static ly a()
    {
        return b;
    }

    public ll a(InputStream inputstream, ll ll1)
    {
        if (ll1 == null || !ll1.getClass().equals(com/flurry/android/monolithic/sdk/impl/ll))
        {
            return new ll(inputstream, a);
        } else
        {
            return ll1.a(inputstream, a);
        }
    }

    public ll a(byte abyte0[], int i, int j, ll ll1)
    {
        if (ll1 == null || !ll1.getClass().equals(com/flurry/android/monolithic/sdk/impl/ll))
        {
            return new ll(abyte0, i, j);
        } else
        {
            return ll1.a(abyte0, i, j);
        }
    }

    public ll a(byte abyte0[], ll ll1)
    {
        return a(abyte0, 0, abyte0.length, ll1);
    }

    public mh a(ji ji, ji ji1, lx lx)
        throws IOException
    {
        return new mh(ji, ji1, lx);
    }

}
