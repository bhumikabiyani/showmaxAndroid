.class Lcom/mautilus/lib/videoview/ui/VideoSurface$4;
.super Ljava/lang/Object;
.source "VideoSurface.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mautilus/lib/videoview/ui/VideoSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;


# direct methods
.method constructor <init>(Lcom/mautilus/lib/videoview/ui/VideoSurface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$4;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x5

    .line 503
    const-string v0, "[VideoSurface]::[mCompletionListener]::[onCompletion]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$4;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # setter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentState:I
    invoke-static {v0, v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$702(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I

    .line 505
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$4;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # setter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mTargetState:I
    invoke-static {v0, v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1202(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I

    .line 506
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$4;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaController:Lcom/mautilus/lib/videoview/ui/PlayerController;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1300(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Lcom/mautilus/lib/videoview/ui/PlayerController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$4;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaController:Lcom/mautilus/lib/videoview/ui/PlayerController;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1300(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Lcom/mautilus/lib/videoview/ui/PlayerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->hide()V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$4;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1400(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$4;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1400(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$4;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$000(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 514
    :cond_1
    return-void
.end method
