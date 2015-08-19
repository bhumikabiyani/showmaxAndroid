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
//            cy, dx, dz, cu, 
//            m, ac, cn

public final class dw extends cy
{

    public dw()
    {
    }

    protected ac a(Context context, FlurryAdModule flurryadmodule, m m, AdCreative adcreative, Bundle bundle)
    {
        if (context == null || flurryadmodule == null || m == null || adcreative == null || bundle == null)
        {
            return null;
        } else
        {
            return new dx(context, flurryadmodule, m, adcreative, bundle);
        }
    }

    protected cn a(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit, Bundle bundle)
    {
        if (context == null || flurryadmodule == null || m == null || adunit == null || bundle == null)
        {
            return null;
        } else
        {
            return new dz(context, flurryadmodule, m, adunit, bundle);
        }
    }

    protected String f()
    {
        return "Millennial Media";
    }

    protected List g()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new cu("MMAdView", "5.0.1", "com.millennialmedia.android.MMInterstitial"));
        return arraylist;
    }

    protected List h()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add("com.flurry.millennial.MYAPIDINTERSTITIAL");
        return arraylist;
    }

    protected List j()
    {
        ArrayList arraylist = new ArrayList();
        ActivityInfo activityinfo = new ActivityInfo();
        activityinfo.name = "com.millennialmedia.android.MMActivity";
        activityinfo.configChanges = 3248;
        arraylist.add(activityinfo);
        activityinfo = new ActivityInfo();
        activityinfo.name = "com.millennialmedia.android.VideoPlayer";
        activityinfo.configChanges = 3248;
        arraylist.add(activityinfo);
        return arraylist;
    }

    protected List k()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new cu("MMAdView", "5.0.1", "com.millennialmedia.android.MMAdView"));
        return arraylist;
    }

    protected List l()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add("com.flurry.millennial.MYAPID");
        arraylist.add("com.flurry.millennial.MYAPIDRECTANGLE");
        return arraylist;
    }

    protected List n()
    {
        return new ArrayList();
    }

    protected List o()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add("android.permission.INTERNET");
        arraylist.add("android.permission.WRITE_EXTERNAL_STORAGE");
        arraylist.add("android.permission.ACCESS_NETWORK_STATE");
        return arraylist;
    }
}
