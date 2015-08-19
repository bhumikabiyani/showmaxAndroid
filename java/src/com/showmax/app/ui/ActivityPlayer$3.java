// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import com.mautilus.lib.common.util.MauLog;
import com.mautilus.lib.videoview.ui.VideoView;
import com.showmax.app.util.MauBug;

// Referenced classes of package com.showmax.app.ui:
//            ActivityPlayer

class this._cls0
    implements com.mautilus.lib.videoview.util.agerListener
{

    final ActivityPlayer this$0;

    public void onDrmError(String s)
    {
        MauLog.v("[APlayer]::[DrmManagerListener]::[onDrmError]::[%s]", new Object[] {
            s
        });
        if (ActivityPlayer.access$1700(ActivityPlayer.this) != null)
        {
            ActivityPlayer.access$1700(ActivityPlayer.this).onDrmError(s);
        }
    }

    public void onInitFinished(boolean flag, int i)
    {
        MauLog.v("[APlayer]::[mDrmManagerListener]::[onInitFinished]::[success %b]", new Object[] {
            Boolean.valueOf(flag)
        });
        if (flag)
        {
            ActivityPlayer.access$200(ActivityPlayer.this).setDrmManagerAsset(ActivityPlayer.access$1200(ActivityPlayer.this));
            ActivityPlayer.access$200(ActivityPlayer.this).setDrmEnabled(true);
            ActivityPlayer.access$1100(ActivityPlayer.this);
            return;
        } else
        {
            MauBug.getInstance().sendDrmError(String.valueOf(i));
            ActivityPlayer.access$200(ActivityPlayer.this).showMessage(0x7f0d00b0);
            ActivityPlayer.access$1600(ActivityPlayer.this);
            return;
        }
    }

    iew()
    {
        this$0 = ActivityPlayer.this;
        super();
    }
}
