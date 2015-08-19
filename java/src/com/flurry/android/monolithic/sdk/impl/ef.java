// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.mobclix.android.sdk.MobclixFullScreenAdView;
import com.mobclix.android.sdk.MobclixFullScreenAdViewListener;
import java.util.Collections;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ee, ja

class ef
    implements MobclixFullScreenAdViewListener
{

    final ee a;

    ef(ee ee1)
    {
        a = ee1;
        super();
    }

    public String keywords()
    {
        ja.a(3, ee.f(), "Mobclix keyword callback.");
        return null;
    }

    public void onDismissAd(MobclixFullScreenAdView mobclixfullscreenadview)
    {
        a.c(Collections.emptyMap());
        ja.a(3, ee.f(), "Mobclix Interstitial ad dismissed.");
    }

    public void onFailedLoad(MobclixFullScreenAdView mobclixfullscreenadview, int i)
    {
        a.d(Collections.emptyMap());
        ja.a(3, ee.f(), "Mobclix Interstitial ad failed to load.");
    }

    public void onFinishLoad(MobclixFullScreenAdView mobclixfullscreenadview)
    {
        ja.a(3, ee.f(), "Mobclix Interstitial ad successfully loaded.");
    }

    public void onPresentAd(MobclixFullScreenAdView mobclixfullscreenadview)
    {
        a.a(Collections.emptyMap());
        ja.a(3, ee.f(), "Mobclix Interstitial ad successfully shown.");
    }

    public String query()
    {
        ja.a(3, ee.f(), "Mobclix query callback.");
        return null;
    }
}
