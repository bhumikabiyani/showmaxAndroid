.class public Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;
.super Ljava/lang/Object;
.source "ActivityPlayer.java"

# interfaces
.implements Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidevineAsset"
.end annotation


# instance fields
.field private mDeviceKey:Ljava/lang/String;

.field private mPortalKey:Ljava/lang/String;

.field private mServerKey:Ljava/lang/String;

.field private mUrlKey:Ljava/lang/String;

.field private mUserData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1020
    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v0

    iget-object v0, v0, Lcom/showmax/app/Build;->DRM_PORTAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;->mPortalKey:Ljava/lang/String;

    .line 1021
    const-string v0, "{\"userId\":\"%s\",\"sessionId\":\"default\"}"

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;->mUserData:Ljava/lang/String;

    .line 1025
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/lib/api/io/CatalogueApi;->getDrmLicenceServerUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;->mServerKey:Ljava/lang/String;

    .line 1026
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;->mUrlKey:Ljava/lang/String;

    .line 1027
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/app/ShowMaxApp;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;->mDeviceKey:Ljava/lang/String;

    .line 1028
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;->mUserData:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;->mUserData:Ljava/lang/String;

    .line 1029
    return-void
.end method


# virtual methods
.method public getDeviceIdKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;->mDeviceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPortalKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;->mPortalKey:Ljava/lang/String;

    return-object v0
.end method

.method public getServerKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;->mServerKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;->mUrlKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUserDataKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;->mUserData:Ljava/lang/String;

    return-object v0
.end method
