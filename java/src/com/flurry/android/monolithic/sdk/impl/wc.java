// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.sql.Date;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            wv, oz, ow, qm

public class wc extends wv
{

    public wc()
    {
        super(java/sql/Date);
    }

    public Object a(ow ow, qm qm)
        throws IOException, oz
    {
        return b(ow, qm);
    }

    public Date b(ow ow, qm qm)
        throws IOException, oz
    {
        ow = B(ow, qm);
        if (ow == null)
        {
            return null;
        } else
        {
            return new Date(ow.getTime());
        }
    }
}
