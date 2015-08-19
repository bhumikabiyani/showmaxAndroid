// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.media.MediaPlayer;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.mautilus.lib.videoview.ui:
//            VideoSurface, PlayerController

class this._cls0
    implements android.media.ompletionListener
{

    final VideoSurface this$0;

    public void onCompletion(MediaPlayer mediaplayer)
    {
        MauLog.v("[VideoSurface]::[mCompletionListener]::[onCompletion]");
        VideoSurface.access$702(VideoSurface.this, 5);
        VideoSurface.access$1202(VideoSurface.this, 5);
        if (VideoSurface.access$1300(VideoSurface.this) != null)
        {
            VideoSurface.access$1300(VideoSurface.this).hide();
        }
        if (VideoSurface.access$1400(VideoSurface.this) != null)
        {
            VideoSurface.access$1400(VideoSurface.this).onCompletion(VideoSurface.access$000(VideoSurface.this));
        }
    }

    r()
    {
        this$0 = VideoSurface.this;
        super();
    }
}
