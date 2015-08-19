// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.FlurryFullscreenTakeoverActivity;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ar, d

class e
    implements Runnable
{

    final ar a;
    final d b;

    e(d d1, ar ar1)
    {
        b = d1;
        a = ar1;
        super();
    }

    public void run()
    {
        if (a.a())
        {
            a.b();
            return;
        } else
        {
            b.a.finish();
            return;
        }
    }
}
