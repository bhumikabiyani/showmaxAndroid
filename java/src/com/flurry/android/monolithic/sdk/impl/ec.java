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
import com.mobclix.android.sdk.MobclixAdView;
import com.mobclix.android.sdk.MobclixIABRectangleMAdView;
import com.mobclix.android.sdk.MobclixMMABannerXLAdView;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ja, ed, m

public class ec extends AdNetworkView
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/ec.getSimpleName();

    ec(Context context, FlurryAdModule flurryadmodule, m m, AdCreative adcreative, Bundle bundle)
    {
        super(context, flurryadmodule, m, adcreative);
        setFocusable(true);
    }

    private MobclixAdView a(Context context, int i, int j)
    {
        if (j >= 320 && i >= 50)
        {
            ja.a(3, a, "Determined Mobclix AdSize as BANNER");
            return new MobclixMMABannerXLAdView((Activity)context);
        }
        if (j >= 300 && i >= 250)
        {
            ja.a(3, a, "Determined Mobclix AdSize as IAB_RECT");
            return new MobclixIABRectangleMAdView((Activity)context);
        } else
        {
            ja.a(3, a, "Could not find Mobclix AdSize that matches size");
            return null;
        }
    }

    static String a()
    {
        return a;
    }

    public void initLayout()
    {
        int j = 300;
        int i = 50;
        MobclixAdView mobclixadview = a(getContext(), getAdCreative().getHeight(), getAdCreative().getWidth());
        mobclixadview.addMobclixAdViewListener(new ed(this));
        if (!(mobclixadview instanceof MobclixMMABannerXLAdView));
        if (mobclixadview instanceof MobclixIABRectangleMAdView)
        {
            j = 320;
            i = 250;
        }
        float f = getResources().getDisplayMetrics().density;
        mobclixadview.setLayoutParams(new android.widget.LinearLayout.LayoutParams((int)((float)j * f + 0.5F), (int)((float)i * f + 0.5F)));
        setGravity(17);
        addView(mobclixadview);
        mobclixadview.setRefreshTime(-1L);
    }

}
