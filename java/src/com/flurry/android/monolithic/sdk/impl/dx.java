// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.flurry.android.AdCreative;
import com.flurry.android.AdNetworkView;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.millennialmedia.android.MMAdView;
import com.millennialmedia.android.MMSDK;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ja, dy, m

public final class dx extends AdNetworkView
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/dx.getSimpleName();
    private final String f;
    private final String g;

    dx(Context context, FlurryAdModule flurryadmodule, m m, AdCreative adcreative, Bundle bundle)
    {
        super(context, flurryadmodule, m, adcreative);
        f = bundle.getString("com.flurry.millennial.MYAPID");
        g = bundle.getString("com.flurry.millennial.MYAPIDRECTANGLE");
        setFocusable(true);
    }

    static String a()
    {
        return a;
    }

    public void initLayout()
    {
        Object obj;
        int i;
        int j;
        obj = getContext();
        i = getAdCreative().getWidth();
        j = getAdCreative().getHeight();
        ja.a(3, a, String.format("Ad space width: %d Ad space height: %d", new Object[] {
            Integer.valueOf(i), Integer.valueOf(j)
        }));
        if ((i < 320 || j < 50) && (i < 300 || j < 250)) goto _L2; else goto _L1
_L1:
        obj = new MMAdView((Activity)obj);
        setId(MMSDK.getDefaultAdId());
        if (i < 320 || j < 50) goto _L4; else goto _L3
_L3:
        ((MMAdView) (obj)).setApid(f);
        if (i < 728 || j < 90) goto _L6; else goto _L5
_L5:
        j = 728;
        i = 90;
_L9:
        ja.a(3, a, String.format("Determined Millennial AdSize as %d x %d", new Object[] {
            Integer.valueOf(j), Integer.valueOf(i)
        }));
        ((MMAdView) (obj)).setWidth(j);
        ((MMAdView) (obj)).setHeight(i);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setGravity(17);
        ((MMAdView) (obj)).setListener(new dy(this));
        addView(((android.view.View) (obj)));
        ((MMAdView) (obj)).getAd();
        return;
_L6:
        if (i >= 480 && j >= 60)
        {
            j = 480;
            i = 60;
            continue; /* Loop/switch isn't completed */
        }
          goto _L7
_L4:
        if (i >= 300 && j >= 250)
        {
            ((MMAdView) (obj)).setApid(g);
            i = 250;
            j = 300;
            continue; /* Loop/switch isn't completed */
        }
          goto _L7
_L2:
        ja.a(3, a, "**********Could not load Millennial Ad");
        return;
_L7:
        j = 320;
        i = 50;
        if (true) goto _L9; else goto _L8
_L8:
    }

}
