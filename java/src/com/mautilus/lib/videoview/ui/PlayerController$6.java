// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.os.Handler;
import android.widget.SeekBar;
import android.widget.TextView;

// Referenced classes of package com.mautilus.lib.videoview.ui:
//            PlayerController

class this._cls0
    implements android.widget.angeListener
{

    final PlayerController this$0;

    public void onProgressChanged(SeekBar seekbar, int i, boolean flag)
    {
        if (flag && PlayerController.access$600(PlayerController.this) != null)
        {
            long l = PlayerController.access$600(PlayerController.this).getDuration();
            l = ((long)i * l) / 1000L;
            PlayerController.access$600(PlayerController.this).seekTo((int)l);
            if (PlayerController.access$1100(PlayerController.this) != null)
            {
                PlayerController.access$1100(PlayerController.this).setText(PlayerController.access$1200(PlayerController.this, (int)l));
                return;
            }
        }
    }

    public void onStartTrackingTouch(SeekBar seekbar)
    {
        if (PlayerController.access$600(PlayerController.this) == null)
        {
            return;
        }
        if (PlayerController.access$900(PlayerController.this) != null)
        {
            PlayerController.access$900(PlayerController.this).onStartSeek(PlayerController.access$600(PlayerController.this).getCurrentPosition());
        }
        show();
        PlayerController.access$502(PlayerController.this, true);
        PlayerController.access$1000(PlayerController.this).removeMessages(2);
    }

    public void onStopTrackingTouch(SeekBar seekbar)
    {
        if (PlayerController.access$600(PlayerController.this) == null)
        {
            return;
        }
        if (PlayerController.access$900(PlayerController.this) != null)
        {
            PlayerController.access$900(PlayerController.this).onStopSeek(PlayerController.access$600(PlayerController.this).getCurrentPosition());
        }
        PlayerController.access$502(PlayerController.this, false);
        int _tmp = PlayerController.access$400(PlayerController.this);
        PlayerController.access$1300(PlayerController.this);
        show();
        PlayerController.access$1000(PlayerController.this).sendEmptyMessage(2);
    }

    SeekListener()
    {
        this$0 = PlayerController.this;
        super();
    }
}
