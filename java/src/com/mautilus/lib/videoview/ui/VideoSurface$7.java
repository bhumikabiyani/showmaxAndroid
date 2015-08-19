// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;

import android.view.SurfaceHolder;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.mautilus.lib.videoview.ui:
//            VideoSurface, PlayerController

class this._cls0
    implements android.view.allback
{

    final VideoSurface this$0;

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
        VideoSurface.access$1002(VideoSurface.this, j);
        VideoSurface.access$1102(VideoSurface.this, k);
        MauLog.v("[VideoSurface]::[mSHCallback]::[surfaceChanged]::[mSurfaceWidth %d]::[mSurfaceHeight %d]", new Object[] {
            Integer.valueOf(VideoSurface.access$1000(VideoSurface.this)), Integer.valueOf(VideoSurface.access$1100(VideoSurface.this))
        });
        if (VideoSurface.access$1200(VideoSurface.this) == 3)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (VideoSurface.access$500(VideoSurface.this) == j && VideoSurface.access$600(VideoSurface.this) == k)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        if (VideoSurface.access$000(VideoSurface.this) != null && i != 0 && j != 0)
        {
            if (VideoSurface.access$900(VideoSurface.this) != 0)
            {
                seekTo(VideoSurface.access$900(VideoSurface.this));
            }
            start();
        }
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        VideoSurface.access$1802(VideoSurface.this, surfaceholder);
        VideoSurface.access$1900(VideoSurface.this);
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        VideoSurface.access$1802(VideoSurface.this, null);
        if (VideoSurface.access$1300(VideoSurface.this) != null)
        {
            VideoSurface.access$1300(VideoSurface.this).hide();
        }
        VideoSurface.access$2000(VideoSurface.this, true);
    }

    r()
    {
        this$0 = VideoSurface.this;
        super();
    }
}
