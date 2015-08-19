// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aer, aes, afb, aex, 
//            aey, afa, aew, aeq, 
//            afe, aff, aeo, afd, 
//            afc

public class aez
{

    public static final aez a = new aez();

    protected aez()
    {
    }

    public aer a(byte abyte0[])
    {
        return aer.a(abyte0);
    }

    public aes a(boolean flag)
    {
        if (flag)
        {
            return aes.r();
        } else
        {
            return aes.s();
        }
    }

    public afb a()
    {
        return afb.r();
    }

    public afc a(double d)
    {
        return aex.b(d);
    }

    public afc a(int i)
    {
        return aey.a(i);
    }

    public afc a(long l)
    {
        return afa.a(l);
    }

    public afc a(BigDecimal bigdecimal)
    {
        return aew.a(bigdecimal);
    }

    public afc a(BigInteger biginteger)
    {
        return aeq.a(biginteger);
    }

    public afe a(Object obj)
    {
        return new afe(obj);
    }

    public aff a(String s)
    {
        return aff.b(s);
    }

    public aeo b()
    {
        return new aeo(this);
    }

    public afd c()
    {
        return new afd(this);
    }

}
