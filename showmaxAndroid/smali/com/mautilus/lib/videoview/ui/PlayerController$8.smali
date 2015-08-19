.class Lcom/mautilus/lib/videoview/ui/PlayerController$8;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mautilus/lib/videoview/ui/PlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMuted:Z

.field private mTempVolumeProgress:I

.field final synthetic this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;


# direct methods
.method constructor <init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    const/4 v0, 0x0

    .line 1036
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    iput-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;->mMuted:Z

    .line 1039
    iput v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;->mTempVolumeProgress:I

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1044
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1400(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1046
    iget-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;->mMuted:Z

    if-nez v0, :cond_2

    .line 1048
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # invokes: Lcom/mautilus/lib/videoview/ui/PlayerController;->getCurrentVolumeFromAudioManager()I
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1500(Lcom/mautilus/lib/videoview/ui/PlayerController;)I

    move-result v0

    iput v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;->mTempVolumeProgress:I

    .line 1049
    iput-boolean v2, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;->mMuted:Z

    .line 1050
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # invokes: Lcom/mautilus/lib/videoview/ui/PlayerController;->setVolumeMuted(Z)V
    invoke-static {v0, v2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1700(Lcom/mautilus/lib/videoview/ui/PlayerController;Z)V

    .line 1051
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1400(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1400(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1400(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1067
    :cond_1
    :goto_0
    return-void

    .line 1058
    :cond_2
    iput-boolean v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;->mMuted:Z

    .line 1059
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # invokes: Lcom/mautilus/lib/videoview/ui/PlayerController;->setVolumeMuted(Z)V
    invoke-static {v0, v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1700(Lcom/mautilus/lib/videoview/ui/PlayerController;Z)V

    .line 1060
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1400(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1061
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1400(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # getter for: Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1400(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;->this$0:Lcom/mautilus/lib/videoview/ui/PlayerController;

    # invokes: Lcom/mautilus/lib/videoview/ui/PlayerController;->getCurrentVolumeFromAudioManager()I
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->access$1500(Lcom/mautilus/lib/videoview/ui/PlayerController;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
