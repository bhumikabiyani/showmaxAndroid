.class Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;
.super Landroid/os/AsyncTask;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mautilus/lib/videoview/util/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitDrmTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final STATUS_DRM_ASSET_IS_INVALID:I = -0xc

.field private static final STATUS_NO_DRM_WIDEVINE_PLUGIN:I = -0xa

.field private static final STATUS_VIDEO_IS_NOT_WIDEVINE:I = -0xb


# instance fields
.field final synthetic this$0:Lcom/mautilus/lib/videoview/util/DrmManager;


# direct methods
.method private constructor <init>(Lcom/mautilus/lib/videoview/util/DrmManager;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mautilus/lib/videoview/util/DrmManager;Lcom/mautilus/lib/videoview/util/DrmManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mautilus/lib/videoview/util/DrmManager;
    .param p2, "x1"    # Lcom/mautilus/lib/videoview/util/DrmManager$1;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;-><init>(Lcom/mautilus/lib/videoview/util/DrmManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 185
    const-string v2, "[DrmManager]::[InitDrmTask]::[Video is DRM protected, preparing Widevine engine.]"

    invoke-static {v2}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 187
    new-instance v0, Landroid/drm/DrmInfoRequest;

    const/4 v2, 0x3

    const-string v3, "video/wvm"

    invoke-direct {v0, v2, v3}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 189
    .local v0, "rightsAcquisitionInfo":Landroid/drm/DrmInfoRequest;
    iget-object v2, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$200(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$200(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    move-result-object v2

    invoke-interface {v2}, Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;->getDeviceIdKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$200(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    move-result-object v2

    invoke-interface {v2}, Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;->getPortalKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$200(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    move-result-object v2

    invoke-interface {v2}, Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;->getServerKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    .line 190
    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$200(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    move-result-object v2

    invoke-interface {v2}, Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;->getUrlKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$200(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    move-result-object v2

    invoke-interface {v2}, Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;->getUserDataKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 192
    :cond_0
    const/16 v2, -0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 218
    :goto_0
    return-object v2

    .line 196
    :cond_1
    const-string v2, "WVDRMServerKey"

    iget-object v3, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    invoke-static {v3}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$200(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    move-result-object v3

    invoke-interface {v3}, Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;->getServerKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    const-string v2, "[DrmManager]::[InitDrmTask]::[WVDRMServerKey: %s]"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    invoke-static {v4}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$200(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    move-result-object v4

    invoke-interface {v4}, Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;->getServerKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    const-string v2, "WVAssetURIKey"

    iget-object v3, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    invoke-static {v3}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$200(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    move-result-object v3

    invoke-interface {v3}, Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;->getUrlKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    const-string v2, "[DrmManager]::[InitDrmTask]::[WVAssetURIKey: %s]"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    invoke-static {v4}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$200(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    move-result-object v4

    invoke-interface {v4}, Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;->getUrlKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    const-string v2, "WVDeviceIDKey"

    iget-object v3, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    invoke-static {v3}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$200(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    move-result-object v3

    invoke-interface {v3}, Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;->getDeviceIdKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    const-string v2, "[DrmManager]::[InitDrmTask]::[WVDeviceIDKey: %s]"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    invoke-static {v4}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$200(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    move-result-object v4

    invoke-interface {v4}, Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;->getDeviceIdKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    const-string v2, "WVPortalKey"

    iget-object v3, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    invoke-static {v3}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$200(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    move-result-object v3

    invoke-interface {v3}, Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;->getPortalKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    const-string v2, "[DrmManager]::[DRM]::[WVPortalKey: %s]"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    invoke-static {v4}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$200(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    move-result-object v4

    invoke-interface {v4}, Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;->getPortalKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    const-string v2, "WVCAUserDataKey"

    iget-object v3, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    invoke-static {v3}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$200(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    move-result-object v3

    invoke-interface {v3}, Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;->getUserDataKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    const-string v2, "[DrmManager]::[InitDrmTask]::[WVCAUserDataKey: %s]"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    invoke-static {v4}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$200(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    move-result-object v4

    invoke-interface {v4}, Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;->getUserDataKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    iget-object v2, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$300(Lcom/mautilus/lib/videoview/util/DrmManager;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient;->acquireRights(Landroid/drm/DrmInfoRequest;)I

    move-result v1

    .line 216
    .local v1, "status":I
    const-string v2, "[DrmManager]::[InitDrmTask]::[ACQUIRE %d]"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "status"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 242
    :goto_0
    iget-object v2, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mListener:Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$100(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    # getter for: Lcom/mautilus/lib/videoview/util/DrmManager;->mListener:Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;
    invoke-static {v2}, Lcom/mautilus/lib/videoview/util/DrmManager;->access$100(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v0, v1}, Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;->onInitFinished(ZI)V

    .line 246
    :cond_0
    return-void

    .line 227
    :sswitch_0
    const-string v2, "[DrmManager]::[InitDrmTask]::[onPostExecute]::[ERROR_UNKNOWN]"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    :sswitch_1
    const-string v2, "[DrmManager]::[InitDrmTask]::[onPostExecute]::[STATUS_NO_DRM_WIDEVINE_PLUGIN]"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 233
    :sswitch_2
    const-string v2, "[DrmManager]::[InitDrmTask]::[onPostExecute]::[STATUS_VIDEO_IS_NOT_WIDEVINE]"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 236
    :sswitch_3
    const-string v2, "[DrmManager]::[InitDrmTask]::[onPostExecute]::[STATUS_DRM_ASSET_IS_INVALID]"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 239
    :sswitch_4
    const-string v2, "[DrmManager]::[InitDrmTask]::[onPostExecute]::[ERROR_NONE]"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 244
    goto :goto_1

    .line 224
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d0 -> :sswitch_0
        -0xc -> :sswitch_3
        -0xb -> :sswitch_2
        -0xa -> :sswitch_1
        0x0 -> :sswitch_4
    .end sparse-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 176
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
