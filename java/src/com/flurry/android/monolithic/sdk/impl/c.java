// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import com.flurry.android.FlurryFullscreenTakeoverActivity;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aw, ax, a, ar

public final class c
    implements aw
{

    final FlurryFullscreenTakeoverActivity a;
    private View b;
    private int c;
    private ax d;
    private FrameLayout e;

    private c(FlurryFullscreenTakeoverActivity flurryfullscreentakeoveractivity)
    {
        a = flurryfullscreentakeoveractivity;
        super();
    }

    public c(FlurryFullscreenTakeoverActivity flurryfullscreentakeoveractivity, a a1)
    {
        this(flurryfullscreentakeoveractivity);
    }

    public void a(ar ar)
    {
        if (b == null)
        {
            return;
        }
        ((ViewGroup)a.getWindow().getDecorView()).removeView(e);
        e.removeView(b);
        if (d != null)
        {
            d.a();
        }
        a.setRequestedOrientation(c);
        d = null;
        e = null;
        b = null;
    }

    public void a(ar ar, View view, int i, ax ax1)
    {
        if (b != null)
        {
            a(ar);
        }
        b = view;
        c = a.getRequestedOrientation();
        d = ax1;
        e = new FrameLayout(a);
        e.setBackgroundColor(0xff000000);
        e.addView(b, new android.widget.FrameLayout.LayoutParams(-1, -1, 17));
        ((ViewGroup)a.getWindow().getDecorView()).addView(e, -1, -1);
        a.setRequestedOrientation(i);
    }

    public void a(ar ar, View view, ax ax1)
    {
        a(ar, view, a.getRequestedOrientation(), ax1);
    }
}
