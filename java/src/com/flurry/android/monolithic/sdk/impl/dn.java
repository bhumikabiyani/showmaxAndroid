// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import com.flurry.android.AdCreative;
import com.flurry.android.AdNetworkView;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.inmobi.androidsdk.IMAdRequest;
import com.inmobi.androidsdk.IMAdView;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ja, do, m

public final class dn extends AdNetworkView
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/dn.getSimpleName();
    private final String f;
    private final boolean g;

    dn(Context context, FlurryAdModule flurryadmodule, m m, AdCreative adcreative, Bundle bundle)
    {
        super(context, flurryadmodule, m, adcreative);
        f = bundle.getString("com.flurry.inmobi.MY_APP_ID");
        g = bundle.getBoolean("com.flurry.inmobi.test");
        setFocusable(true);
    }

    private int a(int i, int j)
    {
        if (j >= 728 && i >= 90)
        {
            ja.a(3, a, "Determined InMobi AdSize as 728x90");
            return 11;
        }
        if (j >= 468 && i >= 60)
        {
            ja.a(3, a, "Determined InMobi AdSize as 468x60");
            return 12;
        }
        if (j >= 320 && i >= 50)
        {
            ja.a(3, a, "Determined InMobi AdSize as 320x50");
            return 15;
        }
        if (j >= 300 && i >= 250)
        {
            ja.a(3, a, "Determined InMobi AdSize as 300x250");
            return 10;
        }
        if (j >= 120 && i >= 600)
        {
            ja.a(3, a, "Determined InMobi AdSize as 120x600");
            return 13;
        } else
        {
            ja.a(3, a, "Could not find InMobi AdSize that matches size");
            return -1;
        }
    }

    static String a()
    {
        return a;
    }

    public void initLayout()
    {
        Object obj = getContext();
        DisplayMetrics displaymetrics = ((Context) (obj)).getResources().getDisplayMetrics();
        int k = a((int)((float)displaymetrics.heightPixels / displaymetrics.density), (int)((float)displaymetrics.widthPixels / displaymetrics.density));
        if (k != -1)
        {
            obj = new IMAdView((Activity)obj, k, f);
            if (k != 15);
            float f1;
            IMAdRequest imadrequest;
            int i;
            int j;
            if (k == 11)
            {
                i = 728;
                j = 90;
            } else
            {
                j = 50;
                i = 320;
            }
            if (k == 12)
            {
                i = 468;
                j = 60;
            }
            if (k == 10)
            {
                i = 300;
                j = 250;
            }
            if (k == 13)
            {
                i = 120;
                j = 600;
            }
            f1 = getResources().getDisplayMetrics().density;
            ((IMAdView) (obj)).setLayoutParams(new android.widget.LinearLayout.LayoutParams((int)((float)i * f1 + 0.5F), (int)((float)j * f1 + 0.5F)));
            ((IMAdView) (obj)).setIMAdListener(new do(this));
            setGravity(17);
            addView(((android.view.View) (obj)));
            imadrequest = new IMAdRequest();
            if (g)
            {
                ja.a(3, a, "InMobi AdView set to Test Mode.");
                imadrequest.setTestMode(true);
            }
            ((IMAdView) (obj)).setIMAdRequest(imadrequest);
            ((IMAdView) (obj)).setRefreshInterval(-1);
            ((IMAdView) (obj)).loadNewAd();
            return;
        } else
        {
            ja.a(3, a, "**********Could not load InMobi Ad");
            return;
        }
    }

}
