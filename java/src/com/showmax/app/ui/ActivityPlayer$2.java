// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import com.mautilus.lib.videoview.ui.VideoView;

// Referenced classes of package com.showmax.app.ui:
//            ActivityPlayer

class this._cls0
    implements com.showmax.app.ui.widget.w.ContentWarningListener
{

    final ActivityPlayer this$0;

    public void onCloseClick()
    {
        MauLog.d("[APlayer]::[mContentWarningListener]::[onCloseClick]");
        finish();
    }

    public void onEndShowing()
    {
        MauLog.d("[APlayer]::[mContentWarningListener]::[onEndShowing]");
        ActivityPlayer.access$200(ActivityPlayer.this).loadAndPlay(ActivityPlayer.access$100(ActivityPlayer.this));
    }

    public void onStartFetchingBg()
    {
        MauLog.d("[APlayer]::[mContentWarningListener]::[onStartFetchingBg]");
        ActivityPlayer.access$200(ActivityPlayer.this).showProgress();
    }

    public void onStartShowing(boolean flag)
    {
        MauLog.d("[APlayer]::[mContentWarningListener]::[onStartShowing]::[success: %b]", new Object[] {
            Boolean.valueOf(flag)
        });
        ActivityPlayer.access$200(ActivityPlayer.this).hideProgress();
    }

    public void onWatchClick()
    {
        MauLog.d("[APlayer]::[mContentWarningListener]::[onWatchClick]");
        ActivityPlayer.access$200(ActivityPlayer.this).loadAndPlay(ActivityPlayer.access$100(ActivityPlayer.this));
    }

    iew()
    {
        this$0 = ActivityPlayer.this;
        super();
    }
}
