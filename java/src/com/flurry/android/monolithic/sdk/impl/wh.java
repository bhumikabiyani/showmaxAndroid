// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Calendar;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            we, qw, qm

final class wh extends we
{

    protected wh()
    {
        super(java/util/Calendar);
    }

    public Object b(String s, qm qm1)
        throws Exception
    {
        return c(s, qm1);
    }

    public Calendar c(String s, qm qm1)
        throws IllegalArgumentException, qw
    {
        s = qm1.a(s);
        if (s == null)
        {
            return null;
        } else
        {
            return qm1.a(s);
        }
    }
}
