// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.mediation.customevent;

import android.view.View;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.internal.zzhx;

// Referenced classes of package com.google.android.gms.ads.mediation.customevent:
//            CustomEventBannerListener, CustomEventAdapter

static final class zzl
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

    public er(CustomEventAdapter customeventadapter, MediationBannerListener mediationbannerlistener)
    {
        zzAu = customeventadapter;
        zzl = mediationbannerlistener;
    }
}
