.class Lcom/mautilus/lib/videoview/ui/VideoView$9;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 747
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoView$9;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 751
    sparse-switch p2, :sswitch_data_0

    .line 780
    const-string v0, "[VideoView]::[onInfo]::[%d, %d]::[DEFAULT]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 782
    :goto_0
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$9;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$200(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView$9;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # getter for: Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;
    invoke-static {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$200(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;->onPlaybackInfo(II)V

    .line 786
    :cond_0
    return v3

    .line 754
    :sswitch_0
    const-string v0, "[VideoView]::[onInfo]::[%d, %d]::[MEDIA_INFO_BAD_INTERLEAVING]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 758
    :sswitch_1
    const-string v0, "[VideoView]::[onInfo]::[%d, %d]::[MEDIA_INFO_BUFFERING_START]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 762
    :sswitch_2
    const-string v0, "[VideoView]::[onInfo]::[%d, %d]::[MEDIA_INFO_BUFFERING_END]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 765
    :sswitch_3
    const-string v0, "[VideoView]::[onInfo]::[%d, %d]::[MEDIA_INFO_METADATA_UPDATE]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 768
    :sswitch_4
    const-string v0, "[VideoView]::[onInfo]::[%d, %d]::[MEDIA_INFO_NOT_SEEKABLE]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 771
    :sswitch_5
    const-string v0, "[VideoView]::[onInfo]::[%d, %d]::[MEDIA_INFO_UNKNOWN]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 774
    :sswitch_6
    const-string v0, "[VideoView]::[onInfo]::[%d, %d]::[MEDIA_INFO_VIDEO_RENDERING_START]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 777
    :sswitch_7
    const-string v0, "[VideoView]::[onInfo]::[%d, %d]::[MEDIA_INFO_VIDEO_TRACK_LAGGING]"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 751
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x3 -> :sswitch_6
        0x2bc -> :sswitch_7
        0x2bd -> :sswitch_1
        0x2be -> :sswitch_2
        0x320 -> :sswitch_0
        0x321 -> :sswitch_4
        0x322 -> :sswitch_3
    .end sparse-switch
.end method
