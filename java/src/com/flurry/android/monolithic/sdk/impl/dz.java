// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import com.millennialmedia.android.MMInterstitial;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            cr, ea, ja, m

public final class dz extends cr
{

    private static final String c = com/flurry/android/monolithic/sdk/impl/dz.getSimpleName();
    MMInterstitial b;
    private boolean d;
    private final String e;

    public dz(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit, Bundle bundle)
    {
        super(context, flurryadmodule, m, adunit);
        e = bundle.getString("com.flurry.millennial.MYAPIDINTERSTITIAL");
    }

    static boolean a(dz dz1)
    {
        return dz1.d;
    }

    static String f()
    {
        return c;
    }

    public void a()
    {
        b = new MMInterstitial((Activity)b());
        b.setApid(e);
        ea ea1 = new ea(this);
        b.setListener(ea1);
        b.fetch();
        d = b.display();
        if (d)
        {
            ja.a(3, c, (new StringBuilder()).append("Millennial MMAdView Interstitial ad displayed immediately:").append(System.currentTimeMillis()).append(" ").append(d).toString());
            return;
        } else
        {
            ja.a(3, c, (new StringBuilder()).append("Millennial MMAdView Interstitial ad did not display immediately:").append(System.currentTimeMillis()).append(" ").append(d).toString());
            return;
        }
    }

}
