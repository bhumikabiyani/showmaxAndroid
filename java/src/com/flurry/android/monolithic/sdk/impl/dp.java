// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import com.inmobi.androidsdk.IMAdInterstitial;
import com.inmobi.androidsdk.IMAdInterstitialListener;
import com.inmobi.androidsdk.IMAdRequest;
import java.lang.reflect.Method;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            cr, dq, ja, m

public class dp extends cr
{

    private static final String b = com/flurry/android/monolithic/sdk/impl/dp.getSimpleName();
    private final String c;
    private final boolean d;
    private final Method e = g();

    public dp(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit, Bundle bundle)
    {
        super(context, flurryadmodule, m, adunit);
        c = bundle.getString("com.flurry.inmobi.MY_APP_ID");
        d = bundle.getBoolean("com.flurry.inmobi.test");
    }

    private void a(IMAdInterstitial imadinterstitial, IMAdInterstitialListener imadinterstitiallistener)
    {
        if (e == null || imadinterstitial == null)
        {
            return;
        }
        try
        {
            e.invoke(imadinterstitial, new Object[] {
                imadinterstitiallistener
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (IMAdInterstitial imadinterstitial)
        {
            return;
        }
    }

    static String f()
    {
        return b;
    }

    private static Method g()
    {
        Method amethod[] = com/inmobi/androidsdk/IMAdInterstitial.getMethods();
        int j = amethod.length;
        for (int i = 0; i < j; i++)
        {
            Method method = amethod[i];
            String s = method.getName();
            if (s.equals("setIMAdInterstitialListener") || s.equals("setImAdInterstitialListener"))
            {
                return method;
            }
        }

        return null;
    }

    public void a()
    {
        IMAdInterstitial imadinterstitial = new IMAdInterstitial((Activity)b(), c);
        a(imadinterstitial, ((IMAdInterstitialListener) (new dq(this))));
        IMAdRequest imadrequest = new IMAdRequest();
        if (d)
        {
            ja.a(3, b, "InMobi Interstitial set to Test Mode.");
            imadrequest.setTestMode(true);
        }
        imadinterstitial.loadNewAd(imadrequest);
    }

}
