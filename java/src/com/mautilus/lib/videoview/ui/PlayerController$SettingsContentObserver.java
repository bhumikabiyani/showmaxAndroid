// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.widget.SeekBar;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.mautilus.lib.videoview.ui:
//            PlayerController

public class this._cls0 extends ContentObserver
{

    final PlayerController this$0;

    public boolean deliverSelfNotifications()
    {
        return super.deliverSelfNotifications();
    }

    public void onChange(boolean flag)
    {
        MauLog.v("[PlayerController]::[SettingsContentObserver]::[onChange]");
        if (PlayerController.access$1400(PlayerController.this) != null)
        {
            PlayerController.access$1400(PlayerController.this).setProgress(PlayerController.access$1500(PlayerController.this));
        }
    }

    public (Context context, Handler handler)
    {
        this$0 = PlayerController.this;
        super(handler);
    }
}
