// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.inmobi.androidsdk.IMAdListener;
import com.inmobi.androidsdk.IMAdView;
import java.util.Collections;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            dn, ja

class do
    implements IMAdListener
{

    final dn a;

    do(dn dn1)
    {
        a = dn1;
        super();
    }

    public void onAdRequestCompleted(IMAdView imadview)
    {
        a.onAdShown(Collections.emptyMap());
        ja.a(3, dn.a(), "InMobi imAdView ad request completed.");
    }

    public void onAdRequestFailed(IMAdView imadview, com.inmobi.androidsdk.IMAdRequest.ErrorCode errorcode)
    {
        a.onRenderFailed(Collections.emptyMap());
        ja.a(3, dn.a(), (new StringBuilder()).append("InMobi imAdView ad request failed. ").append(errorcode.toString()).toString());
    }

    public void onDismissAdScreen(IMAdView imadview)
    {
        a.onAdClosed(Collections.emptyMap());
        ja.a(3, dn.a(), "InMobi imAdView dismiss ad.");
    }

    public void onLeaveApplication(IMAdView imadview)
    {
        ja.a(3, dn.a(), "InMobi onLeaveApplication");
    }

    public void onShowAdScreen(IMAdView imadview)
    {
        a.onAdClicked(Collections.emptyMap());
        ja.a(3, dn.a(), "InMobi imAdView ad shown.");
    }
}
