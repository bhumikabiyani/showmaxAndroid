// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.os.Bundle;
import com.flurry.android.AdCreative;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            cy, ds, du, cu, 
//            m, ac, cn

public final class dr extends cy
{

    public dr()
    {
    }

    protected ac a(Context context, FlurryAdModule flurryadmodule, m m, AdCreative adcreative, Bundle bundle)
    {
        if (context == null || flurryadmodule == null || m == null || adcreative == null || bundle == null)
        {
            return null;
        } else
        {
            return new ds(context, flurryadmodule, m, adcreative, bundle);
        }
    }

    protected cn a(Context context, FlurryAdModule flurryadmodule, m m, AdUnit adunit, Bundle bundle)
    {
        if (context == null || flurryadmodule == null || m == null || adunit == null || bundle == null)
        {
            return null;
        } else
        {
            return new du(context, flurryadmodule, m, adunit, bundle);
        }
    }

    protected String f()
    {
        return "Jumptap";
    }

    protected List g()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new cu("JtAdTag", "1.1.10.4", "com.jumptap.adtag.JtAdInterstitial"));
        return arraylist;
    }

    protected List j()
    {
        return new ArrayList();
    }

    protected List k()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new cu("JtAdTag", "1.1.10.4", "com.jumptap.adtag.JtAdView"));
        return arraylist;
    }

    protected List n()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add("com.flurry.jumptap.PUBLISHER_ID");
        return arraylist;
    }

    protected List o()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add("android.permission.INTERNET");
        arraylist.add("android.permission.READ_PHONE_STATE");
        arraylist.add("android.permission.ACCESS_NETWORK_STATE");
        return arraylist;
    }
}
