.class Lcom/mautilus/lib/videoview/ui/PlayerController$5;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 750
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$5;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 754
    const-string v0, "[PlayerController]::[mPauseListener]::[onClick]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$5;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$5;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mOnPlayListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$700(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;->onPauseClick()V

    .line 764
    :goto_0
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$5;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # invokes: Lcom/mautilus/lib/videoview/ui/PlayerController;->doPauseResume()V
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$800(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    .line 765
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$5;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mOnPlayListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$700(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;->onResumeClick()V

    goto :goto_0
.end method
