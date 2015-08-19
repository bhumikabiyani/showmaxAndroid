// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.View;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.mautilus.lib.videoview.ui:
//            PlayerController

class this._cls0
    implements android.view.
{

    final PlayerController this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        boolean flag;
label0:
        {
            flag = true;
            MauLog.v("[PlayerController]::[mDelayHideTouchListener]::[onTouch]::[%s]::[%s]", new Object[] {
                view.getClass().getSimpleName(), view.getResources().getResourceName(view.getId())
            });
            if (PlayerController.access$2000(PlayerController.this))
            {
                MauLog.v("[PlayerController]::[mDelayHideTouchListener]::[onTouch]::[delayedHide]");
                if (PlayerController.access$600(PlayerController.this) != null)
                {
                    break label0;
                }
            }
            return false;
        }
        if (view.getId() != PlayerController.access$2300(PlayerController.this) || PlayerController.access$600(PlayerController.this) == null || !PlayerController.access$600(PlayerController.this).isPlaying())
        {
            flag = false;
        }
        if (flag)
        {
            PlayerController.access$2400(PlayerController.this);
            return false;
        } else
        {
            PlayerController.access$2200(PlayerController.this, PlayerController.access$2100(PlayerController.this));
            return false;
        }
    }

    iaPlayerControl()
    {
        this$0 = PlayerController.this;
        super();
    }
}
