// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.afollestad.materialdialogs.internal;

import android.view.ViewGroup;
import android.webkit.WebView;

// Referenced classes of package com.afollestad.materialdialogs.internal:
//            MDRootLayout, MDButton

class val.setForBottom
    implements android.view.r.OnScrollChangedListener
{

    final MDRootLayout this$0;
    final boolean val$setForBottom;
    final boolean val$setForTop;
    final ViewGroup val$vg;

    public void onScrollChanged()
    {
        boolean flag1 = false;
        MDButton amdbutton[] = MDRootLayout.access$400(MDRootLayout.this);
        int j = amdbutton.length;
        int i = 0;
        do
        {
label0:
            {
                boolean flag = flag1;
                if (i < j)
                {
                    MDButton mdbutton = amdbutton[i];
                    if (mdbutton == null || mdbutton.getVisibility() == 8)
                    {
                        break label0;
                    }
                    flag = true;
                }
                if (val$vg instanceof WebView)
                {
                    MDRootLayout.access$500(MDRootLayout.this, (WebView)val$vg, val$setForTop, val$setForBottom, flag);
                } else
                {
                    MDRootLayout.access$600(MDRootLayout.this, val$vg, val$setForTop, val$setForBottom, flag);
                }
                invalidate();
                return;
            }
            i++;
        } while (true);
    }

    ()
    {
        this$0 = final_mdrootlayout;
        val$vg = viewgroup;
        val$setForTop = flag;
        val$setForBottom = Z.this;
        super();
    }
}
