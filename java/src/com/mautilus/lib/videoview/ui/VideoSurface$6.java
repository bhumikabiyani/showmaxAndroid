// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.media.MediaPlayer;

// Referenced classes of package com.mautilus.lib.videoview.ui:
//            VideoSurface

class this._cls0
    implements android.media.ufferingUpdateListener
{

    final VideoSurface this$0;

    public void onBufferingUpdate(MediaPlayer mediaplayer, int i)
    {
        VideoSurface.access$1702(VideoSurface.this, i);
    }

    stener()
    {
        this$0 = VideoSurface.this;
        super();
    }
}
