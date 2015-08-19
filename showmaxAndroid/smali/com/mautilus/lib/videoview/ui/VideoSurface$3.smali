.class Lcom/mautilus/lib/videoview/ui/VideoSurface$3;
.super Ljava/lang/Object;
.source "VideoSurface.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mautilus/lib/videoview/ui/VideoSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;


# direct methods
.method constructor <init>(Lcom/mautilus/lib/videoview/ui/VideoSurface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x2

    .line 443
    const-string v1, "[VideoSurface]::[mPreparedListener]::[onPrepared]"

    invoke-static {v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # setter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentState:I
    invoke-static {v1, v3}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$702(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I

    .line 446
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$800(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$800(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$000(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    # setter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I
    invoke-static {v1, v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$502(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I

    .line 452
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    # setter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I
    invoke-static {v1, v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$602(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I

    .line 453
    const-string v1, "[VideoSurface]::[mPreparedListener]::[onPrepared]::[mVideoWidth %d]::[mVideoHeight %d]"

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I
    invoke-static {v4}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$500(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I
    invoke-static {v4}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$600(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSeekWhenPrepared:I
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$900(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v0

    .line 456
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_1

    .line 458
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {v1, v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->seekTo(I)V

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$500(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$600(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v1

    if-eqz v1, :cond_5

    .line 463
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$500(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v2

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I
    invoke-static {v3}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$600(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 464
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSurfaceWidth:I
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1000(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v1

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$500(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSurfaceHeight:I
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1100(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v1

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$600(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 469
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mTargetState:I
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1200(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 471
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->start()V

    .line 472
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaController:Lcom/mautilus/lib/videoview/ui/PlayerController;
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1300(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Lcom/mautilus/lib/videoview/ui/PlayerController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 474
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaController:Lcom/mautilus/lib/videoview/ui/PlayerController;
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1300(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Lcom/mautilus/lib/videoview/ui/PlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->show()V

    .line 496
    :cond_2
    :goto_0
    return-void

    .line 477
    :cond_3
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_2

    .line 479
    :cond_4
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaController:Lcom/mautilus/lib/videoview/ui/PlayerController;
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1300(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Lcom/mautilus/lib/videoview/ui/PlayerController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 482
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaController:Lcom/mautilus/lib/videoview/ui/PlayerController;
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1300(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Lcom/mautilus/lib/videoview/ui/PlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->show()V

    goto :goto_0

    .line 491
    :cond_5
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mTargetState:I
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1200(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 493
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->start()V

    goto :goto_0
.end method
