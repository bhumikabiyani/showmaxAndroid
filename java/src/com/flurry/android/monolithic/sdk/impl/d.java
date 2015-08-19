// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.widget.VideoView;
import com.flurry.android.FlurryFullscreenTakeoverActivity;
import com.flurry.android.impl.ads.FlurryAdModule;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            az, ar, bi, e, 
//            a

public final class d
    implements az
{

    final FlurryFullscreenTakeoverActivity a;

    private d(FlurryFullscreenTakeoverActivity flurryfullscreentakeoveractivity)
    {
        a = flurryfullscreentakeoveractivity;
        super();
    }

    public d(FlurryFullscreenTakeoverActivity flurryfullscreentakeoveractivity, a a1)
    {
        this(flurryfullscreentakeoveractivity);
    }

    public boolean a(ar ar1, String s, boolean flag)
    {
        if (FlurryFullscreenTakeoverActivity.a(a, s))
        {
            FlurryFullscreenTakeoverActivity.a(a, new VideoView(a));
            FlurryFullscreenTakeoverActivity.a(a).setFocusable(true);
            FlurryFullscreenTakeoverActivity.a(a).setFocusableInTouchMode(true);
            FlurryFullscreenTakeoverActivity.a(a, flag);
            FlurryFullscreenTakeoverActivity.b(a, s);
        } else
        if (FlurryFullscreenTakeoverActivity.c(a, s))
        {
            boolean flag1 = flag;
            if (!flag)
            {
                flag1 = FlurryFullscreenTakeoverActivity.a(a, s, ar1.getUrl());
            }
            FlurryAdModule.getInstance().a().a(a, s, FlurryFullscreenTakeoverActivity.b(a));
            if (flag1)
            {
                ar1.post(new e(this, ar1));
                return true;
            }
        } else
        {
            return false;
        }
        return true;
    }
}
