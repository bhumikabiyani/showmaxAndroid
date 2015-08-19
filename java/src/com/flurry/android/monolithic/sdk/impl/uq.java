// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Locale;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            um, oz, qm

public class uq extends um
{

    public uq()
    {
        super(java/util/Locale);
    }

    protected Object a(String s, qm qm)
        throws IOException, oz
    {
        return b(s, qm);
    }

    protected Locale b(String s, qm qm)
        throws IOException
    {
        int i = s.indexOf('_');
        if (i < 0)
        {
            return new Locale(s);
        }
        qm = s.substring(0, i);
        s = s.substring(i + 1);
        i = s.indexOf('_');
        if (i < 0)
        {
            return new Locale(qm, s);
        } else
        {
            return new Locale(qm, s.substring(0, i), s.substring(i + 1));
        }
    }
}
