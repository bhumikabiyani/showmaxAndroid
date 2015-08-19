// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.media.MediaPlayer;
import android.view.SurfaceHolder;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.mautilus.lib.videoview.ui:
//            VideoSurface, PlayerController

class this._cls0
    implements android.media.reparedListener
{

    final VideoSurface this$0;

    public void onPrepared(MediaPlayer mediaplayer)
    {
        int i;
        MauLog.v("[VideoSurface]::[mPreparedListener]::[onPrepared]");
        VideoSurface.access$702(VideoSurface.this, 2);
        if (VideoSurface.access$800(VideoSurface.this) != null)
        {
            VideoSurface.access$800(VideoSurface.this).onPrepared(VideoSurface.access$000(VideoSurface.this));
        }
        VideoSurface.access$502(VideoSurface.this, mediaplayer.getVideoWidth());
        VideoSurface.access$602(VideoSurface.this, mediaplayer.getVideoHeight());
        MauLog.v("[VideoSurface]::[mPreparedListener]::[onPrepared]::[mVideoWidth %d]::[mVideoHeight %d]", new Object[] {
            Integer.valueOf(VideoSurface.access$500(VideoSurface.this)), Integer.valueOf(VideoSurface.access$600(VideoSurface.this))
        });
        i = VideoSurface.access$900(VideoSurface.this);
        if (i != 0)
        {
            seekTo(i);
        }
        if (VideoSurface.access$500(VideoSurface.this) == 0 || VideoSurface.access$600(VideoSurface.this) == 0) goto _L2; else goto _L1
_L1:
        getHolder().setFixedSize(VideoSurface.access$500(VideoSurface.this), VideoSurface.access$600(VideoSurface.this));
        if (VideoSurface.access$1000(VideoSurface.this) != VideoSurface.access$500(VideoSurface.this) || VideoSurface.access$1100(VideoSurface.this) != VideoSurface.access$600(VideoSurface.this)) goto _L4; else goto _L3
_L3:
        if (VideoSurface.access$1200(VideoSurface.this) != 3) goto _L6; else goto _L5
_L5:
        start();
        if (VideoSurface.access$1300(VideoSurface.this) != null)
        {
            VideoSurface.access$1300(VideoSurface.this).show();
        }
_L4:
        return;
_L6:
        if (!isPlaying() && (i != 0 || getCurrentPosition() > 0) && VideoSurface.access$1300(VideoSurface.this) != null)
        {
            VideoSurface.access$1300(VideoSurface.this).show();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (VideoSurface.access$1200(VideoSurface.this) == 3)
        {
            start();
            return;
        }
        if (true) goto _L4; else goto _L7
_L7:
    }

    r()
    {
        this$0 = VideoSurface.this;
        super();
    }
}
