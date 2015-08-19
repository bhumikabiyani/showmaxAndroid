// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.widget.CompoundButton;
import android.widget.SeekBar;

// Referenced classes of package com.mautilus.lib.videoview.ui:
//            PlayerController

class mTempVolumeProgress
    implements android.widget.eckedChangeListener
{

    private boolean mMuted;
    private int mTempVolumeProgress;
    final PlayerController this$0;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        if (PlayerController.access$1400(PlayerController.this) != null)
        {
            if (!mMuted)
            {
                mTempVolumeProgress = PlayerController.access$1500(PlayerController.this);
                mMuted = true;
                PlayerController.access$1700(PlayerController.this, true);
                if (PlayerController.access$1400(PlayerController.this) != null)
                {
                    PlayerController.access$1400(PlayerController.this).setProgress(0);
                }
                PlayerController.access$1400(PlayerController.this).setEnabled(false);
            } else
            {
                mMuted = false;
                PlayerController.access$1700(PlayerController.this, false);
                PlayerController.access$1400(PlayerController.this).setEnabled(true);
                if (PlayerController.access$1400(PlayerController.this) != null)
                {
                    PlayerController.access$1400(PlayerController.this).setProgress(PlayerController.access$1500(PlayerController.this));
                    return;
                }
            }
        }
    }

    ener()
    {
        this$0 = PlayerController.this;
        super();
        mMuted = false;
        mTempVolumeProgress = 0;
    }
}
