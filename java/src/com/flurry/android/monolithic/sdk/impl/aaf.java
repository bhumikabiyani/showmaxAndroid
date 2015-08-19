// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abq, oq, or, ru

public final class aaf extends abq
{

    public static final aaf a = new aaf();

    public aaf()
    {
        super(java/lang/Number);
    }

    public void a(Number number, or or1, ru ru)
        throws IOException, oq
    {
        if (number instanceof BigDecimal)
        {
            or1.a((BigDecimal)number);
            return;
        }
        if (number instanceof BigInteger)
        {
            or1.a((BigInteger)number);
            return;
        }
        if (number instanceof Integer)
        {
            or1.b(number.intValue());
            return;
        }
        if (number instanceof Long)
        {
            or1.a(number.longValue());
            return;
        }
        if (number instanceof Double)
        {
            or1.a(number.doubleValue());
            return;
        }
        if (number instanceof Float)
        {
            or1.a(number.floatValue());
            return;
        }
        if ((number instanceof Byte) || (number instanceof Short))
        {
            or1.b(number.intValue());
            return;
        } else
        {
            or1.e(number.toString());
            return;
        }
    }

    public volatile void a(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((Number)obj, or1, ru);
    }

}
