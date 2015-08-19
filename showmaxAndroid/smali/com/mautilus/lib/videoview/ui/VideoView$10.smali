.class Lcom/mautilus/lib/videoview/ui/VideoView$10;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lcom/mautilus/lib/videoview/ui/VideoSurface$OnBufferingChangeListener;


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
    .line 791
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoView$10;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingChange(Z)V
    .locals 1
    .param p1, "stopBuffering"    # Z

    .prologue
    .line 796
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$10;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$100(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    const-string v0, "[VideoView]::[mOnBufferingChangeListener]::[onBufferingChange]::[stop buffering]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$10;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->hideProgress()V

    .line 808
    :goto_0
    return-void

    .line 805
    :cond_0
    const-string v0, "[VideoView]::[mOnBufferingChangeListener]::[onBufferingChange]::[start buffering]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$10;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->showProgress()V

    goto :goto_0
.end method
