// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.media.MediaPlayer;
import android.util.Log;

// Referenced classes of package com.mautilus.lib.videoview.ui:
//            VideoSurface, PlayerController

class this._cls0
    implements android.media.rrorListener
{

    final VideoSurface this$0;

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        Log.d(VideoSurface.access$1500(VideoSurface.this), (new StringBuilder()).append("Error: ").append(i).append(",").append(j).toString());
        VideoSurface.access$702(VideoSurface.this, -1);
        VideoSurface.access$1202(VideoSurface.this, -1);
        if (VideoSurface.access$1300(VideoSurface.this) != null)
        {
            VideoSurface.access$1300(VideoSurface.this).hide();
        }
        if (VideoSurface.access$1600(VideoSurface.this) != null)
        {
            if (!VideoSurface.access$1600(VideoSurface.this).onError(VideoSurface.access$000(VideoSurface.this), i, j));
        }
        return true;
    }

    r()
    {
        this$0 = VideoSurface.this;
        super();
    }
}
