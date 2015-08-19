// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.zzhx;

// Referenced classes of package com.google.android.gms.ads.mediation.customevent:
//            CustomEventBanner, CustomEventInterstitial, CustomEventBannerListener, CustomEventInterstitialListener

public final class CustomEventAdapter
    implements MediationBannerAdapter, MediationInterstitialAdapter
{
    static final class zza
        implements CustomEventBannerListener
    {

        private final CustomEventAdapter zzAu;
        private final MediationBannerListener zzl;

        public void onAdClicked()
        {
            zzhx.zzY("Custom event adapter called onAdClicked.");
            zzl.onAdClicked(zzAu);
        }

        public void onAdClosed()
        {
            zzhx.zzY("Custom event adapter called onAdClosed.");
            zzl.onAdClosed(zzAu);
        }

        public void onAdFailedToLoad(int i)
        {
            zzhx.zzY("Custom event adapter called onAdFailedToLoad.");
            zzl.onAdFailedToLoad(zzAu, i);
        }

        public void onAdLeftApplication()
        {
            zzhx.zzY("Custom event adapter called onAdLeftApplication.");
            zzl.onAdLeftApplication(zzAu);
        }

        public void onAdLoaded(View view)
        {
            zzhx.zzY("Custom event adapter called onAdLoaded.");
            CustomEventAdapter.zza(zzAu, view);
            zzl.onAdLoaded(zzAu);
        }

        public void onAdOpened()
        {
            zzhx.zzY("Custom event adapter called onAdOpened.");
            zzl.onAdOpened(zzAu);
        }

        public zza(CustomEventAdapter customeventadapter, MediationBannerListener mediationbannerlistener)
        {
            zzAu = customeventadapter;
            zzl = mediationbannerlistener;
        }
    }

    class zzb
        implements CustomEventInterstitialListener
    {

        private final CustomEventAdapter zzAu;
        final CustomEventAdapter zzAv;
        private final MediationInterstitialListener zzm;

        public void onAdClicked()
        {
            zzhx.zzY("Custom event adapter called onAdClicked.");
            zzm.onAdClicked(zzAu);
        }

        public void onAdClosed()
        {
            zzhx.zzY("Custom event adapter called onAdClosed.");
            zzm.onAdClosed(zzAu);
        }

        public void onAdFailedToLoad(int i)
        {
            zzhx.zzY("Custom event adapter called onFailedToReceiveAd.");
            zzm.onAdFailedToLoad(zzAu, i);
        }

        public void onAdLeftApplication()
        {
            zzhx.zzY("Custom event adapter called onAdLeftApplication.");
            zzm.onAdLeftApplication(zzAu);
        }

        public void onAdLoaded()
        {
            zzhx.zzY("Custom event adapter called onReceivedAd.");
            zzm.onAdLoaded(zzAv);
        }

        public void onAdOpened()
        {
            zzhx.zzY("Custom event adapter called onAdOpened.");
            zzm.onAdOpened(zzAu);
        }

        public zzb(CustomEventAdapter customeventadapter1, MediationInterstitialListener mediationinterstitiallistener)
        {
            zzAv = CustomEventAdapter.this;
            super();
            zzAu = customeventadapter1;
            zzm = mediationinterstitiallistener;
        }
    }


    CustomEventBanner zzAs;
    CustomEventInterstitial zzAt;
    private View zzn;

    public CustomEventAdapter()
    {
    }

    private static Object zza(String s)
    {
        Object obj;
        try
        {
            obj = Class.forName(s).newInstance();
        }
        catch (Throwable throwable)
        {
            zzhx.zzac((new StringBuilder()).append("Could not instantiate custom event adapter: ").append(s).append(". ").append(throwable.getMessage()).toString());
            return null;
        }
        return obj;
    }

    private void zza(View view)
    {
        zzn = view;
    }

    static void zza(CustomEventAdapter customeventadapter, View view)
    {
        customeventadapter.zza(view);
    }

    public View getBannerView()
    {
        return zzn;
    }

    public void onDestroy()
    {
        if (zzAs != null)
        {
            zzAs.onDestroy();
        }
        if (zzAt != null)
        {
            zzAt.onDestroy();
        }
    }

    public void onPause()
    {
        if (zzAs != null)
        {
            zzAs.onPause();
        }
        if (zzAt != null)
        {
            zzAt.onPause();
        }
    }

    public void onResume()
    {
        if (zzAs != null)
        {
            zzAs.onResume();
        }
        if (zzAt != null)
        {
            zzAt.onResume();
        }
    }

    public void requestBannerAd(Context context, MediationBannerListener mediationbannerlistener, Bundle bundle, AdSize adsize, MediationAdRequest mediationadrequest, Bundle bundle1)
    {
        zzAs = (CustomEventBanner)zza(bundle.getString("class_name"));
        if (zzAs == null)
        {
            mediationbannerlistener.onAdFailedToLoad(this, 0);
            return;
        }
        if (bundle1 == null)
        {
            bundle1 = null;
        } else
        {
            bundle1 = bundle1.getBundle(bundle.getString("class_name"));
        }
        zzAs.requestBannerAd(context, new zza(this, mediationbannerlistener), bundle.getString("parameter"), adsize, mediationadrequest, bundle1);
    }

    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationinterstitiallistener, Bundle bundle, MediationAdRequest mediationadrequest, Bundle bundle1)
    {
        zzAt = (CustomEventInterstitial)zza(bundle.getString("class_name"));
        if (zzAt == null)
        {
            mediationinterstitiallistener.onAdFailedToLoad(this, 0);
            return;
        }
        if (bundle1 == null)
        {
            bundle1 = null;
        } else
        {
            bundle1 = bundle1.getBundle(bundle.getString("class_name"));
        }
        zzAt.requestInterstitialAd(context, zza(mediationinterstitiallistener), bundle.getString("parameter"), mediationadrequest, bundle1);
    }

    public void showInterstitial()
    {
        zzAt.showInterstitial();
    }

    zzb zza(MediationInterstitialListener mediationinterstitiallistener)
    {
        return new zzb(this, mediationinterstitiallistener);
    }
}
