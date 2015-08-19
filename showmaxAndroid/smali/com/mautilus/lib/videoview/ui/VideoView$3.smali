.class Lcom/mautilus/lib/videoview/ui/VideoView$3;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lcom/mautilus/lib/videoview/ui/PlayerController$onSubtitlesBtnClickListener;


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
    .line 587
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoView$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubtitlesBtnClick()V
    .locals 1

    .prologue
    .line 593
    const-string v0, "[VideoView]::[mSubtitlesSelectionListener]::[onSubtitlesBtnClick]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$200(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$3;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$200(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;->onSubtitlesSelectionClicked()V

    .line 598
    :cond_0
    return-void
.end method
