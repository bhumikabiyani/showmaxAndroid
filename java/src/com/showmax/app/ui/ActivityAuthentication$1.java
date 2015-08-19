// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import fr.castorflex.android.smoothprogressbar.SmoothProgressBar;

// Referenced classes of package com.showmax.app.ui:
//            ActivityAuthentication

class this._cls0
    implements com.showmax.lib.api.ui.widget.stener
{

    final ActivityAuthentication this$0;

    public void onAuthSuccessful(String s, String s1, String s2, Boolean boolean1)
    {
        MauLog.v("[ActivityAuthentication]::[onAuthSuccessful]");
        ActivityAuthentication.access$102(ActivityAuthentication.this, s);
        ActivityAuthentication.access$202(ActivityAuthentication.this, s1);
        ActivityAuthentication.access$302(ActivityAuthentication.this, s2);
        ActivityAuthentication.access$402(ActivityAuthentication.this, boolean1);
        ActivityAuthentication.access$500(ActivityAuthentication.this);
    }

    public void onCloseButtonClicked()
    {
        MauLog.v("[ActivityAuthentication]::[onCloseButtonClicked]");
        setResult(166);
        finish();
    }

    public void onPageError(int i, String s, String s1)
    {
        setResult(75);
        finish();
    }

    public void onPageLoadingProgressChanged(int i)
    {
        if (i >= 0 && i < 100)
        {
            ActivityAuthentication.access$000(ActivityAuthentication.this).setVisibility(0);
            return;
        } else
        {
            ActivityAuthentication.access$000(ActivityAuthentication.this).setVisibility(4);
            return;
        }
    }

    thProgressBar()
    {
        this$0 = ActivityAuthentication.this;
        super();
    }
}
