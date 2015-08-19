// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.view.View;

// Referenced classes of package com.mautilus.lib.videoview.ui:
//            PlayerController

class this._cls0
    implements android.view.r
{

    final PlayerController this$0;

    public void onClick(View view)
    {
        if (PlayerController.access$300(PlayerController.this) != null)
        {
            PlayerController.access$300(PlayerController.this).onBackClick();
        }
    }

    BackClickListener()
    {
        this$0 = PlayerController.this;
        super();
    }
}
