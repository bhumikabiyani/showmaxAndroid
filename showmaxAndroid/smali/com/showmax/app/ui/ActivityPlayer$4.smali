.class Lcom/showmax/app/ui/ActivityPlayer$4;
.super Ljava/lang/Object;
.source "ActivityPlayer.java"

# interfaces
.implements Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityPlayer;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackClicked()V
    .locals 1

    .prologue
    .line 735
    const-string v0, "[APlayer]::[mVideoViewListener]::[onBackClicked]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityPlayer;->finish()V

    .line 738
    return-void
.end method

.method public onDrmError(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 840
    const-string v0, "[APlayer]::[onDrmError]::[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 842
    invoke-static {}, Lcom/showmax/app/util/MauBug;->getInstance()Lcom/showmax/app/util/MauBug;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/MauBug;->sendDrmError(Ljava/lang/String;)V

    .line 843
    return-void
.end method

.method public onDrmInitSuccessful(ZI)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "status"    # I

    .prologue
    .line 850
    const-string v0, "[APlayer]::[onDrmInitSuccessful]::[success %b]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    return-void
.end method

.method public onPauseClick()V
    .locals 4

    .prologue
    .line 814
    const-string v0, "[APlayer]::[onPauseClick]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-static {v0}, Lcom/showmax/app/util/MauFlurry;->onPlaybackPause(Landroid/content/Context;)V

    .line 817
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$500(Lcom/showmax/app/ui/ActivityPlayer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->getCurrentPosition()I

    move-result v1

    # setter for: Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I
    invoke-static {v0, v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$102(Lcom/showmax/app/ui/ActivityPlayer;I)I

    .line 820
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityPlayer;->access$500(Lcom/showmax/app/ui/ActivityPlayer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityPlayer;->access$100(Lcom/showmax/app/ui/ActivityPlayer;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/showmax/app/util/analytics/MauAnalytics;->onPlaybackPause(Ljava/lang/String;Ljava/lang/String;I)V

    .line 822
    :cond_0
    return-void
.end method

.method public onPlaybackError(ZII)V
    .locals 7
    .param p1, "retriesCountReached"    # Z
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 685
    const-string v4, "UNKNOWN WHAT"

    .line 686
    .local v4, "whatStr":Ljava/lang/String;
    const-string v5, "UNKNOWN EXTRA"

    .line 687
    .local v5, "extraStr":Ljava/lang/String;
    const v6, 0x7f0d00af

    .line 689
    .local v6, "errorMessageResId":I
    sparse-switch p2, :sswitch_data_0

    .line 697
    :goto_0
    sparse-switch p3, :sswitch_data_1

    .line 718
    :goto_1
    const-string v0, "[APlayer]::[onError]::[%d, %d]::[WHAT: %s]::[EXTRA: %s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 719
    invoke-static {}, Lcom/showmax/app/util/MauBug;->getInstance()Lcom/showmax/app/util/MauBug;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/showmax/app/util/MauBug;->sendPlaybackError(ZIILjava/lang/String;Ljava/lang/String;)V

    .line 721
    if-eqz p1, :cond_0

    .line 724
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/mautilus/lib/videoview/ui/VideoView;->showMessage(I)V

    .line 725
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # invokes: Lcom/showmax/app/ui/ActivityPlayer;->delayedFinish()V
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$1600(Lcom/showmax/app/ui/ActivityPlayer;)V

    .line 728
    :cond_0
    return-void

    .line 692
    :sswitch_0
    const-string v4, "MEDIA_ERROR_SERVER_DIED"

    .line 694
    :sswitch_1
    const-string v4, "MEDIA_ERROR_UNKNOWN"

    goto :goto_0

    .line 700
    :sswitch_2
    const-string v5, "MEDIA_ERROR_IO"

    .line 701
    const v6, 0x7f0d00ab

    .line 702
    goto :goto_1

    .line 704
    :sswitch_3
    const-string v5, "MEDIA_ERROR_MALFORMED"

    .line 705
    goto :goto_1

    .line 707
    :sswitch_4
    const-string v5, "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK"

    .line 708
    goto :goto_1

    .line 710
    :sswitch_5
    const-string v5, "MEDIA_ERROR_TIMED_OUT"

    .line 711
    const v6, 0x7f0d00ab

    .line 712
    goto :goto_1

    .line 714
    :sswitch_6
    const-string v5, "MEDIA_ERROR_UNSUPPORTED"

    goto :goto_1

    .line 689
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch

    .line 697
    :sswitch_data_1
    .sparse-switch
        -0x3f2 -> :sswitch_6
        -0x3ef -> :sswitch_3
        -0x3ec -> :sswitch_2
        -0x6e -> :sswitch_5
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPlaybackFinished()V
    .locals 1

    .prologue
    .line 645
    const-string v0, "[APlayer]::[mVideoViewListener]::[onPlaybackFinished]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # invokes: Lcom/showmax/app/ui/ActivityPlayer;->delayedFinish()V
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$1600(Lcom/showmax/app/ui/ActivityPlayer;)V

    .line 648
    return-void
.end method

.method public onPlaybackInfo(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    const/4 v3, 0x0

    .line 655
    const-string v0, "[APlayer]::[mVideoViewListener]::[onPlaybackInfo]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 660
    const/16 v0, 0x2bc

    if-ne p1, v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-static {v0}, Lcom/showmax/app/util/MauFlurry;->onPlaybackLongBuffering(Landroid/content/Context;)V

    .line 664
    :cond_0
    const/16 v0, 0x2bd

    if-ne p1, v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$500(Lcom/showmax/app/ui/ActivityPlayer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->getCurrentPosition()I

    move-result v1

    # setter for: Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I
    invoke-static {v0, v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$102(Lcom/showmax/app/ui/ActivityPlayer;I)I

    .line 669
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$500(Lcom/showmax/app/ui/ActivityPlayer;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityPlayer;->access$100(Lcom/showmax/app/ui/ActivityPlayer;)I

    move-result v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/showmax/app/util/analytics/MauAnalytics;->onPlaybackBufferUnderrun(Ljava/lang/String;Ljava/lang/String;I)V

    .line 672
    :cond_1
    const/16 v0, 0x2be

    if-ne p1, v0, :cond_2

    .line 674
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$500(Lcom/showmax/app/ui/ActivityPlayer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 676
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->getCurrentPosition()I

    move-result v1

    # setter for: Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I
    invoke-static {v0, v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$102(Lcom/showmax/app/ui/ActivityPlayer;I)I

    .line 677
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$500(Lcom/showmax/app/ui/ActivityPlayer;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityPlayer;->access$100(Lcom/showmax/app/ui/ActivityPlayer;)I

    move-result v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/showmax/app/util/analytics/MauAnalytics;->onPlaybackResumeUnderrun(Ljava/lang/String;Ljava/lang/String;I)V

    .line 680
    :cond_2
    return-void
.end method

.method public onPrepared()V
    .locals 4

    .prologue
    .line 828
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$500(Lcom/showmax/app/ui/ActivityPlayer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 830
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityPlayer;->access$500(Lcom/showmax/app/ui/ActivityPlayer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityPlayer;->access$100(Lcom/showmax/app/ui/ActivityPlayer;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/showmax/app/util/analytics/MauAnalytics;->onPlaybackStart(Ljava/lang/String;Ljava/lang/String;I)V

    .line 832
    :cond_0
    return-void
.end method

.method public onResumeClick()V
    .locals 4

    .prologue
    .line 799
    const-string v0, "[APlayer]::[onResumeClick]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-static {v0}, Lcom/showmax/app/util/MauFlurry;->onPlaybackResume(Landroid/content/Context;)V

    .line 802
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$500(Lcom/showmax/app/ui/ActivityPlayer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->getCurrentPosition()I

    move-result v1

    # setter for: Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I
    invoke-static {v0, v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$102(Lcom/showmax/app/ui/ActivityPlayer;I)I

    .line 805
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityPlayer;->access$500(Lcom/showmax/app/ui/ActivityPlayer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityPlayer;->access$100(Lcom/showmax/app/ui/ActivityPlayer;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/showmax/app/util/analytics/MauAnalytics;->onPlaybackResume(Ljava/lang/String;Ljava/lang/String;I)V

    .line 807
    :cond_0
    return-void
.end method

.method public onSeekEnd(J)V
    .locals 5
    .param p1, "currentPosition"    # J

    .prologue
    .line 782
    const-string v0, "[APlayer]::[onSeekEnd]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mSubtitlesHelper:Lcom/showmax/app/util/SubtitlesHelper;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$400(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/app/util/SubtitlesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/showmax/app/util/SubtitlesHelper;->syncAfterSeek(J)V

    .line 785
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mSubtitlesHelper:Lcom/showmax/app/util/SubtitlesHelper;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$400(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/app/util/SubtitlesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/app/util/SubtitlesHelper;->start()V

    .line 786
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-static {v0}, Lcom/showmax/app/util/MauFlurry;->onPlaybackSeek(Landroid/content/Context;)V

    .line 787
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$500(Lcom/showmax/app/ui/ActivityPlayer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->getCurrentPosition()I

    move-result v1

    # setter for: Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I
    invoke-static {v0, v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$102(Lcom/showmax/app/ui/ActivityPlayer;I)I

    .line 790
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityPlayer;->access$500(Lcom/showmax/app/ui/ActivityPlayer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityPlayer;->access$100(Lcom/showmax/app/ui/ActivityPlayer;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/showmax/app/util/analytics/MauAnalytics;->onPlaybackSeek(Ljava/lang/String;Ljava/lang/String;I)V

    .line 792
    :cond_0
    return-void
.end method

.method public onSeekStart(J)V
    .locals 1
    .param p1, "currentPosition"    # J

    .prologue
    .line 772
    const-string v0, "[APlayer]::[onSeekStart]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mSubtitlesHelper:Lcom/showmax/app/util/SubtitlesHelper;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$400(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/app/util/SubtitlesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/app/util/SubtitlesHelper;->stop()V

    .line 775
    return-void
.end method

.method public onSubtitlesSelectionClicked()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 745
    const-string v6, "[APlayer]::[mVideoViewListener]::[onSubtitlesSelectionClicked]"

    invoke-static {v6}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 747
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v6}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mautilus/lib/videoview/ui/VideoView;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 749
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # setter for: Lcom/showmax/app/ui/ActivityPlayer;->mClickedWhenPaused:Z
    invoke-static {v6, v5}, Lcom/showmax/app/ui/ActivityPlayer;->access$302(Lcom/showmax/app/ui/ActivityPlayer;Z)Z

    .line 750
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v6}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mautilus/lib/videoview/ui/VideoView;->pause()V

    .line 757
    :goto_0
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-static {v6}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    .line 758
    .local v0, "appLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;
    invoke-static {v6}, Lcom/showmax/app/ui/ActivityPlayer;->access$600(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/showmax/lib/api/utils/LanguageUtils;->getInstance()Lcom/showmax/lib/api/utils/LanguageUtils;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/showmax/lib/api/utils/LanguageUtils;->convert(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v3

    .line 759
    .local v3, "language":Lcom/showmax/lib/api/model/catalogue/Language;
    :goto_1
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoType:Lcom/showmax/lib/api/model/catalogue/Video$Type;
    invoke-static {v6}, Lcom/showmax/app/ui/ActivityPlayer;->access$700(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Video$Type;

    move-result-object v6

    sget-object v7, Lcom/showmax/lib/api/model/catalogue/Video$Type;->TRAILER:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-ne v6, v7, :cond_2

    .line 760
    .local v2, "isTrailer":Z
    :goto_2
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;
    invoke-static {v5}, Lcom/showmax/app/ui/ActivityPlayer;->access$800(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Asset;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/showmax/lib/api/model/catalogue/Asset;->getTrailerVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;

    move-result-object v4

    .line 762
    .local v4, "video":Lcom/showmax/lib/api/model/catalogue/Video;
    :goto_3
    invoke-virtual {v4}, Lcom/showmax/lib/api/model/catalogue/Video;->getAvailableSubtitles()Ljava/util/ArrayList;

    move-result-object v1

    .line 764
    .local v1, "availableSubtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    iget-object v5, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mSubtitlesHelper:Lcom/showmax/app/util/SubtitlesHelper;
    invoke-static {v6}, Lcom/showmax/app/ui/ActivityPlayer;->access$400(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/app/util/SubtitlesHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/showmax/app/util/SubtitlesHelper;->getCurrentSubtitles()Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/showmax/app/ui/ActivityPlayer;->showAudioTrackDialog(Ljava/util/ArrayList;Lcom/showmax/lib/api/model/catalogue/Language;)V

    .line 765
    return-void

    .line 754
    .end local v0    # "appLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .end local v1    # "availableSubtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    .end local v2    # "isTrailer":Z
    .end local v3    # "language":Lcom/showmax/lib/api/model/catalogue/Language;
    .end local v4    # "video":Lcom/showmax/lib/api/model/catalogue/Video;
    :cond_0
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # setter for: Lcom/showmax/app/ui/ActivityPlayer;->mClickedWhenPaused:Z
    invoke-static {v6, v2}, Lcom/showmax/app/ui/ActivityPlayer;->access$302(Lcom/showmax/app/ui/ActivityPlayer;Z)Z

    goto :goto_0

    .line 758
    .restart local v0    # "appLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    :cond_1
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;
    invoke-static {v6}, Lcom/showmax/app/ui/ActivityPlayer;->access$600(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v3

    goto :goto_1

    .restart local v3    # "language":Lcom/showmax/lib/api/model/catalogue/Language;
    :cond_2
    move v2, v5

    .line 759
    goto :goto_2

    .line 760
    .restart local v2    # "isTrailer":Z
    :cond_3
    iget-object v5, p0, Lcom/showmax/app/ui/ActivityPlayer$4;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;
    invoke-static {v5}, Lcom/showmax/app/ui/ActivityPlayer;->access$800(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Asset;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/showmax/lib/api/model/catalogue/Asset;->getMainVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;

    move-result-object v4

    goto :goto_3
.end method
