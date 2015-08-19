// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.internal.zzbq;

// Referenced classes of package com.google.android.gms.ads.doubleclick:
//            PublisherAdRequest, AppEventListener, OnCustomRenderedAdLoadedListener

public final class PublisherInterstitialAd
{

    private final zzbq zzlm;

    public PublisherInterstitialAd(Context context)
    {
        zzlm = new zzbq(context, this);
    }

    public AdListener getAdListener()
    {
        return zzlm.getAdListener();
    }

    public String getAdUnitId()
    {
        return zzlm.getAdUnitId();
    }

    public AppEventListener getAppEventListener()
    {
        return zzlm.getAppEventListener();
    }

    public String getMediationAdapterClassName()
    {
        return zzlm.getMediationAdapterClassName();
    }

    public OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener()
    {
        return zzlm.getOnCustomRenderedAdLoadedListener();
    }

    public boolean isLoaded()
    {
        return zzlm.isLoaded();
    }

    public void loadAd(PublisherAdRequest publisheradrequest)
    {
        zzlm.zza(publisheradrequest.zzY());
    }

    public void setAdListener(AdListener adlistener)
    {
        zzlm.setAdListener(adlistener);
    }

    public void setAdUnitId(String s)
    {
        zzlm.setAdUnitId(s);
    }

    public void setAppEventListener(AppEventListener appeventlistener)
    {
        zzlm.setAppEventListener(appeventlistener);
    }

    public void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener oncustomrenderedadloadedlistener)
    {
        zzlm.setOnCustomRenderedAdLoadedListener(oncustomrenderedadloadedlistener);
    }

    public void show()
    {
        zzlm.show();
    }
}
