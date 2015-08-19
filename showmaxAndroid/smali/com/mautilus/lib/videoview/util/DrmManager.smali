.class public Lcom/mautilus/lib/videoview/util/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;,
        Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;
    }
.end annotation


# instance fields
.field private mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private mListener:Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;

.field private mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field private mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

.field private mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/mautilus/lib/videoview/util/DrmManager$1;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/util/DrmManager$1;-><init>(Lcom/mautilus/lib/videoview/util/DrmManager;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/util/DrmManager;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 117
    new-instance v0, Lcom/mautilus/lib/videoview/util/DrmManager$2;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/util/DrmManager$2;-><init>(Lcom/mautilus/lib/videoview/util/DrmManager;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/util/DrmManager;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 137
    new-instance v0, Lcom/mautilus/lib/videoview/util/DrmManager$3;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/util/DrmManager$3;-><init>(Lcom/mautilus/lib/videoview/util/DrmManager;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/util/DrmManager;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    .line 37
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/util/DrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 38
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/util/DrmManager;->prepareDrm()V

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/util/DrmManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mautilus/lib/videoview/util/DrmManager;->mListener:Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/util/DrmManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mautilus/lib/videoview/util/DrmManager;->mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mautilus/lib/videoview/util/DrmManager;)Landroid/drm/DrmManagerClient;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/util/DrmManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mautilus/lib/videoview/util/DrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method private prepareDrm()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 54
    iget-object v2, p0, Lcom/mautilus/lib/videoview/util/DrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    iget-object v4, p0, Lcom/mautilus/lib/videoview/util/DrmManager;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    invoke-virtual {v2, v4}, Landroid/drm/DrmManagerClient;->setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V

    .line 55
    iget-object v2, p0, Lcom/mautilus/lib/videoview/util/DrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    iget-object v4, p0, Lcom/mautilus/lib/videoview/util/DrmManager;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    invoke-virtual {v2, v4}, Landroid/drm/DrmManagerClient;->setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V

    .line 56
    iget-object v2, p0, Lcom/mautilus/lib/videoview/util/DrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    iget-object v4, p0, Lcom/mautilus/lib/videoview/util/DrmManager;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    invoke-virtual {v2, v4}, Landroid/drm/DrmManagerClient;->setOnInfoListener(Landroid/drm/DrmManagerClient$OnInfoListener;)V

    .line 59
    iget-object v2, p0, Lcom/mautilus/lib/videoview/util/DrmManager;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2}, Landroid/drm/DrmManagerClient;->getAvailableDrmEngines()[Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "engines":[Ljava/lang/String;
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 62
    .local v0, "engine":Ljava/lang/String;
    const-string v5, "[DrmManager]::[prepareDrm]::[available engines: %s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v5, v6}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "engine":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public initDrm(Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;)V
    .locals 2
    .param p1, "asset"    # Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mautilus/lib/videoview/util/DrmManager;->mAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    .line 49
    new-instance v0, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;-><init>(Lcom/mautilus/lib/videoview/util/DrmManager;Lcom/mautilus/lib/videoview/util/DrmManager$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/util/DrmManager$InitDrmTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50
    return-void
.end method

.method public setDrmManagerListener(Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mautilus/lib/videoview/util/DrmManager;->mListener:Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;

    .line 44
    return-void
.end method
