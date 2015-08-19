// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.inmobi.androidsdk.IMAdInterstitial;
import com.inmobi.androidsdk.IMAdInterstitialListener;
import java.util.Collections;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            dp, ja

class dq
    implements IMAdInterstitialListener
{

    final dp a;

    dq(dp dp1)
    {
        a = dp1;
        super();
    }

    public void onAdRequestFailed(IMAdInterstitial imadinterstitial, com.inmobi.androidsdk.IMAdRequest.ErrorCode errorcode)
    {
        a.d(Collections.emptyMap());
        ja.a(3, dp.f(), "InMobi imAdView ad request failed.");
    }

    public void onAdRequestLoaded(IMAdInterstitial imadinterstitial)
    {
        ja.a(3, dp.f(), "InMobi Interstitial ad request completed.");
        if (com.inmobi.androidsdk.IMAdInterstitial.State.READY.equals(imadinterstitial.getState()))
        {
            a.a(Collections.emptyMap());
            imadinterstitial.show();
        }
    }

    public void onDismissAdScreen(IMAdInterstitial imadinterstitial)
    {
        a.c(Collections.emptyMap());
        ja.a(3, dp.f(), "InMobi Interstitial ad dismissed.");
    }

    public void onLeaveApplication(IMAdInterstitial imadinterstitial)
    {
        ja.a(3, dp.f(), "InMobi onLeaveApplication");
    }

    public void onShowAdScreen(IMAdInterstitial imadinterstitial)
    {
        ja.a(3, dp.f(), "InMobi Interstitial ad shown.");
    }
}
