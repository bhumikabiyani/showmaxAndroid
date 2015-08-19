// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.media.MediaPlayer;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.mautilus.lib.videoview.ui:
//            VideoView

class this._cls0
    implements android.media.OnErrorListener
{

    final VideoView this$0;

    public boolean onError(MediaPlayer mediaplayer, int i, int j)
    {
        String s;
        s = "UNKNOWN WHAT";
        mediaplayer = "UNKNOWN EXTRA";
        i;
        JVM INSTR lookupswitch 2: default 36
    //                   1: 131
    //                   100: 131;
           goto _L1 _L2 _L2
_L1:
        j;
        JVM INSTR lookupswitch 5: default 88
    //                   -1010: 162
    //                   -1007: 144
    //                   -1004: 138
    //                   -110: 156
    //                   200: 150;
           goto _L3 _L4 _L5 _L6 _L7 _L8
_L3:
        MauLog.e("[VideoView]::[onError]::[%d, %d]::[WHAT: %s]::[EXTRA: %s]", new Object[] {
            Integer.valueOf(i), Integer.valueOf(j), s, mediaplayer
        });
        VideoView.access$700(VideoView.this, i, j);
        return true;
_L2:
        s = "MEDIA_ERROR_UNKNOWN";
          goto _L1
_L6:
        mediaplayer = "MEDIA_ERROR_IO";
          goto _L3
_L5:
        mediaplayer = "MEDIA_ERROR_MALFORMED";
          goto _L3
_L8:
        mediaplayer = "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK";
          goto _L3
_L7:
        mediaplayer = "MEDIA_ERROR_TIMED_OUT";
          goto _L3
_L4:
        mediaplayer = "MEDIA_ERROR_UNSUPPORTED";
          goto _L3
    }

    ()
    {
        this$0 = VideoView.this;
        super();
    }
}
