.class public Lcom/showmax/lib/api/io/CatalogueApi;
.super Ljava/lang/Object;
.source "CatalogueApi.java"

# interfaces
.implements Lcom/showmax/lib/api/io/ApiConstants;


# static fields
.field private static final FORCE_WIDEVINE:Z = true

.field private static final LOG:Z = true

.field private static sInstance:Lcom/showmax/lib/api/io/CatalogueApi;


# instance fields
.field private mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

.field private mSettings:Lcom/showmax/lib/api/io/ApiSettings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method private constructor <init>(Lcom/showmax/lib/api/io/ApiSettings;)V
    .locals 2
    .param p1, "settings"    # Lcom/showmax/lib/api/io/ApiSettings;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "settings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    .line 121
    invoke-direct {p0}, Lcom/showmax/lib/api/io/CatalogueApi;->init()V

    .line 122
    return-void
.end method

.method public static getInstance()Lcom/showmax/lib/api/io/CatalogueApi;
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/showmax/lib/api/io/CatalogueApi;->sInstance:Lcom/showmax/lib/api/io/CatalogueApi;

    if-nez v0, :cond_0

    .line 103
    const-string v0, "[CatalogueApi]::[getInstance]::[sInstance is null]"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :cond_0
    sget-object v0, Lcom/showmax/lib/api/io/CatalogueApi;->sInstance:Lcom/showmax/lib/api/io/CatalogueApi;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 126
    iget-object v4, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v4}, Lcom/showmax/lib/api/io/ApiSettings;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "deviceId":Ljava/lang/String;
    iget-object v4, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v4}, Lcom/showmax/lib/api/io/ApiSettings;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "userAgent":Ljava/lang/String;
    new-instance v4, Lretrofit/RestAdapter$Builder;

    invoke-direct {v4}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v5, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    .line 130
    invoke-virtual {v5}, Lcom/showmax/lib/api/io/ApiSettings;->getApiEndpoint()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    sget-object v5, Lretrofit/RestAdapter$LogLevel;->BASIC:Lretrofit/RestAdapter$LogLevel;

    .line 131
    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    new-instance v5, Lcom/showmax/lib/api/io/ApiRequestInterceptor;

    invoke-direct {v5, v2, v3}, Lcom/showmax/lib/api/io/ApiRequestInterceptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    .line 134
    .local v1, "builder":Lretrofit/RestAdapter$Builder;
    iget-object v4, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v4}, Lcom/showmax/lib/api/io/ApiSettings;->isFullLogsEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    sget-object v4, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v1, v4}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    .line 139
    :cond_0
    invoke-virtual {v1}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 140
    .local v0, "adapter":Lretrofit/RestAdapter;
    const-class v4, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-virtual {v0, v4}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    iput-object v4, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    .line 141
    return-void
.end method

.method public static initInstance(Lcom/showmax/lib/api/io/ApiSettings;)V
    .locals 1
    .param p0, "settings"    # Lcom/showmax/lib/api/io/ApiSettings;

    .prologue
    .line 85
    const-string v0, "[CatalogueApi]::[initInstance]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/showmax/lib/api/io/CatalogueApi;->sInstance:Lcom/showmax/lib/api/io/CatalogueApi;

    if-nez v0, :cond_0

    .line 88
    const-string v0, "[CatalogueApi]::[initInstance]::[sInstance is null, create a new instance]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/showmax/lib/api/io/CatalogueApi;

    invoke-direct {v0, p0}, Lcom/showmax/lib/api/io/CatalogueApi;-><init>(Lcom/showmax/lib/api/io/ApiSettings;)V

    sput-object v0, Lcom/showmax/lib/api/io/CatalogueApi;->sInstance:Lcom/showmax/lib/api/io/CatalogueApi;

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public getDrmLicenceServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v0}, Lcom/showmax/lib/api/io/ApiSettings;->getDrmLicenceServerUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAssetPurchased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/billing/Transaction;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "assetId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 657
    const-string v0, "[CatalogueApi]::[isAssetPurchased]::[id: %s]::[async]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3, p2}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->isAssetPurchased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/billing/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public isAssetPurchased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "assetId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/billing/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 651
    .local p4, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/showmax/lib/api/model/billing/Transaction;>;"
    const-string v0, "[CatalogueApi]::[isAssetPurchased]::[id: %s]::[async]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3, p2, p4}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->isAssetPurchased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 653
    return-void
.end method

