.class Lcom/mautilus/lib/videoview/ui/PlayerController$6;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mautilus/lib/videoview/ui/PlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;


# direct methods
.method constructor <init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 851
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1, "bar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromuser"    # Z

    .prologue
    .line 876
    if-nez p3, :cond_1

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 882
    :cond_1
    iget-object v4, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;
    invoke-static {v4}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$600(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 887
    iget-object v4, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;
    invoke-static {v4}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$600(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    move-result-object v4

    invoke-interface {v4}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->getDuration()I

    move-result v4

    int-to-long v0, v4

    .line 888
    .local v0, "duration":J
    int-to-long v4, p2

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 889
    .local v2, "newposition":J
    iget-object v4, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;
    invoke-static {v4}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$600(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    move-result-object v4

    long-to-int v5, v2

    invoke-interface {v4, v5}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->seekTo(I)V

    .line 890
    iget-object v4, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1100(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 892
    iget-object v4, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1100(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    long-to-int v6, v2

    # invokes: Lcom/mautilus/lib/videoview/ui/PlayerController;->stringForTime(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1200(Lcom/mautilus/lib/videoview/ui/PlayerController;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .prologue
    .line 854
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$600(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 872
    :goto_0
    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mOnSeekListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$900(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mOnSeekListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$900(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$600(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->getCurrentPosition()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;->onStartSeek(J)V

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->show()V

    .line 864
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    const/4 v1, 0x1

    # setter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mDragging:Z
    invoke-static {v0, v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$502(Lcom/mautilus/lib/videoview/ui/PlayerController;Z)Z

    .line 871
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1000(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .prologue
    .line 898
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$600(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 915
    :goto_0
    return-void

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mOnSeekListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$900(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mOnSeekListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$900(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$600(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->getCurrentPosition()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;->onStopSeek(J)V

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    const/4 v1, 0x0

    # setter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mDragging:Z
    invoke-static {v0, v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$502(Lcom/mautilus/lib/videoview/ui/PlayerController;Z)Z

    .line 907
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # invokes: Lcom/mautilus/lib/videoview/ui/PlayerController;->setProgress()I
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$400(Lcom/mautilus/lib/videoview/ui/PlayerController;)I

    .line 908
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # invokes: Lcom/mautilus/lib/videoview/ui/PlayerController;->updatePauseResumeBtnDrawables()V
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1300(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    .line 909
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->show()V

    .line 914
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1000(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
