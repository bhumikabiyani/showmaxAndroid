.class Lcom/mautilus/lib/videoview/ui/VideoSurface$1;
.super Ljava/lang/Object;
.source "VideoSurface.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 46
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$1;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 50
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$1;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$000(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$1;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$000(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 55
    .local v1, "position":I
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$1;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mBufferingState:Z
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$100(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$1;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mLastPosition:I
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$200(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v2

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x2ee

    if-le v2, v3, :cond_2

    .line 57
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$1;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    const/4 v3, 0x1

    # invokes: Lcom/mautilus/lib/videoview/ui/VideoSurface;->onBufferingChange(Z)V
    invoke-static {v2, v3}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$300(Lcom/mautilus/lib/videoview/ui/VideoSurface;Z)V

    .line 63
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$1;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # setter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mLastPosition:I
    invoke-static {v2, v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$202(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1    # "position":I
    :goto_1
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$1;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$400(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    :cond_1
    return-void

    .line 59
    .restart local v1    # "position":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$1;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$000(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$1;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mLastPosition:I
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$200(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v2

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x1f4

    if-ge v2, v3, :cond_0

    .line 61
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$1;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    const/4 v3, 0x0

    # invokes: Lcom/mautilus/lib/videoview/ui/VideoSurface;->onBufferingChange(Z)V
    invoke-static {v2, v3}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$300(Lcom/mautilus/lib/videoview/ui/VideoSurface;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 64
    .end local v1    # "position":I
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "[VideoSurface]::[checker]::[IllegalStateException]::[%s]"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
