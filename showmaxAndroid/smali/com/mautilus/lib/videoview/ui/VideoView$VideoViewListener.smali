.class public interface abstract Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;
.super Ljava/lang/Object;
.source "VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mautilus/lib/videoview/ui/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoViewListener"
.end annotation


# virtual methods
.method public abstract onBackClicked()V
.end method

.method public abstract onDrmError(Ljava/lang/String;)V
.end method

.method public abstract onDrmInitSuccessful(ZI)V
.end method

.method public abstract onPauseClick()V
.end method

.method public abstract onPlaybackError(ZII)V
.end method

.method public abstract onPlaybackFinished()V
.end method

.method public abstract onPlaybackInfo(II)V
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onResumeClick()V
.end method

.method public abstract onSeekEnd(J)V
.end method

.method public abstract onSeekStart(J)V
.end method

.method public abstract onSubtitlesSelectionClicked()V
.end method
