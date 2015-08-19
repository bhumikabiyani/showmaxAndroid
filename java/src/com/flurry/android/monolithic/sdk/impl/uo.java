// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Currency;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            um, oz, qm

public class uo extends um
{

    public uo()
    {
        super(java/util/Currency);
    }

    protected Object a(String s, qm qm)
        throws IOException, oz
    {
        return b(s, qm);
    }

    protected Currency b(String s, qm qm)
        throws IllegalArgumentException
    {
        return Currency.getInstance(s);
    }
}
