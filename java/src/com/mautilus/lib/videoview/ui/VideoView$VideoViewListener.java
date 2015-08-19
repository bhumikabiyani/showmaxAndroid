// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mautilus.lib.videoview.ui;


// Referenced classes of package com.mautilus.lib.videoview.ui:
//            VideoView

public static interface 
{

    public abstract void onBackClicked();

    public abstract void onDrmError(String s);

    public abstract void onDrmInitSuccessful(boolean flag, int i);

    public abstract void onPauseClick();

    public abstract void onPlaybackError(boolean flag, int i, int j);

    public abstract void onPlaybackFinished();

    public abstract void onPlaybackInfo(int i, int j);

    public abstract void onPrepared();

    public abstract void onResumeClick();

    public abstract void onSeekEnd(long l);

    public abstract void onSeekStart(long l);

    public abstract void onSubtitlesSelectionClicked();
}
