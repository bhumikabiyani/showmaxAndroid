.class Lcom/mautilus/lib/videoview/ui/VideoSurface$6;
.super Ljava/lang/Object;
.source "VideoSurface.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 543
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$6;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 547
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface$6;->this$0:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    # setter for: Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentBufferPercentage:I
    invoke-static {v0, p2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->access$1702(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I

    .line 548
    return-void
.end method
