// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import com.flurry.android.impl.ads.FlurryAdModule;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            o, ja, j, x, 
//            y, z, p

final class w extends WebChromeClient
{

    final o a;

    private w(o o1)
    {
        a = o1;
        super();
    }

    w(o o1, p p)
    {
        this(o1);
    }

    public void onHideCustomView()
    {
        ja.a(3, o.a(a), "onHideCustomView()");
        if (!(a.getContext() instanceof Activity))
        {
            ja.a(3, o.a(a), "no activity present");
        } else
        {
            Activity activity = (Activity)a.getContext();
            if (o.n(a) != null)
            {
                if (o.r(a) != null)
                {
                    o.r(a).show();
                }
                ((ViewGroup)activity.getWindow().getDecorView()).removeView(o.p(a));
                o.p(a).removeView(o.n(a));
                if (o.q(a) != null && o.q(a).isShowing())
                {
                    o.q(a).hide();
                    o.q(a).setOnDismissListener(null);
                    o.q(a).dismiss();
                }
                o.a(a, null);
                j.a(activity, o.s(a));
                o.t(a).onCustomViewHidden();
                o.a(a, null);
                o.a(a, null);
                o.a(a, null);
                a.b.b(activity, a.d.b().toString());
                return;
            }
        }
    }

    public void onShowCustomView(View view, int i, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        ja.a(3, o.a(a), "onShowCustomView(14)");
        if (!(a.getContext() instanceof Activity))
        {
            ja.a(3, o.a(a), "no activity present");
            return;
        }
        Activity activity = (Activity)a.getContext();
        if (o.n(a) != null && o.o(a) != null)
        {
            o.o(a).onHideCustomView();
            return;
        }
        o.a(a, view);
        o.a(a, activity.getRequestedOrientation());
        o.a(a, customviewcallback);
        o.a(a, new FrameLayout(activity));
        o.p(a).setBackgroundColor(0xff000000);
        o.p(a).addView(o.n(a), new android.widget.FrameLayout.LayoutParams(-1, -1, 17));
        ((ViewGroup)activity.getWindow().getDecorView()).addView(o.p(a), -1, -1);
        if (o.q(a) == null)
        {
            o.a(a, new x(this, activity, 0x1030011, activity));
            o.q(a).getWindow().setType(1000);
            o.q(a).setOnShowListener(new y(this));
            o.q(a).setOnDismissListener(new z(this));
            o.q(a).setCancelable(true);
            o.q(a).show();
        }
        j.a(activity, i, true);
        a.b.a(activity, a.d.b().toString());
    }

    public void onShowCustomView(View view, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        ja.a(3, o.a(a), "onShowCustomView(7)");
        if (!(a.getContext() instanceof Activity))
        {
            ja.a(3, o.a(a), "no activity present");
            return;
        } else
        {
            onShowCustomView(view, ((Activity)a.getContext()).getRequestedOrientation(), customviewcallback);
            return;
        }
    }
}
