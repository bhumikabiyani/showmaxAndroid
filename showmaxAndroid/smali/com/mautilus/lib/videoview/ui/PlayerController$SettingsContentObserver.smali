.class public Lcom/mautilus/lib/videoview/ui/PlayerController$SettingsContentObserver;
.super Landroid/database/ContentObserver;
.source "PlayerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mautilus/lib/videoview/ui/PlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;


# direct methods
.method public constructor <init>(Lcom/mautilus/lib/videoview/ui/PlayerController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 956
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$SettingsContentObserver;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    .line 957
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 958
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 963
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 970
    const-string v0, "[PlayerController]::[SettingsContentObserver]::[onChange]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 971
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$SettingsContentObserver;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1400(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$SettingsContentObserver;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1400(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$SettingsContentObserver;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # invokes: Lcom/mautilus/lib/videoview/ui/PlayerController;->getCurrentVolumeFromAudioManager()I
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1500(Lcom/mautilus/lib/videoview/ui/PlayerController;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 975
    :cond_0
    return-void
.end method
