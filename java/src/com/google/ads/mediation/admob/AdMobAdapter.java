// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.ads.mediation.admob;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.zzat;
import com.google.android.gms.internal.zzbe;
import com.google.android.gms.internal.zzhw;
import java.util.Iterator;
import java.util.Set;

public final class AdMobAdapter
    implements MediationBannerAdapter, MediationInterstitialAdapter
{
    static final class zza extends AdListener
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

        public zza(AdMobAdapter admobadapter, MediationBannerListener mediationbannerlistener)
        {
            zzk = admobadapter;
            zzl = mediationbannerlistener;
        }
    }

    static final class zzb extends AdListener
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

        public zzb(AdMobAdapter admobadapter, MediationInterstitialListener mediationinterstitiallistener)
        {
            zzk = admobadapter;
            zzm = mediationinterstitiallistener;
        }
    }


    private AdView zzi;
    private InterstitialAd zzj;

    public AdMobAdapter()
    {
    }

    static AdRequest zza(Context context, MediationAdRequest mediationadrequest, Bundle bundle, Bundle bundle1)
    {
        com.google.android.gms.ads.AdRequest.Builder builder = new com.google.android.gms.ads.AdRequest.Builder();
        Object obj = mediationadrequest.getBirthday();
        if (obj != null)
        {
            builder.setBirthday(((java.util.Date) (obj)));
        }
        int i = mediationadrequest.getGender();
        if (i != 0)
        {
            builder.setGender(i);
        }
        obj = mediationadrequest.getKeywords();
        if (obj != null)
        {
            for (obj = ((Set) (obj)).iterator(); ((Iterator) (obj)).hasNext(); builder.addKeyword((String)((Iterator) (obj)).next())) { }
        }
        obj = mediationadrequest.getLocation();
        if (obj != null)
        {
            builder.setLocation(((android.location.Location) (obj)));
        }
        if (mediationadrequest.isTesting())
        {
            builder.addTestDevice(zzbe.zzbD().zzz(context));
        }
        if (bundle1.getInt("tagForChildDirectedTreatment") != -1)
        {
            boolean flag;
            if (bundle1.getInt("tagForChildDirectedTreatment") == 1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            builder.tagForChildDirectedTreatment(flag);
        }
        if (bundle == null)
        {
            bundle = new Bundle();
        }
        bundle.putInt("gw", 1);
        bundle.putString("mad_hac", bundle1.getString("mad_hac"));
        if (!TextUtils.isEmpty(bundle1.getString("adJson")))
        {
            bundle.putString("_ad", bundle1.getString("adJson"));
        }
        bundle.putBoolean("_noRefresh", true);
        builder.addNetworkExtrasBundle(com/google/ads/mediation/admob/AdMobAdapter, bundle);
        return builder.build();
    }

    public View getBannerView()
    {
        return zzi;
    }

    public void onDestroy()
    {
        if (zzi != null)
        {
            zzi.destroy();
            zzi = null;
        }
        if (zzj != null)
        {
            zzj = null;
        }
    }

    public void onPause()
    {
        if (zzi != null)
        {
            zzi.pause();
        }
    }

    public void onResume()
    {
        if (zzi != null)
        {
            zzi.resume();
        }
    }

    public void requestBannerAd(Context context, MediationBannerListener mediationbannerlistener, Bundle bundle, AdSize adsize, MediationAdRequest mediationadrequest, Bundle bundle1)
    {
        zzi = new AdView(context);
        zzi.setAdSize(new AdSize(adsize.getWidth(), adsize.getHeight()));
        zzi.setAdUnitId(bundle.getString("pubid"));
        zzi.setAdListener(new zza(this, mediationbannerlistener));
        zzi.loadAd(zza(context, mediationadrequest, bundle1, bundle));
    }

    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationinterstitiallistener, Bundle bundle, MediationAdRequest mediationadrequest, Bundle bundle1)
    {
        zzj = new InterstitialAd(context);
        zzj.setAdUnitId(bundle.getString("pubid"));
        zzj.setAdListener(new zzb(this, mediationinterstitiallistener));
        zzj.loadAd(zza(context, mediationadrequest, bundle1, bundle));
    }

    public void showInterstitial()
    {
        zzj.show();
    }
}
