// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.sql.Date;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abq, oq, or, ru

public final class aag extends abq
{

    public aag()
    {
        super(java/sql/Date);
    }

    public volatile void a(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((Date)obj, or1, ru);
    }

    public void a(Date date, or or1, ru ru)
        throws IOException, oq
    {
        or1.b(date.toString());
    }
}
