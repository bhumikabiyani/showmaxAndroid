// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import com.flurry.android.AdCreative;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            cy, dn, dp, cu, 
//            m, ac, cn

public final class dm extends cy
{

    public dm()
    {
    }

    protected ac a(Context context, FlurryAdModule flurryadmodule, m m, AdCreative adcreative, Bundle bundle)
    {
        if (context == null || flurryadmodule == null || m == null || adcreative == null || bundle == null)
        {
            return null;
        } else
        {
            return new dn(context, flurryadmodule, m, adcreative, bundle);
        }
    }

    protected cn a(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit, Bundle bundle)
    {
        if (context == null || flurryadmodule == null || m == null || adunit == null || bundle == null)
        {
            return null;
        } else
        {
            return new dp(context, flurryadmodule, m, adunit, bundle);
        }
    }

    protected String f()
    {
        return "InMobi";
    }

    protected List g()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new cu("InMobiAndroidSDK", "3.5.0", "com.inmobi.androidsdk.IMAdInterstitial"));
        return arraylist;
    }

    protected List j()
    {
        ArrayList arraylist = new ArrayList();
        ActivityInfo activityinfo = new ActivityInfo();
        activityinfo.name = "com.inmobi.androidsdk.IMBrowserActivity";
        activityinfo.configChanges = 3248;
        arraylist.add(activityinfo);
        return arraylist;
    }

    protected List k()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new cu("InMobiAndroidSDK", "3.5.0", "com.inmobi.androidsdk.IMAdView"));
        return arraylist;
    }

    protected List n()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add("com.flurry.inmobi.MY_APP_ID");
        return arraylist;
    }

    protected List o()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add("android.permission.INTERNET");
        return arraylist;
    }
}