.method public loadAdvertisements(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/catalogue/AdvertisementList;
    .locals 3
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .prologue
    .line 404
    const-string v0, "[CatalogueApi]::[loadAdvertisements]::[sync]::[section: %s]::[language: %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0, p1, p2}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getAdvertisement(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/catalogue/AdvertisementList;

    move-result-object v0

    return-object v0
.end method

.method public loadAdvertisements(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V
    .locals 3
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/AdvertisementList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p3, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/showmax/lib/api/model/catalogue/AdvertisementList;>;"
    const-string v0, "[CatalogueApi]::[loadAdvertisements]::[async]::[section: %s]::[language: %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0, p1, p2, p3}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getAdvertisement(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V

    .line 383
    return-void
.end method

.method public loadAssetById(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/catalogue/Asset;
    .locals 3
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .prologue
    .line 324
    const-string v0, "[CatalogueApi]::[loadAssetById]::[sync]::[assetId: %s]::[language: %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0, p1, p2}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getAssetById(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/catalogue/Asset;

    move-result-object v0

    return-object v0
.end method

.method public loadAssetById(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V
    .locals 3
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p3, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    const-string v0, "[CatalogueApi]::[loadAssetById]::[async]::[assetId: %s]::[language: %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0, p1, p2, p3}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getAssetById(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V

    .line 309
    return-void
.end method

.method public loadAssetPricelist(Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/billing/PricelistList;
    .locals 3
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "masterUserId"    # Ljava/lang/String;

    .prologue
    .line 645
    const-string v0, "[CatalogueApi]::[loadAssetPricelist]::[id: %s]::[sync]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 646
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0, p1, p2}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getAssetPricelist(Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/billing/PricelistList;

    move-result-object v0

    return-object v0
.end method

.method public loadAssetPricelist(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .locals 3
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "masterUserId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/billing/PricelistList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 639
    .local p3, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/showmax/lib/api/model/billing/PricelistList;>;"
    const-string v0, "[CatalogueApi]::[loadAssetPricelist]::[id: %s]::[async]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0, p1, p2, p3}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getAssetPricelist(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 641
    return-void
.end method

.method public loadAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/String;Ljava/lang/Integer;)Lcom/showmax/lib/api/model/catalogue/AssetList;
    .locals 7
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .param p3, "category"    # Lcom/showmax/lib/api/model/catalogue/Category;
    .param p4, "assetType"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .param p5, "query"    # Ljava/lang/String;
    .param p6, "num"    # Ljava/lang/Integer;

    .prologue
    .line 288
    const-string v0, "[CatalogueApi]::[getAssets]::[sync]::[section: %s]::[language: %s]::[category: %s]::[assetType: %s]::[query: %s]::[num: %s]"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/String;Ljava/lang/Integer;)Lcom/showmax/lib/api/model/catalogue/AssetList;

    move-result-object v0

    return-object v0
.end method

.method public loadAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/String;Ljava/lang/Integer;Lretrofit/Callback;)V
    .locals 8
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .param p3, "category"    # Lcom/showmax/lib/api/model/catalogue/Category;
    .param p4, "assetType"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .param p5, "query"    # Ljava/lang/String;
    .param p6, "num"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            "Lcom/showmax/lib/api/model/catalogue/Asset$Type;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/AssetList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p7, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/showmax/lib/api/model/catalogue/AssetList;>;"
    const-string v0, "[CatalogueApi]::[getAssets]::[async]::[section: %s]::[language: %s]::[category: %s]::[assetType: %s]::[query: %s]::[num: %s]"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/String;Ljava/lang/Integer;Lretrofit/Callback;)V

    .line 269
    return-void
.end method

.method public loadAvailableLanguages(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    const-string v0, "[CatalogueApi]::[loadAvailableLanguages]::[sync]::[language: %s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0, p1}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getAvailableLanguages(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadAvailableLanguages(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V
    .locals 4
    .param p1, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Lretrofit/Callback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p2, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;>;"
    const-string v0, "[CatalogueApi]::[loadAvailableLanguages]::[async]::[language: %s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0, p1, p2}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getAvailableLanguages(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V

    .line 196
    return-void
.end method

.method public loadCategories(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/io/ApiConstants$CategoryType;)Lcom/showmax/lib/api/model/catalogue/CategoryList;
    .locals 3
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .param p3, "categoryType"    # Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    .prologue
    .line 244
    const-string v0, "[CatalogueApi]::[loadCategories]::[sync]::[section: %s]::[language: %s]::[type: %s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0, p1, p2, p3}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getCategories(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/io/ApiConstants$CategoryType;)Lcom/showmax/lib/api/model/catalogue/CategoryList;

    move-result-object v0

    return-object v0
.end method

.method public loadCategories(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/io/ApiConstants$CategoryType;Lretrofit/Callback;)V
    .locals 3
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .param p3, "categoryType"    # Lcom/showmax/lib/api/io/ApiConstants$CategoryType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Lcom/showmax/lib/api/io/ApiConstants$CategoryType;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/CategoryList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p4, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/showmax/lib/api/model/catalogue/CategoryList;>;"
    const-string v0, "[CatalogueApi]::[loadCategories]::[async]::[section: %s]::[language: %s]::[type: %s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getCategories(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/io/ApiConstants$CategoryType;Lretrofit/Callback;)V

    .line 228
    return-void
.end method

.method public loadGrossingAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Ljava/lang/Integer;)Lcom/showmax/lib/api/model/catalogue/AssetList;
    .locals 3
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .param p3, "num"    # Ljava/lang/Integer;

    .prologue
    .line 442
    const-string v0, "[CatalogueApi]::[loadAdvertisements]::[sync]::[section: %s]::[language: %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0, p1, p2, p3}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getGrossingAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Ljava/lang/Integer;)Lcom/showmax/lib/api/model/catalogue/AssetList;

    move-result-object v0

    return-object v0
.end method

.method public loadGrossingAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Ljava/lang/Integer;Lretrofit/Callback;)V
    .locals 3
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .param p3, "num"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Ljava/lang/Integer;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/AssetList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p4, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/showmax/lib/api/model/catalogue/AssetList;>;"
    const-string v0, "[CatalogueApi]::[loadGrossingAssets]::[async]::[section: %s]::[language: %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getGrossingAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Ljava/lang/Integer;Lretrofit/Callback;)V

    .line 425
    return-void
.end method

.method public loadPlaybackUrl(Ljava/lang/String;Z)Lcom/showmax/lib/api/model/catalogue/PlayVideo;
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "forceWidevine"    # Z

    .prologue
    .line 516
    const-string v0, "[CatalogueApi]::[loadPlaybackUrl]::[sync]::[videoId: %s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    iget-object v1, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-interface {v1, p1, v0}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getPlaybackUrl(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/showmax/lib/api/model/catalogue/PlayVideo;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadPlaybackUrl(Ljava/lang/String;ZLretrofit/Callback;)V
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "forceWidevine"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/PlayVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p3, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/showmax/lib/api/model/catalogue/PlayVideo;>;"
    const-string v0, "[CatalogueApi]::[loadPlaybackUrl]::[async]::[videoId: %s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    iget-object v1, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-interface {v1, p1, v0, p3}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getPlaybackUrl(Ljava/lang/String;Ljava/lang/Boolean;Lretrofit/Callback;)V

    .line 504
    return-void

    .line 503
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadPromotedAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;Ljava/lang/Integer;)Lcom/showmax/lib/api/model/catalogue/AssetList;
    .locals 3
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .param p3, "promotedAssetType"    # Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;
    .param p4, "num"    # Ljava/lang/Integer;

    .prologue
    .line 484
    const-string v0, "[CatalogueApi]::[loadPromotedAssets]::[sync]::[%s]::[section: %s]::[language: %s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0, p3, p1, p2, p4}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getPromotedAssets(Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Ljava/lang/Integer;)Lcom/showmax/lib/api/model/catalogue/AssetList;

    move-result-object v0

    return-object v0
