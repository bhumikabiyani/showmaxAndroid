.class Lcom/mautilus/lib/videoview/util/DrmManager$2;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnEventListener;


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
    .line 118
    iput-object p1, p0, Lcom/mautilus/lib/videoview/util/DrmManager$2;->this$0:Lcom/mautilus/lib/videoview/util/DrmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V
    .locals 5
    .param p1, "client"    # Landroid/drm/DrmManagerClient;
    .param p2, "event"    # Landroid/drm/DrmEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 123
    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getType()I

    move-result v0

    .line 124
    .local v0, "eventType":I
    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 127
    :pswitch_0
    const-string v1, "[DrmManager]::[onEvent]::[%d TYPE_DRM_INFO_PROCESSED]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 130
    :pswitch_1
    const-string v1, "[DrmManager]::[onEvent]::[%d TYPE_ALL_RIGHTS_REMOVED]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
