// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android;

import android.content.Context;
import android.view.ViewGroup;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.monolithic.sdk.impl.bw;
import com.flurry.android.monolithic.sdk.impl.ja;
import java.util.Map;

// Referenced classes of package com.flurry.android:
//            FlurryAdSize, FlurryAdListener, ICustomAdNetworkHandler

public class FlurryAds
{

    private static final String a = com/flurry/android/FlurryAds.getSimpleName();

    private FlurryAds()
    {
    }

    public static void clearLocation()
    {
        FlurryAdModule.getInstance().j();
    }

    public static void clearTargetingKeywords()
    {
        FlurryAdModule.getInstance().u();
    }

    public static void clearUserCookies()
    {
        FlurryAdModule.getInstance().s();
    }

    public static void displayAd(Context context, String s, ViewGroup viewgroup)
    {
        if (context == null)
        {
            ja.b(a, "Context passed to displayAd was null.");
            return;
        }
        if (s == null)
        {
            ja.b(a, "Ad space name passed to displayAd was null.");
            return;
        }
        if (s.length() == 0)
        {
            ja.b(a, "Ad space name passed to displayAd was empty.");
            return;
        }
        if (viewgroup == null)
        {
            ja.b(a, "ViewGroup  passed to displayAd was null.");
            return;
        }
        FlurryAdModule.getInstance().a(context);
        try
        {
            FlurryAdModule.getInstance().b().a(context, s, viewgroup);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            ja.b(a, "Exception while displaying Ad: ", context);
        }
    }

    public static void enableTestAds(boolean flag)
    {
        FlurryAdModule.getInstance().a(flag);
    }

    public static void fetchAd(Context context, String s, ViewGroup viewgroup, FlurryAdSize flurryadsize)
    {
        if (context == null)
        {
            ja.b(a, "Context passed to fetchAd was null.");
            return;
        }
        if (s == null)
        {
            ja.b(a, "Ad space name passed to fetchAd was null.");
            return;
        }
        if (s.length() == 0)
        {
            ja.b(a, "Ad space name passed to fetchAd was empty.");
            return;
        }
        if (viewgroup == null)
        {
            ja.b(a, "ViewGroup passed to fetchAd was null.");
            return;
        }
        if (flurryadsize == null)
        {
            ja.b(a, "FlurryAdSize passed to fetchAd was null.");
            return;
        }
        FlurryAdModule.getInstance().a(context);
        try
        {
            FlurryAdModule.getInstance().b().a(context, s, viewgroup, flurryadsize);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            ja.b(a, "Exception while fetching Ad: ", context);
        }
    }

    public static boolean getAd(Context context, String s, ViewGroup viewgroup, FlurryAdSize flurryadsize, long l)
    {
        if (context == null)
        {
            ja.b(a, "Context passed to getAd was null.");
            return false;
        }
        if (s == null)
        {
            ja.b(a, "Ad space name passed to getAd was null.");
            return false;
        }
        if (s.length() == 0)
        {
            ja.b(a, "Ad space name passed to getAd was empty.");
            return false;
        }
        if (viewgroup == null)
        {
            ja.b(a, "ViewGroup passed to getAd was null.");
            return false;
        }
        if (flurryadsize == null)
        {
            ja.b(a, "FlurryAdSize passed to getAd was null.");
            return false;
        }
        FlurryAdModule.getInstance().a(context);
        boolean flag;
        try
        {
            flag = FlurryAdModule.getInstance().b().a(context, s, flurryadsize, viewgroup, l);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            ja.b(a, "Exception while getting Ad : ", context);
            return false;
        }
        return flag;
    }

    public static void initializeAds(Context context)
    {
        if (context == null)
        {
            ja.b(a, "Context passed to initializeAds was null.");
            return;
        }
        FlurryAdModule.getInstance().a(context);
        try
        {
            FlurryAdModule.getInstance().e(context);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            ja.b(a, "Exception while initializing Ads: ", context);
        }
    }

    public static boolean isAdAvailable(Context context, String s, FlurryAdSize flurryadsize, long l)
    {
        if (context == null)
        {
            ja.b(a, "Context passed to isAdAvailable was null.");
            return false;
        }
        if (s == null)
        {
            ja.b(a, "Ad space name passed to isAdAvailable was null.");
            return false;
        }
        if (s.length() == 0)
        {
            ja.b(a, "Ad space name passed to isAdAvailable was empty.");
            return false;
        }
        if (flurryadsize == null)
        {
            ja.b(a, "FlurryAdSize passed to isAdAvailable was null.");
            return false;
        }
        FlurryAdModule.getInstance().a(context);
        boolean flag;
        try
        {
            flag = FlurryAdModule.getInstance().b().a(s, flurryadsize, l);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            ja.b(a, "Exception while checking Ads if available: ", context);
            return false;
        }
        return flag;
    }

    public static boolean isAdReady(String s)
    {
        if (s == null)
        {
            ja.b(a, "Ad space name passed to isAdReady was null.");
            return false;
        }
        if (s.length() == 0)
        {
            ja.b(a, "Ad space name passed to isAdReady was empty.");
            return false;
        } else
        {
            return FlurryAdModule.getInstance().b().b(s);
        }
    }

    public static void removeAd(Context context, String s, ViewGroup viewgroup)
    {
        if (context == null)
        {
            ja.b(a, "Context passed to removeAd was null.");
            return;
        }
        if (s == null)
        {
            ja.b(a, "Ad space name passed to removeAd was null.");
            return;
        }
        if (s.length() == 0)
        {
            ja.b(a, "Ad space name passed to removeAd was empty.");
            return;
        }
        if (viewgroup == null)
        {
            ja.b(a, "ViewGroup passed to removeAd was null.");
            return;
        }
        FlurryAdModule.getInstance().a(context);
        try
        {
            FlurryAdModule.getInstance().b().a(context, s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            ja.b(a, "Exception while removing Ad: ", context);
        }
    }

    public static void setAdListener(FlurryAdListener flurryadlistener)
    {
        FlurryAdModule.getInstance().a(flurryadlistener);
    }

    public static void setAdLogUrl(String s)
    {
        FlurryAdModule.getInstance().b(s);
    }

    public static void setAdServerUrl(String s)
    {
        FlurryAdModule.getInstance().a(s);
    }

    public static void setCustomAdNetworkHandler(ICustomAdNetworkHandler icustomadnetworkhandler)
    {
        if (icustomadnetworkhandler == null)
        {
            ja.b(a, "ICustomAdNetworkHandler passed to setCustomAdNetworkHandler was null.");
            return;
        } else
        {
            FlurryAdModule.getInstance().a(icustomadnetworkhandler);
            return;
        }
    }

    static void setFixedAdId(String s, CharSequence charsequence)
    {
        FlurryAdModule.getInstance().a(s, charsequence);
    }

    public static void setLocation(float f, float f1)
    {
        FlurryAdModule.getInstance().a(f, f1);
    }

    public static void setTargetingKeywords(Map map)
    {
        if (map == null)
        {
            ja.b(a, "targetingKeywords Map passed to setTargetingKeywords was null.");
        } else
        if (map != null)
        {
            FlurryAdModule.getInstance().c(map);
            return;
        }
    }

    public static void setUserCookies(Map map)
    {
        if (map == null)
        {
            ja.b(a, "userCookies Map passed to setUserCookies was null.");
            return;
        } else
        {
            FlurryAdModule.getInstance().b(map);
            return;
        }
    }

}
