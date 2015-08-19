// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui.widget;

import android.view.View;

// Referenced classes of package com.showmax.app.ui.widget:
//            RefreshProgressBar

class this._cls0
    implements android.view.rogressBar._cls1
{

    final RefreshProgressBar this$0;

    public void onClick(View view)
    {
        if (RefreshProgressBar.access$000(RefreshProgressBar.this) != null)
        {
            RefreshProgressBar.access$000(RefreshProgressBar.this).onRefreshClick();
        }
    }

    freshProgressBarListener()
    {
        this$0 = RefreshProgressBar.this;
        super();
    }
}