.end method

.method public loadPromotedAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;Ljava/lang/Integer;Lretrofit/Callback;)V
    .locals 6
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .param p3, "promotedAssetType"    # Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;
    .param p4, "num"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;",
            "Ljava/lang/Integer;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/AssetList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p5, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/showmax/lib/api/model/catalogue/AssetList;>;"
    const-string v0, "[CatalogueApi]::[loadPromotedAssets]::[async]::[%s]::[section: %s]::[language: %s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getPromotedAssets(Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Ljava/lang/Integer;Lretrofit/Callback;)V

    .line 466
    return-void
.end method

.method public loadRecommendedAssetsAnonymous(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .param p3, "assetType"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .param p4, "num"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Lcom/showmax/lib/api/model/catalogue/Asset$Type;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 614
    const-string v0, "[CatalogueApi]::[loadRecommendedAssetsAnonymous]::[sync]::[assetId: %s]::[language: %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getRecommendedAssetsAnonymous(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadRecommendedAssetsAnonymous(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/Integer;Lretrofit/Callback;)V
    .locals 6
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .param p3, "assetType"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .param p4, "num"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Lcom/showmax/lib/api/model/catalogue/Asset$Type;",
            "Ljava/lang/Integer;",
            "Lretrofit/Callback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p5, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;>;"
    const-string v0, "[CatalogueApi]::[loadRecommendedAssetsAnonymous]::[async]::[assetId: %s]::[language: %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getRecommendedAssetsAnonymous(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/Integer;Lretrofit/Callback;)V

    .line 598
    return-void
.end method

.method public loadSections()Lcom/showmax/lib/api/model/catalogue/SectionList;
    .locals 1

    .prologue
    .line 181
    const-string v0, "[CatalogueApi]::[loadSections]::[sync]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getSections()Lcom/showmax/lib/api/model/catalogue/SectionList;

    move-result-object v0

    return-object v0
.end method

.method public loadSections(Lretrofit/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/SectionList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/showmax/lib/api/model/catalogue/SectionList;>;"
    const-string v0, "[CatalogueApi]::[loadSections]::[async]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0, p1}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getSections(Lretrofit/Callback;)V

    .line 170
    return-void
.end method

.method public loadSubscriptionPricelist()Lcom/showmax/lib/api/model/billing/PricelistList;
    .locals 1

    .prologue
    .line 633
    const-string v0, "[CatalogueApi]::[loadSubscriptionPricelist]::[sync]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getSubscriptionPricelist()Lcom/showmax/lib/api/model/billing/PricelistList;

    move-result-object v0

    return-object v0
.end method

.method public loadSubscriptionPricelist(Lretrofit/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/billing/PricelistList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 627
    .local p1, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/showmax/lib/api/model/billing/PricelistList;>;"
    const-string v0, "[CatalogueApi]::[loadSubscriptionPricelist]::[async]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0, p1}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getSubscriptionPricelist(Lretrofit/Callback;)V

    .line 629
    return-void
.end method

.method public loadUserlistAssets(Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/catalogue/AssetList;
    .locals 4
    .param p1, "userlist"    # Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .prologue
    .line 358
    const-string v0, "[CatalogueApi]::[loadUserlistAssets]::[sync]::[userlist: %s]::[language: %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-virtual {p1}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->getArrayOfItemIds()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getAssetsbyIds(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;[Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/AssetList;

    move-result-object v0

    return-object v0
.end method

.method public loadUserlistAssets(Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V
    .locals 4
    .param p1, "userlist"    # Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    .param p2, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;",
            "Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/AssetList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p3, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/showmax/lib/api/model/catalogue/AssetList;>;"
    const-string v0, "[CatalogueApi]::[loadUserlistAssets]::[async]::[userlist: %s]::[language: %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-virtual {p1}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->getArrayOfItemIds()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1, p3}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getAssetsbyIds(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;[Ljava/lang/String;Lretrofit/Callback;)V

    .line 343
    return-void
.end method

.method public loadWelcomeVideoUrl()Lcom/showmax/lib/api/model/catalogue/PlayVideo;
    .locals 3

    .prologue
    .line 541
    const-string v0, "[CatalogueApi]::[loadWelcomeVideoUrl]::[sync]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    const-string v1, "welcome"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getPlaybackUrl(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/showmax/lib/api/model/catalogue/PlayVideo;

    move-result-object v0

    return-object v0
.end method

.method public loadWelcomeVideoUrl(Lretrofit/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/PlayVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 530
    .local p1, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/showmax/lib/api/model/catalogue/PlayVideo;>;"
    const-string v0, "[CatalogueApi]::[loadWelcomeVideoUrl]::[async]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    const-string v1, "welcome"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->getPlaybackUrl(Ljava/lang/String;Ljava/lang/Boolean;Lretrofit/Callback;)V

    .line 532
    return-void
.end method

.method public verifyApp(Lcom/showmax/lib/api/model/AppPreflightRequestBody;Lretrofit/Callback;)V
    .locals 1
    .param p1, "requestBody"    # Lcom/showmax/lib/api/model/AppPreflightRequestBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/model/AppPreflightRequestBody;",
            "Lretrofit/Callback",
            "<",
            "Lcom/showmax/lib/api/model/AppPreflightResponseBody;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 621
    .local p2, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lcom/showmax/lib/api/model/AppPreflightResponseBody;>;"
    const-string v0, "[CatalogueApi]::[verifyApp]::[async]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    invoke-interface {v0, p1, p2}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->verifyApp(Lcom/showmax/lib/api/model/AppPreflightRequestBody;Lretrofit/Callback;)V

    .line 623
    return-void
.end method

.method public verifyPlayback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/client/Response;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "videoId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 578
    const-string v0, "[CatalogueApi]::[verifyPlayback]::[sync]::[videoId: %s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v2}, Lcom/showmax/lib/api/io/ApiSettings;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->verifyPlayback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit/client/Response;

    move-result-object v0

    return-object v0
.end method

.method public verifyPlayback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V
    .locals 6
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "videoId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit/Callback",
            "<",
            "Lretrofit/client/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p4, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lretrofit/client/Response;>;"
    const-string v0, "[CatalogueApi]::[verifyPlayback]::[async]::[videoId: %s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    iget-object v0, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/lib/api/io/CatalogueApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v2}, Lcom/showmax/lib/api/io/ApiSettings;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/showmax/lib/api/io/serviceinterface/CatalogueService;->verifyPlayback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 563
    return-void
.end method
