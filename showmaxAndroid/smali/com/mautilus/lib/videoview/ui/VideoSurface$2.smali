.class Lcom/mautilus/lib/videoview/ui/VideoSurface$2;
.super Ljava/lang/Object;
.source "VideoSurface.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 425
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$2;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$2;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    # setter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I
    invoke-static {v0, v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$502(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I

    .line 429
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$2;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    # setter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I
    invoke-static {v0, v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$602(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I

    .line 430
    const-string v0, "[VideoSurface]::[mSizeChangedListener]::[onVideoSizeChanged]::[mVideoWidth %d]::[mVideoHeight %d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$2;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I
    invoke-static {v3}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$500(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$2;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I
    invoke-static {v3}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$600(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$2;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$500(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$2;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$600(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$2;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$2;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I
    invoke-static {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$500(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v1

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$2;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I
    invoke-static {v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$600(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 434
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$2;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->requestLayout()V

    .line 436
    :cond_0
    return-void
.end method
