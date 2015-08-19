.class public Lcom/showmax/app/ShowMaxApp;
.super Landroid/app/Application;
.source "ShowMaxApp.java"

# interfaces
.implements Lcom/showmax/app/Defs;


# static fields
.field private static final DEFAULT_BANNER_IMAGE_ID:I = 0x7f0200eb

.field private static final DEFAULT_LANDSCAPE_IMAGE_ID:I = 0x7f0200e9

.field private static final DEFAULT_MOVIE_DETAIL_IMAGE_ID:I = 0x7f0200ec

.field private static final DEFAULT_PORTRAIT_IMAGE_ID:I = 0x7f0200ea

.field private static final DEFAULT_TV_SERIES_DETAIL_IMAGE_ID:I = 0x7f0200ed

.field private static final TAG:Ljava/lang/String;

.field public static sDEFAULT_ADVERTISEMENT_HEIGHT:I

.field public static sDEFAULT_ASSET_HEADER_HEIGHT:I

.field public static sDEFAULT_LANDSCAPE_EPISODE_HEIGHT:I

.field public static sDEFAULT_PORTRAIT_ASSET_HEIGHT:I

.field public static sDEFAULT_TV_SERIES_HEADER_HEIGHT:I

.field private static sInstance:Lcom/showmax/app/ShowMaxApp;


# instance fields
.field private final MAX_ACTIVITY_TRANSITION_TIME_MS:J

.field private mActivityTransitionTimer:Ljava/util/Timer;

.field private mActivityTransitionTimerTask:Ljava/util/TimerTask;

.field private mApiSettings:Lcom/showmax/lib/api/io/ApiSettings;

.field private mAuthenticationFinishedEvent:Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;

.field private mAvailableSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            ">;"
        }
    .end annotation
.end field

.field private mBrandingPartner:Lcom/showmax/lib/api/model/user/BrandingPartner;

.field private mComponentCallbacks2:Landroid/content/ComponentCallbacks2;

.field private mDataManager:Lcom/showmax/app/io/DataManager;

.field private mSubscriptionPricelistList:Lcom/showmax/lib/api/model/billing/PricelistList;

.field private mSubscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

.field private sDeviceId:Ljava/lang/String;

.field public wasInBackground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/showmax/app/ShowMaxApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ShowMaxApp;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 69
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/showmax/app/ShowMaxApp;->MAX_ACTIVITY_TRANSITION_TIME_MS:J

    .line 267
    new-instance v0, Lcom/showmax/app/ShowMaxApp$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ShowMaxApp$1;-><init>(Lcom/showmax/app/ShowMaxApp;)V

    iput-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mComponentCallbacks2:Landroid/content/ComponentCallbacks2;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/showmax/app/ShowMaxApp;
    .locals 2

    .prologue
    .line 170
    const-class v0, Lcom/showmax/app/ShowMaxApp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/showmax/app/ShowMaxApp;->sInstance:Lcom/showmax/app/ShowMaxApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initDefaultImageHeights()V
    .locals 6

    .prologue
    const v3, 0x3f4ccccd    # 0.8f

    .line 298
    invoke-virtual {p0}, Lcom/showmax/app/ShowMaxApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 299
    .local v1, "resources":Landroid/content/res/Resources;
    const v0, 0x3f4ccccd    # 0.8f

    .line 301
    .local v0, "fixFactor":F
    const v2, 0x7f0a011c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sput v2, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_PORTRAIT_ASSET_HEIGHT:I

    .line 303
    const v2, 0x7f0a007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sput v2, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_LANDSCAPE_EPISODE_HEIGHT:I

    .line 305
    const v2, 0x7f0a006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sput v2, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_ADVERTISEMENT_HEIGHT:I

    .line 307
    const v2, 0x7f0a0064

    .line 308
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    .line 307
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sput v2, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_ASSET_HEADER_HEIGHT:I

    .line 311
    const v2, 0x7f0a0076

    .line 312
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    .line 311
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sput v2, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_TV_SERIES_HEADER_HEIGHT:I

    .line 315
    const-string v2, "[%s]::[initDefaultImageHeights]::[sDEFAULT_PORTRAIT_ASSET_HEIGHT: %d]::[sDEFAULT_LANDSCAPE_EPISODE_HEIGHT: %d]::[sDEFAULT_ADVERTISEMENT_HEIGHT: %d]::[sDEFAULT_ASSET_HEADER_HEIGHT: %d]::[sDEFAULT_TV_SERIES_HEADER_HEIGHT: %d]"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/showmax/app/ShowMaxApp;->TAG:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget v5, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_PORTRAIT_ASSET_HEIGHT:I

    .line 317
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget v5, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_LANDSCAPE_EPISODE_HEIGHT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget v5, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_ADVERTISEMENT_HEIGHT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget v5, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_ASSET_HEADER_HEIGHT:I

    .line 318
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget v5, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_TV_SERIES_HEADER_HEIGHT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 315
    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    return-void
