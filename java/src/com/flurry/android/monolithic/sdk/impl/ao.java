// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            an

class ao
    implements Runnable
{

    final an a;

    ao(an an1)
    {
        a = an1;
        super();
    }

    public void run()
    {
        if (an.a(a))
        {
            a.post(an.b(a));
        }
    }
}
