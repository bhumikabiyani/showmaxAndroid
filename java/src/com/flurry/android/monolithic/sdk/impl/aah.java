// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.sql.Time;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abq, oq, or, ru

public final class aah extends abq
{

    public aah()
    {
        super(java/sql/Time);
    }

    public volatile void a(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((Time)obj, or1, ru);
    }

    public void a(Time time, or or1, ru ru)
        throws IOException, oq
    {
        or1.b(time.toString());
    }
}
