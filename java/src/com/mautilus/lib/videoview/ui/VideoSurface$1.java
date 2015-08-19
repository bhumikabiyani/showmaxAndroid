// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.media.MediaPlayer;
import android.os.Handler;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.mautilus.lib.videoview.ui:
//            VideoSurface

class this._cls0
    implements Runnable
{

    final VideoSurface this$0;

    public void run()
    {
        if (VideoSurface.access$000(VideoSurface.this) == null) goto _L2; else goto _L1
_L1:
        int i = VideoSurface.access$000(VideoSurface.this).getCurrentPosition();
        if (VideoSurface.access$100(VideoSurface.this) || Math.abs(i - VideoSurface.access$200(VideoSurface.this)) <= 750) goto _L4; else goto _L3
_L3:
        VideoSurface.access$300(VideoSurface.this, true);
_L6:
        VideoSurface.access$202(VideoSurface.this, i);
_L7:
        VideoSurface.access$400(VideoSurface.this).postDelayed(this, 1000L);
_L2:
        return;
_L4:
        if (!VideoSurface.access$000(VideoSurface.this).isPlaying() || Math.abs(i - VideoSurface.access$200(VideoSurface.this)) >= 500) goto _L6; else goto _L5
_L5:
        VideoSurface.access$300(VideoSurface.this, false);
          goto _L6
        Exception exception;
        exception;
        MauLog.e("[VideoSurface]::[checker]::[IllegalStateException]::[%s]", new Object[] {
            exception.getMessage()
        });
          goto _L7
    }

    ()
    {
        this$0 = VideoSurface.this;
        super();
    }
}
