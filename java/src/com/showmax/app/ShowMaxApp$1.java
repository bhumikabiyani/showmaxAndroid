// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app;

import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import com.showmax.app.util.analytics.MauAnalytics;

// Referenced classes of package com.showmax.app:
//            ShowMaxApp

class this._cls0
    implements ComponentCallbacks2
{

    final ShowMaxApp this$0;

    public void onConfigurationChanged(Configuration configuration)
    {
    }

    public void onLowMemory()
    {
    }

    public void onTrimMemory(int i)
    {
        if (i == 20)
        {
            MauAnalytics.getInstance().onAppClose(null);
        }
    }

    tion()
    {
        this$0 = ShowMaxApp.this;
        super();
    }
}
