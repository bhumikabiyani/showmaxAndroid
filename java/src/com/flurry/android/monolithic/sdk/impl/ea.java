// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.millennialmedia.android.MMAd;
import com.millennialmedia.android.MMException;
import com.millennialmedia.android.MMInterstitial;
import com.millennialmedia.android.RequestListener;
import java.util.Collections;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            dz, ja

class ea
    implements RequestListener
{

    final dz a;

    ea(dz dz1)
    {
        a = dz1;
        super();
    }

    public void MMAdOverlayLaunched(MMAd mmad)
    {
        a.a(Collections.emptyMap());
        a.c(Collections.emptyMap());
        ja.a(3, dz.f(), (new StringBuilder()).append("Millennial MMAdView Interstitial overlay launched.").append(System.currentTimeMillis()).toString());
    }

    public void MMAdRequestIsCaching(MMAd mmad)
    {
        ja.a(3, dz.f(), "Millennial MMAdView Interstitial request is caching.");
    }

    public void requestCompleted(MMAd mmad)
    {
        ja.a(3, dz.f(), (new StringBuilder()).append("Millennial MMAdView returned interstitial ad: ").append(System.currentTimeMillis()).toString());
        if (!dz.a(a))
        {
            a.b.display();
        }
    }

    public void requestFailed(MMAd mmad, MMException mmexception)
    {
        a.d(Collections.emptyMap());
        ja.a(3, dz.f(), "Millennial MMAdView Interstitial failed to load ad.");
    }
}
