// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.jumptap.adtag.JtAdView;
import com.jumptap.adtag.JtAdViewListener;
import java.util.Collections;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ds, ja

class dt
    implements JtAdViewListener
{

    final ds a;

    dt(ds ds1)
    {
        a = ds1;
        super();
    }

    public void onAdError(JtAdView jtadview, int i, int j)
    {
        ja.a(3, ds.a(), "Jumptap AdView error.");
        a.onRenderFailed(Collections.emptyMap());
    }

    public void onFocusChange(JtAdView jtadview, int i, boolean flag)
    {
        ja.a(3, ds.a(), "Jumptap AdView focus changed.");
    }

    public void onInterstitialDismissed(JtAdView jtadview, int i)
    {
        a.onAdClosed(Collections.emptyMap());
        ja.a(3, ds.a(), "Jumptap AdView dismissed.");
    }

    public void onNewAd(JtAdView jtadview, int i, String s)
    {
        a.onAdShown(Collections.emptyMap());
        ja.a(3, ds.a(), "Jumptap AdView new ad.");
    }

    public void onNoAdFound(JtAdView jtadview, int i)
    {
        a.onRenderFailed(Collections.emptyMap());
        ja.a(3, ds.a(), "Jumptap AdView no ad found.");
    }
}
