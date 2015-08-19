// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.millennialmedia.android.MMAd;
import com.millennialmedia.android.MMException;
import com.millennialmedia.android.RequestListener;
import java.util.Collections;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            dx, ja

class dy
    implements RequestListener
{

    final dx a;

    dy(dx dx1)
    {
        a = dx1;
        super();
    }

    public void MMAdOverlayLaunched(MMAd mmad)
    {
        a.onAdClicked(Collections.emptyMap());
        ja.a(3, dx.a(), "Millennial MMAdView banner overlay launched.");
    }

    public void MMAdRequestIsCaching(MMAd mmad)
    {
        ja.a(3, dx.a(), "Millennial MMAdView banner request is caching.");
    }

    public void requestCompleted(MMAd mmad)
    {
        a.onAdShown(Collections.emptyMap());
        ja.a(3, dx.a(), (new StringBuilder()).append("Millennial MMAdView returned ad.").append(System.currentTimeMillis()).toString());
    }

    public void requestFailed(MMAd mmad, MMException mmexception)
    {
        a.onRenderFailed(Collections.emptyMap());
        ja.a(3, dx.a(), String.format("Millennial MMAdView failed to load ad with error: %d %s.", new Object[] {
            Integer.valueOf(mmexception.getCode()), mmexception.getMessage()
        }));
    }
}
