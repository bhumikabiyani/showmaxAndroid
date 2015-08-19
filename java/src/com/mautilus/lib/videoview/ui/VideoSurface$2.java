// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.media.MediaPlayer;
import android.view.SurfaceHolder;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.mautilus.lib.videoview.ui:
//            VideoSurface

class this._cls0
    implements android.media.ideoSizeChangedListener
{

    final VideoSurface this$0;

    public void onVideoSizeChanged(MediaPlayer mediaplayer, int i, int j)
    {
        VideoSurface.access$502(VideoSurface.this, mediaplayer.getVideoWidth());
        VideoSurface.access$602(VideoSurface.this, mediaplayer.getVideoHeight());
        MauLog.v("[VideoSurface]::[mSizeChangedListener]::[onVideoSizeChanged]::[mVideoWidth %d]::[mVideoHeight %d]", new Object[] {
            Integer.valueOf(VideoSurface.access$500(VideoSurface.this)), Integer.valueOf(VideoSurface.access$600(VideoSurface.this))
        });
        if (VideoSurface.access$500(VideoSurface.this) != 0 && VideoSurface.access$600(VideoSurface.this) != 0)
        {
            getHolder().setFixedSize(VideoSurface.access$500(VideoSurface.this), VideoSurface.access$600(VideoSurface.this));
            requestLayout();
        }
    }

    istener()
    {
        this$0 = VideoSurface.this;
        super();
    }
}
