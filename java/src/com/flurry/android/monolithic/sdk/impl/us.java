// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.TimeZone;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            um, oz, qm

public class us extends um
{

    public us()
    {
        super(java/util/TimeZone);
    }

    protected Object a(String s, qm qm)
        throws IOException, oz
    {
        return b(s, qm);
    }

    protected TimeZone b(String s, qm qm)
        throws IOException
    {
        return TimeZone.getTimeZone(s);
    }
}
