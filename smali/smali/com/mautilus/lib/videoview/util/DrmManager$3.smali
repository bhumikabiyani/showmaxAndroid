.class Lcom/mautilus/lib/videoview/util/DrmManager$3;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnInfoListener;


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
    .line 138
    iput-object p1, p0, Lcom/mautilus/lib/videoview/util/DrmManager$3;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/drm/DrmManagerClient;Landroid/drm/DrmInfoEvent;)V
    .locals 5
    .param p1, "client"    # Landroid/drm/DrmManagerClient;
    .param p2, "event"    # Landroid/drm/DrmInfoEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 143
    invoke-virtual {p2}, Landroid/drm/DrmInfoEvent;->getType()I

    move-result v0

    .line 144
    .local v0, "eventType":I
    sparse-switch v0, :sswitch_data_0

    .line 173
    :goto_0
    return-void

    .line 147
    :sswitch_0
    const-string v1, "[DrmManager]::[onInfo]::[%d TYPE_ACCOUNT_ALREADY_REGISTERED]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :sswitch_1
    const-string v1, "[DrmManager]::[onInfo]::[%d TYPE_ALREADY_REGISTERED_BY_ANOTHER_ACCOUNT]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 153
    :sswitch_2
    const-string v1, "[DrmManager]::[onInfo]::[%d TYPE_REMOVE_RIGHTS]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :sswitch_3
    const-string v1, "[DrmManager]::[onInfo]::[%d TYPE_RIGHTS_INSTALLED]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    :sswitch_4
    const-string v1, "[DrmManager]::[onInfo]::[%d TYPE_RIGHTS_REMOVED]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    :sswitch_5
    const-string v1, "[DrmManager]::[onInfo]::[%d TYPE_WAIT_FOR_RIGHTS]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :sswitch_6
    const-string v1, "[DrmManager]::[onInfo]::[%d TYPE_ALL_RIGHTS_REMOVED]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 168
    :sswitch_7
    const-string v1, "[DrmManager]::[onInfo]::[%d TYPE_DRM_INFO_PROCESSED]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_0
        0x6 -> :sswitch_4
        0x3e9 -> :sswitch_6
        0x3ea -> :sswitch_7
    .end sparse-switch
.end method
