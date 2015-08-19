// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import com.mobclix.android.sdk.MobclixFullScreenAdView;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            cr, ef, m

public final class ee extends cr
{

    private static final String b = com/flurry/android/monolithic/sdk/impl/ee.getSimpleName();

    public ee(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit, Bundle bundle)
    {
        super(context, flurryadmodule, m, adunit);
    }

    static String f()
    {
        return b;
    }

    public void a()
    {
        MobclixFullScreenAdView mobclixfullscreenadview = new MobclixFullScreenAdView((Activity)b());
        mobclixfullscreenadview.addMobclixAdViewListener(new ef(this));
        mobclixfullscreenadview.requestAndDisplayAd();
    }

}
