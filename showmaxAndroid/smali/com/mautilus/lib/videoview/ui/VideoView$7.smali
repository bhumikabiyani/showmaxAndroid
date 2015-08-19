.class Lcom/mautilus/lib/videoview/ui/VideoView$7;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mautilus/lib/videoview/ui/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mautilus/lib/videoview/ui/VideoView;


# direct methods
.method constructor <init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mautilus/lib/videoview/ui/VideoView;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v4, 0x1

    .line 672
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$100(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoSurface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->getDuration()I

    move-result v1

    # setter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mDuration:I
    invoke-static {v0, v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$302(Lcom/mautilus/lib/videoview/ui/VideoView;I)I

    .line 675
    const-string v0, "[VideoView]::[mOnPreparedListener]::[onPrepared]::[current position: %d]::[duration %d]::[resumed from background: %b]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    .line 676
    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mCurrentPosition:I
    invoke-static {v3}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$400(Lcom/mautilus/lib/videoview/ui/VideoView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mDuration:I
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$300(Lcom/mautilus/lib/videoview/ui/VideoView;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mResumeFromBackground:Z
    invoke-static {v3}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$500(Lcom/mautilus/lib/videoview/ui/VideoView;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 675
    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 679
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mCurrentPosition:I
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$400(Lcom/mautilus/lib/videoview/ui/VideoView;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mCurrentPosition:I
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$400(Lcom/mautilus/lib/videoview/ui/VideoView;)I

    move-result v0

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mDuration:I
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$300(Lcom/mautilus/lib/videoview/ui/VideoView;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 681
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$100(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoSurface;

    move-result-object v0

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mCurrentPosition:I
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$400(Lcom/mautilus/lib/videoview/ui/VideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->seekTo(I)V

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mResumeFromBackground:Z
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$500(Lcom/mautilus/lib/videoview/ui/VideoView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 685
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$600(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/PlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->isControlsVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$600(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/PlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->hideControls()V

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$100(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->start()V

    .line 694
    :goto_0
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->hideProgress()V

    .line 695
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$600(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/PlayerController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setEnabled(Z)V

    .line 696
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$200(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 698
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$200(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;->onPrepared()V

    .line 700
    :cond_2
    return-void

    .line 692
    :cond_3
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$7;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$600(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/PlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->show()V

    goto :goto_0
.end method
