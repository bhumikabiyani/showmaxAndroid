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
import com.jumptap.adtag.JtAdInterstitial;
import com.jumptap.adtag.JtAdWidgetSettings;
import com.jumptap.adtag.JtAdWidgetSettingsFactory;
import com.jumptap.adtag.utils.JtException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            cr, il, dv, ja, 
//            m

public final class du extends cr
{

    private static final String b = com/flurry/android/monolithic/sdk/impl/du.getSimpleName();
    private final String c;
    private final String d;
    private final String e;

    public du(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit, Bundle bundle)
    {
        super(context, flurryadmodule, m, adunit);
        c = bundle.getString("com.flurry.jumptap.PUBLISHER_ID");
        d = bundle.getString("com.flurry.jumptap.INT_SPOT_ID");
        e = bundle.getString("com.flurry.jumptap.INT_SITE_ID");
    }

    static String f()
    {
        return b;
    }

    public void a()
    {
        Object obj = JtAdWidgetSettingsFactory.createWidgetSettings();
        ((JtAdWidgetSettings) (obj)).setPublisherId(c);
        if (!TextUtils.isEmpty(d))
        {
            ((JtAdWidgetSettings) (obj)).setSpotId(d);
        }
        if (!TextUtils.isEmpty(e))
        {
            ((JtAdWidgetSettings) (obj)).setSiteId(e);
        }
        ((JtAdWidgetSettings) (obj)).setApplicationId(il.c(b()));
        ((JtAdWidgetSettings) (obj)).setApplicationVersion(il.d(b()));
        ((JtAdWidgetSettings) (obj)).setRefreshPeriod(0);
        ((JtAdWidgetSettings) (obj)).setShouldSendLocation(false);
        try
        {
            obj = new JtAdInterstitial((Activity)b(), ((JtAdWidgetSettings) (obj)));
        }
        catch (JtException jtexception)
        {
            ja.a(3, b, "Jumptap JtException when creating ad object.");
            jtexception = null;
        }
        ((JtAdInterstitial) (obj)).setAdViewListener(new dv(this));
        ((JtAdInterstitial) (obj)).showAsPopup();
    }

}
