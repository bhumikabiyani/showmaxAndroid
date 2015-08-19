.class Lcom/mautilus/lib/videoview/ui/VideoView$1;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mautilus/lib/videoview/ui/VideoView;->loadAndPlay(I)V
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
    .line 297
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoView$1;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmError(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 318
    const-string v0, "[VideoView]::[DrmManagerListener]::[onDrmError]::[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$1;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$200(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$1;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$200(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;->onDrmError(Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void
.end method

.method public onInitFinished(ZI)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "status"    # I

    .prologue
    .line 303
    const-string v0, "[VideoView]::[DrmManagerListener]::[onInitFinished]::[success: %b]::[status: %d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    if-eqz p1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$1;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$100(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoSurface;

    move-result-object v0

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView$1;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mDrmManagerAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$000(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    move-result-object v1

    invoke-interface {v1}, Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;->getUrlKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->setVideoPath(Ljava/lang/String;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$1;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$200(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$1;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$200(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;->onDrmInitSuccessful(ZI)V

    .line 312
    :cond_1
    return-void
.end method