.end method


# virtual methods
.method public getAppPreflightRequestBody()Lcom/showmax/lib/api/model/AppPreflightRequestBody;
    .locals 6

    .prologue
    .line 234
    new-instance v0, Lcom/showmax/lib/api/model/AppPreflightRequestBody;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/AppPreflightRequestBody;-><init>()V

    .line 235
    .local v0, "body":Lcom/showmax/lib/api/model/AppPreflightRequestBody;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/showmax/lib/api/model/AppPreflightRequestBody;->timestamp:J

    .line 236
    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v2

    iget-object v2, v2, Lcom/showmax/app/Build;->VERSION_NAME:Ljava/lang/String;

    iput-object v2, v0, Lcom/showmax/lib/api/model/AppPreflightRequestBody;->version:Ljava/lang/String;

    .line 238
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "userId":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    iput-object v1, v0, Lcom/showmax/lib/api/model/AppPreflightRequestBody;->userId:Ljava/lang/String;

    .line 243
    :cond_0
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/showmax/lib/api/model/AppPreflightRequestBody;->language:Ljava/lang/String;

    .line 244
    const v2, 0x7f0d0052

    invoke-virtual {p0, v2}, Lcom/showmax/app/ShowMaxApp;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/showmax/lib/api/model/AppPreflightRequestBody;->store:Ljava/lang/String;

    .line 245
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/showmax/app/ShowMaxApp;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/showmax/lib/api/model/AppPreflightRequestBody;->deviceId:Ljava/lang/String;

    .line 246
    iget-object v2, p0, Lcom/showmax/app/ShowMaxApp;->mApiSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v2}, Lcom/showmax/lib/api/io/ApiSettings;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/showmax/lib/api/model/AppPreflightRequestBody;->userAgent:Ljava/lang/String;

    .line 247
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/showmax/lib/api/model/AppPreflightRequestBody;->drm:Ljava/util/ArrayList;

    .line 248
    iget-object v2, v0, Lcom/showmax/lib/api/model/AppPreflightRequestBody;->drm:Ljava/util/ArrayList;

    const-string v3, "widevine"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    return-object v0
.end method

.method public getAuthenticationFinishedEvent()Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mAuthenticationFinishedEvent:Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;

    .line 327
    .local v0, "temp":Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/showmax/app/ShowMaxApp;->mAuthenticationFinishedEvent:Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;

    .line 328
    return-object v0
.end method

