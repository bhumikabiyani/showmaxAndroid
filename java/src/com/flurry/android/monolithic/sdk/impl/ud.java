// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            wv, oz, qm, ow

public class ud extends wv
{

    protected final Class a;

    public ud()
    {
        this(null);
    }

    public ud(Class class1)
    {
        super(java/util/Calendar);
        a = class1;
    }

    public Object a(ow ow, qm qm1)
        throws IOException, oz
    {
        return b(ow, qm1);
    }

    public Calendar b(ow ow, qm qm1)
        throws IOException, oz
    {
        ow = B(ow, qm1);
        if (ow == null)
        {
            return null;
        }
        if (a == null)
        {
            return qm1.a(ow);
        }
        Calendar calendar;
        try
        {
            calendar = (Calendar)a.newInstance();
            calendar.setTimeInMillis(ow.getTime());
        }
        // Misplaced declaration of an exception variable
        catch (ow ow)
        {
            throw qm1.a(a, ow);
        }
        return calendar;
    }
}
