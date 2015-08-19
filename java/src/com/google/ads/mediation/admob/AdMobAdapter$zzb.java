// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.mediation.admob;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.zzat;

// Referenced classes of package com.google.ads.mediation.admob:
//            AdMobAdapter

static final class zzm extends AdListener
    implements zzat
{

    final AdMobAdapter zzk;
    final MediationInterstitialListener zzm;

    public void onAdClicked()
    {
        zzm.onAdClicked(zzk);
    }

    public void onAdClosed()
    {
        zzm.onAdClosed(zzk);
    }

    public void onAdFailedToLoad(int i)
    {
        zzm.onAdFailedToLoad(zzk, i);
    }

    public void onAdLeftApplication()
    {
        zzm.onAdLeftApplication(zzk);
    }

    public void onAdLoaded()
    {
        zzm.onAdLoaded(zzk);
    }

    public void onAdOpened()
    {
        zzm.onAdOpened(zzk);
    }

    public terstitialListener(AdMobAdapter admobadapter, MediationInterstitialListener mediationinterstitiallistener)
    {
        zzk = admobadapter;
        zzm = mediationinterstitiallistener;
    }
}
