// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.google.ads.Ad;
import com.google.ads.AdListener;
import java.util.Collections;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            dg, ja, dh

final class di
    implements AdListener
{

    final dg a;

    private di(dg dg1)
    {
        a = dg1;
        super();
    }

    di(dg dg1, dh dh)
    {
        this(dg1);
    }

    public void onDismissScreen(Ad ad)
    {
        a.onAdClosed(Collections.emptyMap());
        ja.a(4, dg.a(), "Admob AdView dismissed from screen.");
    }

    public void onFailedToReceiveAd(Ad ad, com.google.ads.AdRequest.ErrorCode errorcode)
    {
        a.onRenderFailed(Collections.emptyMap());
        ja.a(5, dg.a(), "Admob AdView failed to receive ad.");
    }

    public void onLeaveApplication(Ad ad)
    {
        a.onAdClicked(Collections.emptyMap());
        ja.a(4, dg.a(), "Admob AdView leave application.");
    }

    public void onPresentScreen(Ad ad)
    {
        ja.a(4, dg.a(), "Admob AdView present on screen.");
    }

    public void onReceiveAd(Ad ad)
    {
        a.onAdShown(Collections.emptyMap());
        ja.a(4, dg.a(), "Admob AdView received ad.");
    }
}
