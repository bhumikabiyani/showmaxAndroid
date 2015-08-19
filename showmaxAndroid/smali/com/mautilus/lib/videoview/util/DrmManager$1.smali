.class Lcom/mautilus/lib/videoview/util/DrmManager$1;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mautilus/lib/videoview/util/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mautilus/lib/videoview/util/DrmManager;


# direct methods
.method constructor <init>(Lcom/mautilus/lib/videoview/util/DrmManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mautilus/lib/videoview/util/DrmManager;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mautilus/lib/videoview/util/DrmManager$1;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V
    .locals 5
    .param p1, "client"    # Landroid/drm/DrmManagerClient;
    .param p2, "event"    # Landroid/drm/DrmErrorEvent;

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getType()I

    move-result v1

    .line 74
    .local v1, "eventType":I
    sparse-switch v1, :sswitch_data_0

    .line 107
    const-string v0, "UNKNOWN"

    .line 109
    .local v0, "error":Ljava/lang/String;
    :goto_0
    const-string v2, "[DrmManager]::[onError]::[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v2, p0, Lcom/mautilus/lib/videoview/util/DrmManager$1;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mListener:Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$100(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/mautilus/lib/videoview/util/DrmManager$1;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mListener:Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$100(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;->onDrmError(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void

    .line 77
    .end local v0    # "error":Ljava/lang/String;
    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TYPE_RIGHTS_NOT_INSTALLED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .restart local v0    # "error":Ljava/lang/String;
    goto :goto_0

    .line 80
    .end local v0    # "error":Ljava/lang/String;
    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TYPE_NO_INTERNET_CONNECTION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .restart local v0    # "error":Ljava/lang/String;
    goto :goto_0

    .line 83
    .end local v0    # "error":Ljava/lang/String;
    :sswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TYPE_ACQUIRE_DRM_INFO_FAILED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .restart local v0    # "error":Ljava/lang/String;
    goto :goto_0

    .line 86
    .end local v0    # "error":Ljava/lang/String;
    :sswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TYPE_NOT_SUPPORTED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0    # "error":Ljava/lang/String;
    goto :goto_0

    .line 89
    .end local v0    # "error":Ljava/lang/String;
    :sswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TYPE_OUT_OF_MEMORY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .restart local v0    # "error":Ljava/lang/String;
    goto :goto_0

    .line 92
    .end local v0    # "error":Ljava/lang/String;
    :sswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TYPE_PROCESS_DRM_INFO_FAILED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0    # "error":Ljava/lang/String;
    goto/16 :goto_0

    .line 95
    .end local v0    # "error":Ljava/lang/String;
    :sswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TYPE_REMOVE_ALL_RIGHTS_FAILED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .restart local v0    # "error":Ljava/lang/String;
    goto/16 :goto_0

    .line 98
    .end local v0    # "error":Ljava/lang/String;
    :sswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TYPE_RIGHTS_RENEWAL_NOT_ALLOWED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0    # "error":Ljava/lang/String;
    goto/16 :goto_0

    .line 101
    .end local v0    # "error":Ljava/lang/String;
    :sswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TYPE_ALL_RIGHTS_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .restart local v0    # "error":Ljava/lang/String;
    goto/16 :goto_0

    .line 104
    .end local v0    # "error":Ljava/lang/String;
    :sswitch_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TYPE_DRM_INFO_PROCESSED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0    # "error":Ljava/lang/String;
    goto/16 :goto_0

    .line 74
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_8
        0x3ea -> :sswitch_9
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_7
        0x7d3 -> :sswitch_3
        0x7d4 -> :sswitch_4
        0x7d5 -> :sswitch_1
        0x7d6 -> :sswitch_5
        0x7d7 -> :sswitch_6
        0x7d8 -> :sswitch_2
    .end sparse-switch
.end method
