.class Lcom/mautilus/lib/videoview/ui/PlayerController$11;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 1225
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$11;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1230
    const-string v2, "[PlayerController]::[mDelayHideTouchListener]::[onTouch]::[%s]::[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1231
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1230
    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1233
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$11;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mAutoHide:Z
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$2000(Lcom/mautilus/lib/videoview/ui/PlayerController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1236
    const-string v2, "[PlayerController]::[mDelayHideTouchListener]::[onTouch]::[delayedHide]"

    invoke-static {v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 1238
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$11;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$600(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return v1

    .line 1244
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$11;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseBtnId:I
    invoke-static {v3}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$2300(Lcom/mautilus/lib/videoview/ui/PlayerController;)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$11;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$600(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$11;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$600(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1246
    .local v0, "isPauseButtonTouched":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 1248
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$11;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # invokes: Lcom/mautilus/lib/videoview/ui/PlayerController;->removeAnyPendingDelayedHide()V
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$2400(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    goto :goto_0

    .end local v0    # "isPauseButtonTouched":Z
    :cond_2
    move v0, v1

    .line 1244
    goto :goto_1

    .line 1252
    .restart local v0    # "isPauseButtonTouched":Z
    :cond_3
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$11;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$11;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mAutoHideDelayMs:I
    invoke-static {v3}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$2100(Lcom/mautilus/lib/videoview/ui/PlayerController;)I

    move-result v3

    # invokes: Lcom/mautilus/lib/videoview/ui/PlayerController;->delayedHide(I)V
    invoke-static {v2, v3}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$2200(Lcom/mautilus/lib/videoview/ui/PlayerController;I)V

    goto :goto_0
.end method
