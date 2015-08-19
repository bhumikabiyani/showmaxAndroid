.class Lcom/showmax/app/ui/ActivityPlayer$3;
.super Ljava/lang/Object;
.source "ActivityPlayer.java"

# interfaces
.implements Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityPlayer;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityPlayer$3;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmError(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 628
    const-string v0, "[APlayer]::[DrmManagerListener]::[onDrmError]::[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$3;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$1700(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$3;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$1700(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;->onDrmError(Ljava/lang/String;)V

    .line 634
    :cond_0
    return-void
.end method

.method public onInitFinished(ZI)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "status"    # I

    .prologue
    const/4 v4, 0x1

    .line 606
    const-string v0, "[APlayer]::[mDrmManagerListener]::[onInitFinished]::[success %b]"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    if-eqz p1, :cond_0

    .line 611
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$3;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer$3;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mWidevineAsset:Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$1200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->setDrmManagerAsset(Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;)V

    .line 612
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$3;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mautilus/lib/videoview/ui/VideoView;->setDrmEnabled(Z)V

    .line 613
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$3;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # invokes: Lcom/showmax/app/ui/ActivityPlayer;->showContentWarningAndPlay()V
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$1100(Lcom/showmax/app/ui/ActivityPlayer;)V

    .line 621
    :goto_0
    return-void

    .line 617
    :cond_0
    invoke-static {}, Lcom/showmax/app/util/MauBug;->getInstance()Lcom/showmax/app/util/MauBug;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/util/MauBug;->sendDrmError(Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$3;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v0

    const v1, 0x7f0d00b0

    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->showMessage(I)V

    .line 619
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$3;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # invokes: Lcom/showmax/app/ui/ActivityPlayer;->delayedFinish()V
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$1600(Lcom/showmax/app/ui/ActivityPlayer;)V

    goto :goto_0
.end method
