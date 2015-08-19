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
import com.jumptap.adtag.JtAdView;
import com.jumptap.adtag.JtAdWidgetSettings;
import com.jumptap.adtag.JtAdWidgetSettingsFactory;
import com.jumptap.adtag.utils.JtException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            il, ja, dt, m

public class ds extends AdNetworkView
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/ds.getSimpleName();
    private final String f;
    private final String g;
    private final String h;

    ds(Context context, FlurryAdModule flurryadmodule, m m, AdCreative adcreative, Bundle bundle)
    {
        super(context, flurryadmodule, m, adcreative);
        f = bundle.getString("com.flurry.jumptap.PUBLISHER_ID");
        g = bundle.getString("com.flurry.jumptap.SPOT_ID");
        h = bundle.getString("com.flurry.jumptap.SITE_ID");
        setFocusable(true);
    }

    static String a()
    {
        return a;
    }

    public void initLayout()
    {
        Object obj;
        JtAdWidgetSettings jtadwidgetsettings;
        obj = getContext();
        jtadwidgetsettings = JtAdWidgetSettingsFactory.createWidgetSettings();
        jtadwidgetsettings.setPublisherId(f);
        if (!TextUtils.isEmpty(g))
        {
            jtadwidgetsettings.setSpotId(g);
        }
        if (!TextUtils.isEmpty(h))
        {
            jtadwidgetsettings.setSiteId(h);
        }
        jtadwidgetsettings.setApplicationId(il.c(((Context) (obj))));
        jtadwidgetsettings.setApplicationVersion(il.d(((Context) (obj))));
        jtadwidgetsettings.setRefreshPeriod(0);
        jtadwidgetsettings.setShouldSendLocation(false);
        setGravity(17);
        obj = new JtAdView((Activity)obj, jtadwidgetsettings);
        float f1 = getResources().getDisplayMetrics().density;
        ja.a(3, a, (new StringBuilder()).append("scale is ").append(f1).toString());
        ((JtAdView) (obj)).setLayoutParams(new android.widget.LinearLayout.LayoutParams((int)(320F * f1 + 0.5F), (int)(f1 * 50F + 0.5F)));
_L2:
        ((JtAdView) (obj)).setAdViewListener(new dt(this));
        addView(((android.view.View) (obj)));
        return;
        JtException jtexception;
        jtexception;
        jtexception = null;
_L3:
        ja.a(3, a, "Jumptap JtException when creating ad object.");
        if (true) goto _L2; else goto _L1
_L1:
        JtException jtexception1;
        jtexception1;
          goto _L3
    }

}
