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
//            cy, ec, ee, cu, 
//            m, ac, cn

public final class eb extends cy
{

    public eb()
    {
    }

    protected ac a(Context context, FlurryAdModule flurryadmodule, m m, AdCreative adcreative, Bundle bundle)
    {
        if (context == null || flurryadmodule == null || m == null || adcreative == null || bundle == null)
        {
            return null;
        } else
        {
            return new ec(context, flurryadmodule, m, adcreative, bundle);
        }
    }

    protected cn a(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit, Bundle bundle)
    {
        if (context == null || flurryadmodule == null || m == null || adunit == null || bundle == null)
        {
            return null;
        } else
        {
            return new ee(context, flurryadmodule, m, adunit, bundle);
        }
    }

    protected String f()
    {
        return "Mobclix";
    }

    protected List g()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new cu("mobclix", "3.2.1", "com.mobclix.android.sdk.MobclixFullScreenAdView"));
        return arraylist;
    }

    protected List j()
    {
        ArrayList arraylist = new ArrayList();
        ActivityInfo activityinfo = new ActivityInfo();
        activityinfo.name = "com.mobclix.android.sdk.MobclixBrowserActivity";
        arraylist.add(activityinfo);
        return arraylist;
    }

    protected List k()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new cu("mobclix", "3.2.1", "com.mobclix.android.sdk.MobclixAdView"));
        return arraylist;
    }

    protected List n()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add("com.mobclix.APPLICATION_ID");
        return arraylist;
    }

    protected List o()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add("android.permission.INTERNET");
        arraylist.add("android.permission.READ_PHONE_STATE");
        return arraylist;
    }
}
