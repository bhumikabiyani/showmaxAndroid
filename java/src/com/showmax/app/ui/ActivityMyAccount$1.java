// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import fr.castorflex.android.smoothprogressbar.SmoothProgressBar;

// Referenced classes of package com.showmax.app.ui:
//            ActivityMyAccount

class this._cls0
    implements com.showmax.lib.api.ui.widget.ccountWebViewListener
{

    final ActivityMyAccount this$0;

    public void onCloseButtonClicked()
    {
        setResult(203);
        finish();
    }

    public void onPageError(int i, String s, String s1)
    {
        setResult(202);
        finish();
    }

    public void onPageLoadingProgressChanged(int i)
    {
        if (i >= 0 && i < 100)
        {
            ActivityMyAccount.access$000(ActivityMyAccount.this).setVisibility(0);
            return;
        } else
        {
            ActivityMyAccount.access$000(ActivityMyAccount.this).setVisibility(4);
            return;
        }
    }

    .SmoothProgressBar()
    {
        this$0 = ActivityMyAccount.this;
        super();
    }
}
