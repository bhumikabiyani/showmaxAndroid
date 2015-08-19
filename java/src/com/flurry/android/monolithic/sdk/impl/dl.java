// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.google.ads.Ad;
import com.google.ads.AdListener;
import com.google.ads.InterstitialAd;
import java.util.Collections;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            dj, ja, dk

final class dl
    implements AdListener
{

    final dj a;

    private dl(dj dj1)
    {
        a = dj1;
        super();
    }

    dl(dj dj1, dk dk)
    {
        this(dj1);
    }

    public void onDismissScreen(Ad ad)
    {
        a.c(Collections.emptyMap());
        ja.a(3, dj.f(), "Admob Interstitial dismissed from screen.");
    }

    public void onFailedToReceiveAd(Ad ad, com.google.ads.AdRequest.ErrorCode errorcode)
    {
        a.d(Collections.emptyMap());
        ja.a(3, dj.f(), "Admob Interstitial failed to receive takeover.");
    }

    public void onLeaveApplication(Ad ad)
    {
        a.b(Collections.emptyMap());
        ja.a(4, dj.f(), "Admob Interstitial leave application.");
    }

    public void onPresentScreen(Ad ad)
    {
        ja.a(3, dj.f(), "Admob Interstitial present on screen.");
    }

    public void onReceiveAd(Ad ad)
    {
        if (ad == dj.a(a))
        {
            ja.a(3, dj.f(), "Admob Interstitial received takeover.");
            a.a(Collections.emptyMap());
            dj.a(a).show();
        }
    }
}
