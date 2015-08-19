// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.mobclix.android.sdk.MobclixAdView;
import com.mobclix.android.sdk.MobclixAdViewListener;
import java.util.Collections;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ec, ja

class ed
    implements MobclixAdViewListener
{

    final ec a;

    ed(ec ec1)
    {
        a = ec1;
        super();
    }

    public String keywords()
    {
        ja.a(3, ec.a(), "Mobclix keyword callback.");
        return null;
    }

    public void onAdClick(MobclixAdView mobclixadview)
    {
        a.onAdClicked(Collections.emptyMap());
        ja.a(3, ec.a(), "Mobclix AdView ad clicked.");
    }

    public void onCustomAdTouchThrough(MobclixAdView mobclixadview, String s)
    {
        a.onAdClicked(Collections.emptyMap());
        ja.a(3, ec.a(), "Mobclix AdView custom ad clicked.");
    }

    public void onFailedLoad(MobclixAdView mobclixadview, int i)
    {
        a.onRenderFailed(Collections.emptyMap());
        ja.a(3, ec.a(), "Mobclix AdView ad failed to load.");
    }

    public boolean onOpenAllocationLoad(MobclixAdView mobclixadview, int i)
    {
        ja.a(3, ec.a(), "Mobclix AdView loaded an open allocation ad.");
        return true;
    }

    public void onSuccessfulLoad(MobclixAdView mobclixadview)
    {
        a.onAdShown(Collections.emptyMap());
        ja.a(3, ec.a(), "Mobclix AdView ad successfully loaded.");
    }

    public String query()
    {
        ja.a(3, ec.a(), "Mobclix query callback.");
        return null;
    }
}
