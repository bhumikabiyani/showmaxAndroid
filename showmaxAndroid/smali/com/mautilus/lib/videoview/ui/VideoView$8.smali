.class Lcom/mautilus/lib/videoview/ui/VideoView$8;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 704
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoView$8;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v6, 0x1

    .line 708
    const-string v1, "UNKNOWN WHAT"

    .line 709
    .local v1, "whatStr":Ljava/lang/String;
    const-string v0, "UNKNOWN EXTRA"

    .line 711
    .local v0, "extraStr":Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 719
    :goto_0
    sparse-switch p3, :sswitch_data_1

    .line 738
    :goto_1
    const-string v2, "[VideoView]::[onError]::[%d, %d]::[WHAT: %s]::[EXTRA: %s]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoView$8;->this$0:Lcom/mautilus/lib/videoview/ui/VideoView;

    # invokes: Lcom/mautilus/lib/videoview/ui/VideoView;->handleError(II)V
    invoke-static {v2, p2, p3}, Lcom/mautilus/lib/videoview/ui/VideoView;->access$700(Lcom/mautilus/lib/videoview/ui/VideoView;II)V

    .line 740
    return v6

    .line 714
    :sswitch_0
    const-string v1, "MEDIA_ERROR_SERVER_DIED"

    .line 716
    :sswitch_1
    const-string v1, "MEDIA_ERROR_UNKNOWN"

    goto :goto_0

    .line 722
    :sswitch_2
    const-string v0, "MEDIA_ERROR_IO"

    .line 723
    goto :goto_1

    .line 725
    :sswitch_3
    const-string v0, "MEDIA_ERROR_MALFORMED"

    .line 726
    goto :goto_1

    .line 728
    :sswitch_4
    const-string v0, "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK"

    .line 729
    goto :goto_1

    .line 731
    :sswitch_5
    const-string v0, "MEDIA_ERROR_TIMED_OUT"

    .line 732
    goto :goto_1

    .line 734
    :sswitch_6
    const-string v0, "MEDIA_ERROR_UNSUPPORTED"

    goto :goto_1

    .line 711
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch

    .line 719
    :sswitch_data_1
    .sparse-switch
        -0x3f2 -> :sswitch_6
        -0x3ef -> :sswitch_3
        -0x3ec -> :sswitch_2
        -0x6e -> :sswitch_5
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method
