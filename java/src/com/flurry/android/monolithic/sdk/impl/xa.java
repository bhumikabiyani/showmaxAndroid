// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            wv, oz, ow, qm

public class xa extends wv
{

    public xa()
    {
        super(java/sql/Timestamp);
    }

    public Object a(ow ow, qm qm)
        throws IOException, oz
    {
        return b(ow, qm);
    }

    public Timestamp b(ow ow, qm qm)
        throws IOException, oz
    {
        return new Timestamp(B(ow, qm).getTime());
    }
}