.method public getAvailableSections()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mAvailableSections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBrandingPartner()Lcom/showmax/lib/api/model/user/BrandingPartner;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mBrandingPartner:Lcom/showmax/lib/api/model/user/BrandingPartner;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mApiSettings:Lcom/showmax/lib/api/io/ApiSettings;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mApiSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v0}, Lcom/showmax/lib/api/io/ApiSettings;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSection(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Section;
    .locals 3
    .param p1, "sectionSlug"    # Ljava/lang/String;

    .prologue
    .line 254
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/showmax/app/ShowMaxApp;->mAvailableSections:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/showmax/app/ShowMaxApp;->mAvailableSections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Section;

    .line 258
    .local v0, "section":Lcom/showmax/lib/api/model/catalogue/Section;
    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Section;->slug:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    .end local v0    # "section":Lcom/showmax/lib/api/model/catalogue/Section;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubscriptionPricelistList()Lcom/showmax/lib/api/model/billing/PricelistList;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mSubscriptionPricelistList:Lcom/showmax/lib/api/model/billing/PricelistList;

    return-object v0
.end method

.method public getSubscriptionStatus()Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mSubscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    return-object v0
.end method

.method public initAvailableLanguages(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    invoke-static {p1}, Lcom/showmax/lib/api/utils/LanguageUtils;->initInstance(Ljava/util/ArrayList;)V

    .line 230
    return-void
.end method

.method public isAppInitiated()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mAvailableSections:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mAvailableSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 105
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 108
    invoke-static {p0}, Lcom/showmax/app/Build;->initInstance(Landroid/content/Context;)V

    .line 110
    const-string v0, "[=============================================================================]"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    const-string v0, "[=================================== START ===================================]"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    const-string v0, "[=============================================================================]"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    sput-object p0, Lcom/showmax/app/ShowMaxApp;->sInstance:Lcom/showmax/app/ShowMaxApp;

    .line 116
    const-string v0, "[============================ VersionName: %s ============================]"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v2

    iget-object v2, v2, Lcom/showmax/app/Build;->VERSION_NAME:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 122
    iput-object v8, p0, Lcom/showmax/app/ShowMaxApp;->mSubscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    .line 126
    invoke-direct {p0}, Lcom/showmax/app/ShowMaxApp;->initDefaultImageHeights()V

    .line 129
    const-string v0, ""

    invoke-static {v6, v0}, Lcom/showmax/app/util/MauBug;->initInstance(ZLjava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/showmax/app/ShowMaxApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 135
    const v1, 0x7f0200ea

    const v2, 0x7f0200e9

    const v3, 0x7f0200eb

    const v4, 0x7f0200ec

    const v5, 0x7f0200ed

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/showmax/lib/api/utils/MauImage;->initImageLoader(Landroid/app/Application;IIIIIZ)V

    .line 139
    invoke-static {p0}, Lcom/showmax/lib/api/utils/DeviceId;->getId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ShowMaxApp;->sDeviceId:Ljava/lang/String;

    .line 140
    const-string v0, "[%s]::[DeviceId: %s]"

    new-array v1, v9, [Ljava/lang/Object;

    sget-object v2, Lcom/showmax/app/ShowMaxApp;->TAG:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/showmax/app/ShowMaxApp;->sDeviceId:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    new-instance v0, Lcom/showmax/lib/api/io/ApiSettings$Builder;

    invoke-direct {v0}, Lcom/showmax/lib/api/io/ApiSettings$Builder;-><init>()V

    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v1

    iget-object v1, v1, Lcom/showmax/app/Build;->ICFLIX_API_ENVIRONMENT:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/ApiSettings$Builder;->environment(Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;)Lcom/showmax/lib/api/io/ApiSettings$Builder;

    move-result-object v0

    .line 144
    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v1

    iget-object v1, v1, Lcom/showmax/app/Build;->ICFLIX_API_PROTOCOL:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/ApiSettings$Builder;->protocol(Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;)Lcom/showmax/lib/api/io/ApiSettings$Builder;

    move-result-object v0

    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v1

    iget-object v1, v1, Lcom/showmax/app/Build;->ICFLIX_API_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/ApiSettings$Builder;->version(Ljava/lang/String;)Lcom/showmax/lib/api/io/ApiSettings$Builder;

    move-result-object v0

    sget-object v1, Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;->ANDROID:Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    .line 145
    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/ApiSettings$Builder;->platform(Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;)Lcom/showmax/lib/api/io/ApiSettings$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ShowMaxApp;->sDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/ApiSettings$Builder;->deviceId(Ljava/lang/String;)Lcom/showmax/lib/api/io/ApiSettings$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/showmax/lib/api/io/ApiSettings$Builder;->build()Lcom/showmax/lib/api/io/ApiSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mApiSettings:Lcom/showmax/lib/api/io/ApiSettings;

    .line 149
    const-string v0, "[%s]::[UserAgent: %s]"

    new-array v1, v9, [Ljava/lang/Object;

    sget-object v2, Lcom/showmax/app/ShowMaxApp;->TAG:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/showmax/app/ShowMaxApp;->mApiSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v2}, Lcom/showmax/lib/api/io/ApiSettings;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mApiSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-static {v0}, Lcom/showmax/lib/api/io/CatalogueApi;->initInstance(Lcom/showmax/lib/api/io/ApiSettings;)V

    .line 152
    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mApiSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-static {v0}, Lcom/showmax/lib/api/io/UserApi;->initInstance(Lcom/showmax/lib/api/io/ApiSettings;)V

    .line 153
    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mApiSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-static {v0}, Lcom/showmax/lib/api/io/LogApi;->initInstance(Lcom/showmax/lib/api/io/ApiSettings;)V

    .line 155
    invoke-static {p0}, Lcom/showmax/app/io/DataManager;->initInstance(Lcom/showmax/app/ShowMaxApp;)V

    .line 157
    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mComponentCallbacks2:Landroid/content/ComponentCallbacks2;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ShowMaxApp;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 160
    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v0

    iget-boolean v0, v0, Lcom/showmax/app/Build;->G_ANALYTICS:Z

    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v1

    iget-object v1, v1, Lcom/showmax/app/Build;->VERSION_NAME:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/showmax/app/util/analytics/MauAnalytics;->initInstance(Landroid/content/Context;ZLjava/lang/String;)V

    .line 162
    invoke-static {p0}, Lcom/showmax/app/util/MauFlurry;->startSession(Landroid/content/Context;)V

    .line 163
    invoke-static {p0}, Lcom/showmax/app/util/MauFlurry;->onNavAppStart(Landroid/content/Context;)V

    .line 164
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/showmax/app/util/analytics/MauAnalytics;->onAppStart(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/showmax/app/util/analytics/LogEventManager;->onAppStart(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public onEvent(Lcom/showmax/app/io/event/ApiErrorEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/showmax/app/io/event/ApiErrorEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 341
    const-string v4, "[%s]::[onEvent]::[ApiErrorEvent]::[%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/showmax/app/ShowMaxApp;->TAG:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    invoke-virtual {p1}, Lcom/showmax/app/io/event/ApiErrorEvent;->getError()Lcom/showmax/lib/api/model/error/RawError;

    move-result-object v0

    .line 343
    .local v0, "error":Lcom/showmax/lib/api/model/error/RawError;
    if-eqz v0, :cond_2

    iget v4, v0, Lcom/showmax/lib/api/model/error/RawError;->status:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_2

    .line 345
    iget v2, v0, Lcom/showmax/lib/api/model/error/RawError;->status:I

    .line 346
    .local v2, "status":I
    iget-object v1, v0, Lcom/showmax/lib/api/model/error/RawError;->message:Ljava/lang/String;

    .line 347
    .local v1, "message":Ljava/lang/String;
    iget-object v3, v0, Lcom/showmax/lib/api/model/error/RawError;->url:Ljava/lang/String;

    .line 348
    .local v3, "url":Ljava/lang/String;
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v4

    if-nez v1, :cond_0

    const-string v1, "null"

    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_1

    const-string v3, "null"

    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v2, v1, v3}, Lcom/showmax/app/util/analytics/MauAnalytics;->onApiError(ILjava/lang/String;Ljava/lang/String;)V

    .line 350
    .end local v2    # "status":I
    :cond_2
    return-void
.end method

.method public onEvent(Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 334
    const-string v0, "[%s]::[onEvent]::[AuthenticationFinishedEvent]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ShowMaxApp;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    iput-object p1, p0, Lcom/showmax/app/ShowMaxApp;->mAuthenticationFinishedEvent:Lcom/showmax/lib/api/io/eventbus/event/AuthenticationFinishedEvent;

    .line 336
    return-void
.end method

.method public setAvailableSections(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "availableSections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Section;>;"
    iput-object p1, p0, Lcom/showmax/app/ShowMaxApp;->mAvailableSections:Ljava/util/ArrayList;

    .line 176
    return-void
.end method

.method public setBrandingPartner(Lcom/showmax/lib/api/model/user/BrandingPartner;)V
    .locals 0
    .param p1, "partner"    # Lcom/showmax/lib/api/model/user/BrandingPartner;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/showmax/app/ShowMaxApp;->mBrandingPartner:Lcom/showmax/lib/api/model/user/BrandingPartner;

    .line 186
    return-void
.end method

.method public setSubscriptionPricelistList(Lcom/showmax/lib/api/model/billing/PricelistList;)V
    .locals 0
    .param p1, "subscriptionPricelistList"    # Lcom/showmax/lib/api/model/billing/PricelistList;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/showmax/app/ShowMaxApp;->mSubscriptionPricelistList:Lcom/showmax/lib/api/model/billing/PricelistList;

    .line 211
    return-void
.end method

.method public setSubscriptionStatus(Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;)V
    .locals 0
    .param p1, "subscriptionStatus"    # Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/showmax/app/ShowMaxApp;->mSubscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    .line 201
    return-void
.end method

.method public startActivityTransitionTimer()V
    .locals 4

    .prologue
    .line 354
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mActivityTransitionTimer:Ljava/util/Timer;

    .line 355
    new-instance v0, Lcom/showmax/app/ShowMaxApp$2;

    invoke-direct {v0, p0}, Lcom/showmax/app/ShowMaxApp$2;-><init>(Lcom/showmax/app/ShowMaxApp;)V

    iput-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mActivityTransitionTimerTask:Ljava/util/TimerTask;

    .line 363
    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mActivityTransitionTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/showmax/app/ShowMaxApp;->mActivityTransitionTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 365
    return-void
.end method

.method public stopActivityTransitionTimer()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mActivityTransitionTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mActivityTransitionTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mActivityTransitionTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/showmax/app/ShowMaxApp;->mActivityTransitionTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 379
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/showmax/app/ShowMaxApp;->wasInBackground:Z

    .line 380
    return-void
.end method
