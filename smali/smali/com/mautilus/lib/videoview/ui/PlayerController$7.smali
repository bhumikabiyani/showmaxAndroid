.class Lcom/mautilus/lib/videoview/ui/PlayerController$7;
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
    .line 1007
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$7;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "bar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromuser"    # Z

    .prologue
    .line 1016
    const-string v0, "[PlayerController]::[mVolumeSeekListener]::onProgressChanged]::[%d]::[fromUser: %b]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1017
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$7;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1400(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$7;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # invokes: Lcom/mautilus/lib/videoview/ui/PlayerController;->setCurrentVolumeForAudioManager(I)V
    invoke-static {v0, p2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1600(Lcom/mautilus/lib/videoview/ui/PlayerController;I)V

    .line 1021
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1011
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1026
    return-void
.end method
