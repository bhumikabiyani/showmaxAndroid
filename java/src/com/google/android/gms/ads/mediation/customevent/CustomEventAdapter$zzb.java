// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.mediation.customevent;

import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.zzhx;

// Referenced classes of package com.google.android.gms.ads.mediation.customevent:
//            CustomEventInterstitialListener, CustomEventAdapter

class zzm
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

    public Listener(CustomEventAdapter customeventadapter, CustomEventAdapter customeventadapter1, MediationInterstitialListener mediationinterstitiallistener)
    {
        zzAv = customeventadapter;
        super();
        zzAu = customeventadapter1;
        zzm = mediationinterstitiallistener;
    }
}
