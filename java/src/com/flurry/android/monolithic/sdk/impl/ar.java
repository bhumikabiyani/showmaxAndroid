// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.RelativeLayout;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            au, at, ay, av, 
//            az, aw

public final class ar extends RelativeLayout
    implements android.view.View.OnClickListener
{

    private final String a = getClass().getSimpleName();
    private WebView b;
    private WebViewClient c;
    private WebChromeClient d;
    private boolean e;
    private ImageView f;
    private ImageView g;
    private ImageView h;
    private final int i = 0;
    private final int j = 1;
    private final int k = 2;
    private az l;
    private av m;
    private aw n;
    private boolean o;

    public ar(Context context, String s)
    {
        super(context);
        b = new WebView(context);
        c = new au(this, null);
        d = new at(this, null);
        b.getSettings().setJavaScriptEnabled(true);
        b.getSettings().setUseWideViewPort(true);
        b.getSettings().setLoadWithOverviewMode(true);
        b.getSettings().setBuiltInZoomControls(true);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            b.getSettings().setDisplayZoomControls(false);
        }
        b.setWebViewClient(c);
        b.setWebChromeClient(d);
        b.loadUrl(s);
        f = new ImageView(context);
        f.setId(0);
        f.setImageDrawable(getResources().getDrawable(0x1080038));
        f.setOnClickListener(this);
        g = new ImageView(context);
        g.setId(1);
        g.setImageDrawable(getResources().getDrawable(0x108004c));
        g.setOnClickListener(this);
        h = new ImageView(context);
        h.setId(2);
        h.setImageDrawable(getResources().getDrawable(0x108003d));
        h.setOnClickListener(this);
        setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        addView(b);
        context = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        context.addRule(14);
        addView(f, context);
        context = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        context.addRule(9);
        addView(g, context);
        context = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        context.addRule(11);
        addView(h, context);
    }

    static String a(ar ar1)
    {
        return ar1.a;
    }

    static boolean a(ar ar1, boolean flag)
    {
        ar1.o = flag;
        return flag;
    }

    static WebView b(ar ar1)
    {
        return ar1.b;
    }

    static boolean b(ar ar1, boolean flag)
    {
        ar1.e = flag;
        return flag;
    }

    static az c(ar ar1)
    {
        return ar1.l;
    }

    static boolean d(ar ar1)
    {
        return ar1.o;
    }

    static aw e(ar ar1)
    {
        return ar1.n;
    }

    public boolean a()
    {
        return e || b != null && b.canGoBack();
    }

    public void b()
    {
        if (e)
        {
            d.onHideCustomView();
        } else
        if (b != null)
        {
            b.goBack();
            return;
        }
    }

    public void c()
    {
        if (b != null)
        {
            removeView(b);
            b.stopLoading();
            if (android.os.Build.VERSION.SDK_INT >= 11)
            {
                b.onPause();
            }
            b.destroy();
            b = null;
        }
    }

    public av getBasicWebViewClosingHandler()
    {
        return m;
    }

    public aw getBasicWebViewFullScreenTransitionHandler()
    {
        return n;
    }

    public az getBasicWebViewUrlLoadingHandler()
    {
        return l;
    }

    public String getUrl()
    {
        String s = null;
        if (b != null)
        {
            s = b.getUrl();
        }
        return s;
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 0 2: default 32
    //                   0 33
    //                   1 79
    //                   2 54;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L2:
        if (m != null)
        {
            m.a(this, ay.c);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if (b != null && b.canGoForward())
        {
            b.goForward();
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (b != null && b.canGoBack())
        {
            b.goBack();
            return;
        }
        if (m != null)
        {
            m.a(this, ay.b);
            return;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void setBasicWebViewClosingHandler(av av1)
    {
        m = av1;
    }

    public void setBasicWebViewFullScreenTransitionHandler(aw aw)
    {
        n = aw;
    }

    public void setBasicWebViewUrlLoadingHandler(az az)
    {
        l = az;
    }
}
