// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.TimeZone;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abq, oq, or, rx, 
//            ru

public class acx extends abq
{

    public static final acx a = new acx();

    public acx()
    {
        super(java/util/TimeZone);
    }

    public volatile void a(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((TimeZone)obj, or1, ru);
    }

    public volatile void a(Object obj, or or1, ru ru, rx rx1)
        throws IOException, oq
    {
        a((TimeZone)obj, or1, ru, rx1);
    }

    public void a(TimeZone timezone, or or1, ru ru)
        throws IOException, oq
    {
        or1.b(timezone.getID());
    }

    public void a(TimeZone timezone, or or1, ru ru, rx rx1)
        throws IOException, oq
    {
        rx1.a(timezone, or1, java/util/TimeZone);
        a(timezone, or1, ru);
        rx1.d(timezone, or1);
    }

}
