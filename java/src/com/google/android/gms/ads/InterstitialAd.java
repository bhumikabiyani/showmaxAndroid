// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.zzat;
import com.google.android.gms.internal.zzbq;

// Referenced classes of package com.google.android.gms.ads:
//            AdRequest, AdListener

public final class InterstitialAd
{

    private final zzbq zzlm;

    public InterstitialAd(Context context)
    {
        zzlm = new zzbq(context);
    }

    public AdListener getAdListener()
    {
        return zzlm.getAdListener();
    }

    public String getAdUnitId()
    {
        return zzlm.getAdUnitId();
    }

    public InAppPurchaseListener getInAppPurchaseListener()
    {
        return zzlm.getInAppPurchaseListener();
    }

    public String getMediationAdapterClassName()
    {
        return zzlm.getMediationAdapterClassName();
    }

    public boolean isLoaded()
    {
        return zzlm.isLoaded();
    }

    public void loadAd(AdRequest adrequest)
    {
        zzlm.zza(adrequest.zzY());
    }

    public void setAdListener(AdListener adlistener)
    {
        zzlm.setAdListener(adlistener);
        if (adlistener != null && (adlistener instanceof zzat))
        {
            zzlm.zza((zzat)adlistener);
        } else
        if (adlistener == null)
        {
            zzlm.zza(null);
            return;
        }
    }

    public void setAdUnitId(String s)
    {
        zzlm.setAdUnitId(s);
    }

    public void setInAppPurchaseListener(InAppPurchaseListener inapppurchaselistener)
    {
        zzlm.setInAppPurchaseListener(inapppurchaselistener);
    }

    public void setPlayStorePurchaseParams(PlayStorePurchaseListener playstorepurchaselistener, String s)
    {
        zzlm.setPlayStorePurchaseParams(playstorepurchaselistener, s);
    }

    public void show()
    {
        zzlm.show();
    }
}
