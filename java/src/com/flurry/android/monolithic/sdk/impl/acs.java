// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Calendar;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abt, oq, ru, ra, 
//            or

public class acs extends abt
{

    protected static final ra a = new acs();

    public acs()
    {
        super(java/util/Calendar);
    }

    public volatile void a(Object obj, or or, ru ru1)
        throws IOException, oq
    {
        a((Calendar)obj, or, ru1);
    }

    public void a(Calendar calendar, or or, ru ru1)
        throws IOException, oq
    {
        ru1.b(calendar.getTimeInMillis(), or);
    }

}
