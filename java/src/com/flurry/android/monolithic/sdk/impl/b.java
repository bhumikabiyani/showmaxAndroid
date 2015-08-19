// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.FlurryFullscreenTakeoverActivity;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            av, a, ar, ay

public final class b
    implements av
{

    final FlurryFullscreenTakeoverActivity a;

    private b(FlurryFullscreenTakeoverActivity flurryfullscreentakeoveractivity)
    {
        a = flurryfullscreentakeoveractivity;
        super();
    }

    public b(FlurryFullscreenTakeoverActivity flurryfullscreentakeoveractivity, a a1)
    {
        this(flurryfullscreentakeoveractivity);
    }

    public void a(ar ar, ay ay)
    {
        FlurryFullscreenTakeoverActivity.a(a, ay);
        a.finish();
    }
}
