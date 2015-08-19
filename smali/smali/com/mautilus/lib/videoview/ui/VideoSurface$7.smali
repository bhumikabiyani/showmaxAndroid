.class Lcom/mautilus/lib/videoview/ui/VideoSurface$7;
.super Ljava/lang/Object;
.source "VideoSurface.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
    .line 593
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 7
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 596
    iget-object v4, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # setter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSurfaceWidth:I
    invoke-static {v4, p3}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1002(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I

    .line 597
    iget-object v4, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # setter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSurfaceHeight:I
    invoke-static {v4, p4}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1102(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I

    .line 598
    const-string v4, "[VideoSurface]::[mSHCallback]::[surfaceChanged]::[mSurfaceWidth %d]::[mSurfaceHeight %d]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSurfaceWidth:I
    invoke-static {v6}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1000(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSurfaceHeight:I
    invoke-static {v6}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1100(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    iget-object v4, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mTargetState:I
    invoke-static {v4}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1200(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 600
    .local v1, "isValidState":Z
    :goto_0
    iget-object v4, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I
    invoke-static {v4}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$500(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v4

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I
    invoke-static {v4}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$600(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v4

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 601
    .local v0, "hasValidSize":Z
    :goto_1
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$000(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 603
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSeekWhenPrepared:I
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$900(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 605
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSeekWhenPrepared:I
    invoke-static {v3}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$900(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->seekTo(I)V

    .line 607
    :cond_0
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->start()V

    .line 609
    :cond_1
    return-void

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_2
    move v1, v3

    .line 599
    goto :goto_0

    .restart local v1    # "isValidState":Z
    :cond_3
    move v0, v3

    .line 600
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # setter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1802(Lcom/mautilus/lib/videoview/ui/VideoSurface;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 614
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # invokes: Lcom/mautilus/lib/videoview/ui/VideoSurface;->openVideo()V
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1900(Lcom/mautilus/lib/videoview/ui/VideoSurface;)V

    .line 615
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 620
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    const/4 v1, 0x0

    # setter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1802(Lcom/mautilus/lib/videoview/ui/VideoSurface;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 621
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaController:Lcom/mautilus/lib/videoview/ui/PlayerController;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1300(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Lcom/mautilus/lib/videoview/ui/PlayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaController:Lcom/mautilus/lib/videoview/ui/PlayerController;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1300(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Lcom/mautilus/lib/videoview/ui/PlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->hide()V

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    const/4 v1, 0x1

    # invokes: Lcom/mautilus/lib/videoview/ui/VideoSurface;->release(Z)V
    invoke-static {v0, v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$2000(Lcom/mautilus/lib/videoview/ui/VideoSurface;Z)V

    .line 624
    return-void
.end method
