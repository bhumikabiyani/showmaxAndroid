.class Lcom/mautilus/lib/videoview/ui/PlayerController$4;
.super Landroid/os/Handler;
.source "PlayerController.java"


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
    .line 607
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$4;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 612
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 625
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 617
    :pswitch_1
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$4;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # invokes: Lcom/mautilus/lib/videoview/ui/PlayerController;->setProgress()I
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$400(Lcom/mautilus/lib/videoview/ui/PlayerController;)I

    move-result v0

    .line 618
    .local v0, "pos":I
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$4;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mDragging:Z
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$500(Lcom/mautilus/lib/videoview/ui/PlayerController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$4;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$600(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$4;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$600(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/mautilus/lib/videoview/ui/PlayerController$4;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 621
    rem-int/lit16 v1, v0, 0x3e8

    rsub-int v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, p1, v2, v3}, Lcom/mautilus/lib/videoview/ui/PlayerController$4;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 612
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
