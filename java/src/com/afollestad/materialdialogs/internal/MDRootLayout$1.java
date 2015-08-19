// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs.internal;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.WebView;

// Referenced classes of package com.afollestad.materialdialogs.internal:
//            MDRootLayout

class val.setForBottom
    implements android.view.r.OnPreDrawListener
{

    final MDRootLayout this$0;
    final boolean val$setForBottom;
    final boolean val$setForTop;
    final View val$view;

    public boolean onPreDraw()
    {
        if (val$view.getMeasuredHeight() != 0)
        {
            if (!MDRootLayout.access$000((WebView)val$view))
            {
                if (val$setForTop)
                {
                    MDRootLayout.access$102(MDRootLayout.this, false);
                }
                if (val$setForBottom)
                {
                    MDRootLayout.access$202(MDRootLayout.this, false);
                }
            } else
            {
                MDRootLayout.access$300(MDRootLayout.this, (ViewGroup)val$view, val$setForTop, val$setForBottom);
            }
            val$view.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        return true;
    }

    ()
    {
        this$0 = final_mdrootlayout;
        val$view = view1;
        val$setForTop = flag;
        val$setForBottom = Z.this;
        super();
    }
}
