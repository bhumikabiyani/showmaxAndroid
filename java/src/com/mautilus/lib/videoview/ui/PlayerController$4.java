// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.mautilus.lib.videoview.ui:
//            PlayerController

class this._cls0 extends Handler
{

    final PlayerController this$0;

    public void handleMessage(Message message)
    {
        message.what;
        JVM INSTR tableswitch 1 2: default 28
    //                   1 28
    //                   2 29;
           goto _L1 _L1 _L2
_L1:
        return;
_L2:
        int i = PlayerController.access$400(PlayerController.this);
        if (!PlayerController.access$500(PlayerController.this) && PlayerController.access$600(PlayerController.this) != null && PlayerController.access$600(PlayerController.this).isPlaying())
        {
            sendMessageDelayed(obtainMessage(2), 1000 - i % 1000);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    diaPlayerControl()
    {
        this$0 = PlayerController.this;
        super();
    }
}
