// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.flurry.android.AdCreative;
import com.flurry.android.AdNetworkView;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.AdView;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ja, di, m

public final class dg extends AdNetworkView
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/dg.getSimpleName();
    private final String f;
    private final String g;
    private final boolean h;

    public dg(Context context, FlurryAdModule flurryadmodule, m m, AdCreative adcreative, Bundle bundle)
    {
        super(context, flurryadmodule, m, adcreative);
        f = bundle.getString("com.flurry.admob.MY_AD_UNIT_ID");
        g = bundle.getString("com.flurry.admob.MYTEST_AD_DEVICE_ID");
        h = bundle.getBoolean("com.flurry.admob.test");
        setFocusable(true);
    }

    private AdSize a(int i, int j)
    {
        if (i >= 728 && j >= 90)
        {
            return AdSize.IAB_LEADERBOARD;
        }
        if (i >= 468 && j >= 60)
        {
            return AdSize.IAB_BANNER;
        }
        if (i >= 320 && j >= 50)
        {
            return AdSize.BANNER;
        }
        if (i >= 300 && j >= 250)
        {
            return AdSize.IAB_MRECT;
        } else
        {
            ja.a(3, a, "Could not find AdMob AdSize that matches size");
            return null;
        }
    }

    private AdSize a(Context context, int i, int j)
    {
        int k;
        int l;
label0:
        {
            context = context.getResources().getDisplayMetrics();
            l = (int)((float)((DisplayMetrics) (context)).heightPixels / ((DisplayMetrics) (context)).density);
            int i1 = (int)((float)((DisplayMetrics) (context)).widthPixels / ((DisplayMetrics) (context)).density);
            if (i > 0)
            {
                k = i;
                if (i <= i1)
                {
                    break label0;
                }
            }
            k = i1;
        }
label1:
        {
            if (j > 0)
            {
                i = j;
                if (j <= l)
                {
                    break label1;
                }
            }
            i = l;
        }
        return a(k, i);
    }

    static String a()
    {
        return a;
    }

    public void initLayout()
    {
        Object obj = getContext();
        int i = getAdCreative().getWidth();
        int j = getAdCreative().getHeight();
        AdSize adsize = a(((Context) (obj)), i, j);
        if (adsize == null)
        {
            ja.a(6, a, (new StringBuilder()).append("Could not find Admob AdSize that matches {width = ").append(i).append(", height ").append(j).append("}").toString());
            return;
        }
        ja.a(3, a, (new StringBuilder()).append("Determined Admob AdSize as ").append(adsize).append(" that best matches {width = ").append(i).append(", height = ").append(j).append("}").toString());
        AdView adview = new AdView((Activity)obj, adsize, f);
        adview.setAdListener(new di(this, null));
        setGravity(17);
        addView(adview, new android.widget.RelativeLayout.LayoutParams(adsize.getWidthInPixels(((Context) (obj))), adsize.getHeightInPixels(((Context) (obj)))));
        obj = new AdRequest();
        if (h)
        {
            ja.a(3, a, "Admob AdView set to Test Mode.");
            ((AdRequest) (obj)).addTestDevice(AdRequest.TEST_EMULATOR);
            if (!TextUtils.isEmpty(g))
            {
                ((AdRequest) (obj)).addTestDevice(g);
            }
        }
        adview.loadAd(((AdRequest) (obj)));
    }

}
