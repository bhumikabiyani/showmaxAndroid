// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import com.google.ads.AdRequest;
import com.google.ads.InterstitialAd;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            cr, dl, ja, m

public final class dj extends cr
{

    private static final String b = com/flurry/android/monolithic/sdk/impl/dj.getSimpleName();
    private final String c;
    private final String d;
    private final boolean e;
    private final InterstitialAd f;

    public dj(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit, Bundle bundle)
    {
        super(context, flurryadmodule, m, adunit);
        c = bundle.getString("com.flurry.admob.MY_AD_UNIT_ID");
        d = bundle.getString("com.flurry.admob.MYTEST_AD_DEVICE_ID");
        e = bundle.getBoolean("com.flurry.admob.test");
        f = new InterstitialAd((Activity)b(), c);
        f.setAdListener(new dl(this, null));
    }

    static InterstitialAd a(dj dj1)
    {
        return dj1.f;
    }

    static String f()
    {
        return b;
    }

    public void a()
    {
        AdRequest adrequest = new AdRequest();
        if (e)
        {
            ja.a(3, b, "Admob AdView set to Test Mode.");
            adrequest.addTestDevice(AdRequest.TEST_EMULATOR);
            if (!TextUtils.isEmpty(d))
            {
                adrequest.addTestDevice(d);
            }
        }
        f.loadAd(adrequest);
    }

}
