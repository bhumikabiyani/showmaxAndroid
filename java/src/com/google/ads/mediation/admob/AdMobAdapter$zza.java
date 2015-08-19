// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.mediation.admob;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.internal.zzat;

// Referenced classes of package com.google.ads.mediation.admob:
//            AdMobAdapter

static final class zzl extends AdListener
    implements zzat
{

    final AdMobAdapter zzk;
    final MediationBannerListener zzl;

    public void onAdClicked()
    {
        zzl.onAdClicked(zzk);
    }

    public void onAdClosed()
    {
        zzl.onAdClosed(zzk);
    }

    public void onAdFailedToLoad(int i)
    {
        zzl.onAdFailedToLoad(zzk, i);
    }

    public void onAdLeftApplication()
    {
        zzl.onAdLeftApplication(zzk);
    }

    public void onAdLoaded()
    {
        zzl.onAdLoaded(zzk);
    }

    public void onAdOpened()
    {
        zzl.onAdOpened(zzk);
    }

    public nnerListener(AdMobAdapter admobadapter, MediationBannerListener mediationbannerlistener)
    {
        zzk = admobadapter;
        zzl = mediationbannerlistener;
    }
}
