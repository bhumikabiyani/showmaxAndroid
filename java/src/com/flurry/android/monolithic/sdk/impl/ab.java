// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.AdCreative;
import com.flurry.android.FlurryAdSize;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdFrame;
import com.flurry.android.impl.ads.avro.protocol.v6.AdSpaceLayout;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            m

public final class ab
{

    public static AdCreative a(AdSpaceLayout adspacelayout)
    {
        return new AdCreative(adspacelayout.c().intValue(), adspacelayout.b().intValue(), adspacelayout.e().toString(), adspacelayout.d().toString(), adspacelayout.f().toString());
    }

    public static AdCreative a(AdUnit adunit)
    {
        if (adunit == null)
        {
            return null;
        }
        adunit = adunit.d();
        if (adunit == null || adunit.isEmpty())
        {
            return null;
        }
        adunit = (AdFrame)adunit.get(0);
        if (adunit == null)
        {
            return null;
        }
        adunit = adunit.e();
        if (adunit == null)
        {
            return null;
        } else
        {
            return a(((AdSpaceLayout) (adunit)));
        }
    }

    public static m a(FlurryAdModule flurryadmodule, String s)
    {
        s = new m(flurryadmodule.d(), s, flurryadmodule.i());
        flurryadmodule.a(s);
        return s;
    }

    public static FlurryAdSize b(AdSpaceLayout adspacelayout)
    {
        if (adspacelayout == null)
        {
            return FlurryAdSize.BANNER_TOP;
        }
        if (adspacelayout.e().toString().equals("takeover"))
        {
            return FlurryAdSize.FULLSCREEN;
        }
        adspacelayout = adspacelayout.f().toString().split("-");
        if (adspacelayout.length > 0 && adspacelayout[0].equals("b"))
        {
            return FlurryAdSize.BANNER_BOTTOM;
        } else
        {
            return FlurryAdSize.BANNER_TOP;
        }
    }
}
