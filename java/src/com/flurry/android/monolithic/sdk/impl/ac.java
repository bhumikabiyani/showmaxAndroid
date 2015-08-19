// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.widget.RelativeLayout;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdFrame;
import com.flurry.android.impl.ads.avro.protocol.v6.AdSpaceLayout;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ja, bh, m

public abstract class ac extends RelativeLayout
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/ac.getSimpleName();
    FlurryAdModule b;
    m c;
    AdUnit d;
    int e;

    protected ac(Context context)
    {
        super(context);
    }

    public ac(Context context, FlurryAdModule flurryadmodule, m m)
    {
        super(context);
        b = flurryadmodule;
        c = m;
    }

    boolean e()
    {
        return !((AdFrame)d.d().get(e)).e().e().toString().equals("takeover");
    }

    public int getAdFrameIndex()
    {
        return e;
    }

    public m getAdLog()
    {
        return c;
    }

    public AdUnit getAdUnit()
    {
        return d;
    }

    public abstract void initLayout();

    public void onEvent(String s, Map map)
    {
        ja.a(3, a, (new StringBuilder()).append("AppSpotBannerView.onEvent ").append(s).toString());
        if (d != null)
        {
            b.a(new bh(s, map, getContext(), d, c, e), b.a(), 0);
            return;
        } else
        {
            ja.a(3, a, "fAdUnit == null");
            return;
        }
    }

    public void setAdFrameIndex(int i)
    {
        e = i;
    }

    public void setAdLog(m m)
    {
        c = m;
    }

    public void setAdUnit(AdUnit adunit)
    {
        d = adunit;
    }

    public void setPlatformModule(FlurryAdModule flurryadmodule)
    {
        b = flurryadmodule;
    }

    public void stop()
    {
    }

}
