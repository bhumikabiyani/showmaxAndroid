// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Date;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abt, oq, ru, ra, 
//            or

public class act extends abt
{

    protected static final ra a = new act();

    public act()
    {
        super(java/util/Date);
    }

    public volatile void a(Object obj, or or, ru ru1)
        throws IOException, oq
    {
        a((Date)obj, or, ru1);
    }

    public void a(Date date, or or, ru ru1)
        throws IOException, oq
    {
        ru1.b(date, or);
    }

}
