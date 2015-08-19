// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Calendar;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abq, oq, ru, or

public class aba extends abq
{

    public static aba a = new aba();

    public aba()
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
        ru1.a(calendar.getTimeInMillis(), or);
    }

}
