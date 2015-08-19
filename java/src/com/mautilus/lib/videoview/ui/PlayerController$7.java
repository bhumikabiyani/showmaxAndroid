// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.widget.SeekBar;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.mautilus.lib.videoview.ui:
//            PlayerController

class this._cls0
    implements android.widget.angeListener
{

    final PlayerController this$0;

    public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
    {
        MauLog.v("[PlayerController]::[mVolumeSeekListener]::onProgressChanged]::[%d]::[fromUser: %b]", new Object[] {
            Integer.valueOf(i), Boolean.valueOf(flag)
        });
        if (PlayerController.access$1400(PlayerController.this) != null && flag)
        {
            PlayerController.access$1600(PlayerController.this, i);
        }
    }

    public void onStartTrackingTouch(SeekBar seekbar)
    {
    }

    public void onStopTrackingTouch(SeekBar seekbar)
    {
    }

    ()
    {
        this$0 = PlayerController.this;
        super();
    }
}
