// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.jumptap.adtag.JtAdView;
import com.jumptap.adtag.JtAdViewListener;
import java.util.Collections;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            du, ja

class dv
    implements JtAdViewListener
{

    final du a;

    dv(du du1)
    {
        a = du1;
        super();
    }

    public void onAdError(JtAdView jtadview, int i, int j)
    {
        ja.a(3, du.f(), "Jumptap Interstitial error.");
        a.d(Collections.emptyMap());
    }

    public void onFocusChange(JtAdView jtadview, int i, boolean flag)
    {
        ja.a(3, du.f(), "Jumptap Interstitial focus changed.");
    }

    public void onInterstitialDismissed(JtAdView jtadview, int i)
    {
        a.c(Collections.emptyMap());
        ja.a(3, du.f(), "Jumptap Interstitial dismissed.");
    }

    public void onNewAd(JtAdView jtadview, int i, String s)
    {
        a.a(Collections.emptyMap());
        ja.a(3, du.f(), "Jumptap Interstitial new ad.");
    }

    public void onNoAdFound(JtAdView jtadview, int i)
    {
        a.d(Collections.emptyMap());
        ja.a(3, du.f(), "Jumptap Interstitial no ad found.");
    }
}
