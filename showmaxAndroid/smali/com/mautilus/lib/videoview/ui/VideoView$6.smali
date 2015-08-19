.class Lcom/mautilus/lib/videoview/ui/VideoView$6;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 653
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoView$6;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 658
    const-string v0, "[VideoView]::[mOnCompletionListener]::[onCompletion]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$6;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$100(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoSurface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->suspend()V

    .line 660
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$6;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$200(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$6;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$200(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;->onPlaybackFinished()V

    .line 664
    :cond_0
    return-void
.end method
