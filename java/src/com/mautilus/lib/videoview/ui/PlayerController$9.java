// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.view.View;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.mautilus.lib.videoview.ui:
//            PlayerController

class this._cls0
    implements android.view.r
{

    final PlayerController this$0;

    public void onClick(View view)
    {
        MauLog.v("[PlayerController]::[onClick]::[mMovieDetailShown: %b]", new Object[] {
            Boolean.valueOf(PlayerController.access$100(PlayerController.this))
        });
        if (!PlayerController.access$100(PlayerController.this))
        {
            toggleControls();
        }
    }

    ()
    {
        this$0 = PlayerController.this;
        super();
    }
}
