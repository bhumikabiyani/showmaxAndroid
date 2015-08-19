// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android;

import android.content.Context;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.monolithic.sdk.impl.ac;
import com.flurry.android.monolithic.sdk.impl.m;
import java.util.Map;

// Referenced classes of package com.flurry.android:
//            AdCreative

public abstract class AdNetworkView extends ac
{

    private final AdCreative a;

    public AdNetworkView(Context context, AdCreative adcreative)
    {
        super(context, null, null);
        a = adcreative;
    }

    public AdNetworkView(Context context, FlurryAdModule flurryadmodule, m m, AdCreative adcreative)
    {
        super(context, flurryadmodule, m);
        a = adcreative;
    }

    public AdCreative getAdCreative()
    {
        return a;
    }

    public void onAdClicked(Map map)
    {
        super.onEvent("clicked", map);
    }

    public void onAdClosed(Map map)
    {
        super.onEvent("adClosed", map);
    }

    public void onAdFilled(Map map)
    {
        super.onEvent("filled", map);
    }

    public void onAdShown(Map map)
    {
        super.onEvent("rendered", map);
    }

    public void onAdUnFilled(Map map)
    {
        super.onEvent("unfilled", map);
    }

    public void onRenderFailed(Map map)
    {
        super.onEvent("renderFailed", map);
    }
}
