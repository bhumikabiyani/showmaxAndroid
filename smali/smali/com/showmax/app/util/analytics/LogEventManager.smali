.class public Lcom/showmax/app/util/analytics/LogEventManager;
.super Ljava/lang/Object;
.source "LogEventManager.java"


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/showmax/app/util/analytics/LogEventManager;


# instance fields
.field private mClientId:Ljava/lang/String;

.field private mEnabled:Z

.field private mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/showmax/app/util/analytics/LogEventManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/util/analytics/LogEventManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "clientId"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean p1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    .line 41
    iput-object p2, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mVersion:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mClientId:Ljava/lang/String;

    .line 44
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Lcom/showmax/app/util/analytics/LogEventService;

    invoke-direct {v0}, Lcom/showmax/app/util/analytics/LogEventService;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    .line 48
    :cond_0
    return-void
.end method

.method private createAppGeneralLogEvent(Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;Ljava/lang/String;)Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;
    .locals 3
    .param p1, "appGeneralEvent"    # Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;
    .param p2, "userId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 340
    new-instance v0, Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;

    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mClientId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;)V

    .line 341
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;
    iput-object p2, v0, Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;->userId:Ljava/lang/String;

    .line 342
    return-object v0
.end method

.method private createPlaybackLogEvent(Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    .locals 3
    .param p1, "playbackEvent"    # Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "videoId"    # Ljava/lang/String;

    .prologue
    .line 352
    new-instance v0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;

    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mClientId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;)V

    .line 353
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    iput-object p2, v0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->userId:Ljava/lang/String;

    .line 354
    iput-object p3, v0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->videoId:Ljava/lang/String;

    .line 355
    return-object v0
.end method

.method private createUiNavigationLogEvent(Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;)Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
    .locals 3
    .param p1, "uiNavigationEvent"    # Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    .prologue
    .line 347
    new-instance v0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;

    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mClientId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;)V

    return-object v0
.end method

.method public static getInstance()Lcom/showmax/app/util/analytics/LogEventManager;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/showmax/app/util/analytics/LogEventManager;->sInstance:Lcom/showmax/app/util/analytics/LogEventManager;

    return-object v0
.end method

.method public static initInstance(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "enabled"    # Z
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lcom/showmax/app/util/analytics/LogEventManager;->sInstance:Lcom/showmax/app/util/analytics/LogEventManager;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/showmax/app/util/analytics/LogEventManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/showmax/app/util/analytics/LogEventManager;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/showmax/app/util/analytics/LogEventManager;->sInstance:Lcom/showmax/app/util/analytics/LogEventManager;

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public onApiError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 326
    new-instance v0, Lcom/showmax/lib/api/model/log/ErrorLogEvent;

    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mClientId:Ljava/lang/String;

    sget-object v3, Lcom/showmax/lib/api/model/log/Event$ErrorEvent;->API:Lcom/showmax/lib/api/model/log/Event$ErrorEvent;

    invoke-direct {v0, v1, v2, v3}, Lcom/showmax/lib/api/model/log/ErrorLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/log/Event$ErrorEvent;)V

    .line 327
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/ErrorLogEvent;
    iput-object p2, v0, Lcom/showmax/lib/api/model/log/ErrorLogEvent;->message:Ljava/lang/String;

    .line 328
    iput-object p3, v0, Lcom/showmax/lib/api/model/log/ErrorLogEvent;->url:Ljava/lang/String;

    .line 329
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 331
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/ErrorLogEvent;
    :cond_0
    return-void
.end method

.method public onAppClose(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->CLOSE:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    invoke-direct {p0, v1, p1}, Lcom/showmax/app/util/analytics/LogEventManager;->createAppGeneralLogEvent(Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;Ljava/lang/String;)Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 96
    :cond_0
    return-void
.end method

.method public onAppFirstStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->FIRST_START:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    invoke-direct {p0, v1, p1}, Lcom/showmax/app/util/analytics/LogEventManager;->createAppGeneralLogEvent(Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;Ljava/lang/String;)Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onAppStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->START:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    invoke-direct {p0, v1, p1}, Lcom/showmax/app/util/analytics/LogEventManager;->createAppGeneralLogEvent(Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;Ljava/lang/String;)Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 88
    :cond_0
    return-void
.end method

.method public onAssetPurchaseSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 308
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 310
    new-instance v0, Lcom/showmax/lib/api/model/log/UserLogEvent;

    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mClientId:Ljava/lang/String;

    sget-object v3, Lcom/showmax/lib/api/model/log/Event$UserEvent;->PAYMENT_ASSET_SUCCESS:Lcom/showmax/lib/api/model/log/Event$UserEvent;

    invoke-direct {v0, v1, v2, v3}, Lcom/showmax/lib/api/model/log/UserLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/model/log/Event$UserEvent;)V

    .line 311
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/UserLogEvent;
    iput-object p1, v0, Lcom/showmax/lib/api/model/log/UserLogEvent;->assetId:Ljava/lang/String;

    .line 312
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 314
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/UserLogEvent;
    :cond_0
    return-void
.end method

.method public onNavToAssetDetail(Ljava/lang/String;)V
    .locals 2
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 182
    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->ASSET_DETAIL:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    invoke-direct {p0, v1}, Lcom/showmax/app/util/analytics/LogEventManager;->createUiNavigationLogEvent(Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;)Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;

    move-result-object v0

    .line 183
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
    iput-object p1, v0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->assetId:Ljava/lang/String;

    .line 184
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 186
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
    :cond_0
    return-void
.end method

.method public onNavToMovies(Ljava/lang/String;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 162
    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->MOVIES:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    invoke-direct {p0, v1}, Lcom/showmax/app/util/analytics/LogEventManager;->createUiNavigationLogEvent(Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;)Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;

    move-result-object v0

    .line 163
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
    iput-object p1, v0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->category:Ljava/lang/String;

    .line 164
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 166
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
    :cond_0
    return-void
.end method

.method public onNavToMyAccount()V
    .locals 2

    .prologue
    .line 130
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 132
    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->SECTION:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    invoke-direct {p0, v1}, Lcom/showmax/app/util/analytics/LogEventManager;->createUiNavigationLogEvent(Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;)Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;

    move-result-object v0

    .line 133
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
    const-string v1, "myaccount"

    iput-object v1, v0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->section:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 136
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
    :cond_0
    return-void
.end method

.method public onNavToMyFlix()V
    .locals 2

    .prologue
    .line 140
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 142
    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->SECTION:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    invoke-direct {p0, v1}, Lcom/showmax/app/util/analytics/LogEventManager;->createUiNavigationLogEvent(Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;)Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;

    move-result-object v0

    .line 143
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
    const-string v1, "myflix"

    iput-object v1, v0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->section:Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 146
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
    :cond_0
    return-void
.end method

.method public onNavToSearch(Ljava/lang/String;)V
    .locals 2
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->SEARCH:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    invoke-direct {p0, v1}, Lcom/showmax/app/util/analytics/LogEventManager;->createUiNavigationLogEvent(Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;)Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;

    move-result-object v0

    .line 153
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
    iput-object p1, v0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->keyword:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 156
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
    :cond_0
    return-void
.end method

.method public onNavToSection(Ljava/lang/String;)V
    .locals 2
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 122
    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->SECTION:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    invoke-direct {p0, v1}, Lcom/showmax/app/util/analytics/LogEventManager;->createUiNavigationLogEvent(Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;)Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;

    move-result-object v0

    .line 123
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
    iput-object p1, v0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->section:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 126
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
    :cond_0
    return-void
.end method

.method public onNavToTvShows(Ljava/lang/String;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 172
    sget-object v1, Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;->SHOWS:Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;

    invoke-direct {p0, v1}, Lcom/showmax/app/util/analytics/LogEventManager;->createUiNavigationLogEvent(Lcom/showmax/lib/api/model/log/Event$UiNavigationEvent;)Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;

    move-result-object v0

    .line 173
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
    iput-object p1, v0, Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;->category:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 176
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/UiNavigationLogEvent;
    :cond_0
    return-void
.end method

.method public onPlaybackBufferUnderrun(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionSeconds"    # I

    .prologue
    .line 234
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 236
    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->BUFFER_UNDERRUN:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-direct {p0, v1, p1, p2}, Lcom/showmax/app/util/analytics/LogEventManager;->createPlaybackLogEvent(Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/log/PlaybackLogEvent;

    move-result-object v0

    .line 237
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    iput p3, v0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->position:I

    .line 238
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 240
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    :cond_0
    return-void
.end method

.method public onPlaybackFullScreen(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionSeconds"    # I

    .prologue
    .line 294
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 296
    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->FULLSCREEN:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-direct {p0, v1, p1, p2}, Lcom/showmax/app/util/analytics/LogEventManager;->createPlaybackLogEvent(Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/log/PlaybackLogEvent;

    move-result-object v0

    .line 297
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    iput p3, v0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->position:I

    .line 298
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 300
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    :cond_0
    return-void
.end method

.method public onPlaybackPause(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionSeconds"    # I

    .prologue
    .line 204
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 206
    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->PAUSE:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-direct {p0, v1, p1, p2}, Lcom/showmax/app/util/analytics/LogEventManager;->createPlaybackLogEvent(Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/log/PlaybackLogEvent;

    move-result-object v0

    .line 207
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    iput p3, v0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->position:I

    .line 208
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 210
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    :cond_0
    return-void
.end method

.method public onPlaybackProfileChange(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionSeconds"    # I

    .prologue
    .line 274
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 276
    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->PROFILE_CHANGE:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-direct {p0, v1, p1, p2}, Lcom/showmax/app/util/analytics/LogEventManager;->createPlaybackLogEvent(Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/log/PlaybackLogEvent;

    move-result-object v0

    .line 277
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    iput p3, v0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->position:I

    .line 278
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 280
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    :cond_0
    return-void
.end method

.method public onPlaybackResume(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionSeconds"    # I

    .prologue
    .line 214
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 216
    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->RESUME:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-direct {p0, v1, p1, p2}, Lcom/showmax/app/util/analytics/LogEventManager;->createPlaybackLogEvent(Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/log/PlaybackLogEvent;

    move-result-object v0

    .line 217
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    iput p3, v0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->position:I

    .line 218
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 220
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    :cond_0
    return-void
.end method

.method public onPlaybackResumeUnderrun(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionSeconds"    # I

    .prologue
    .line 224
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 226
    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->RESUME_UNDERRUN:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-direct {p0, v1, p1, p2}, Lcom/showmax/app/util/analytics/LogEventManager;->createPlaybackLogEvent(Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/log/PlaybackLogEvent;

    move-result-object v0

    .line 227
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    iput p3, v0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->position:I

    .line 228
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 230
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    :cond_0
    return-void
.end method

.method public onPlaybackSeek(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionSeconds"    # I

    .prologue
    .line 244
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 246
    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->SEEK:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-direct {p0, v1, p1, p2}, Lcom/showmax/app/util/analytics/LogEventManager;->createPlaybackLogEvent(Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/log/PlaybackLogEvent;

    move-result-object v0

    .line 247
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    iput p3, v0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->position:I

    .line 248
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 250
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    :cond_0
    return-void
.end method

.method public onPlaybackStart(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionSeconds"    # I

    .prologue
    .line 194
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 196
    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->START:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-direct {p0, v1, p1, p2}, Lcom/showmax/app/util/analytics/LogEventManager;->createPlaybackLogEvent(Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/log/PlaybackLogEvent;

    move-result-object v0

    .line 197
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    iput p3, v0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->position:I

    .line 198
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 200
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    :cond_0
    return-void
.end method

.method public onPlaybackStop(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionSeconds"    # I

    .prologue
    .line 264
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 266
    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->STOP:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-direct {p0, v1, p1, p2}, Lcom/showmax/app/util/analytics/LogEventManager;->createPlaybackLogEvent(Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/log/PlaybackLogEvent;

    move-result-object v0

    .line 267
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    iput p3, v0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->position:I

    .line 268
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 270
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    :cond_0
    return-void
.end method

.method public onPlaybackSubtitles(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionSeconds"    # I

    .prologue
    .line 254
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 256
    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->SUBTITLES:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-direct {p0, v1, p1, p2}, Lcom/showmax/app/util/analytics/LogEventManager;->createPlaybackLogEvent(Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/log/PlaybackLogEvent;

    move-result-object v0

    .line 257
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    iput p3, v0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->position:I

    .line 258
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 260
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    :cond_0
    return-void
.end method

.method public onPlaybackThroughput(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionSeconds"    # I

    .prologue
    .line 284
    iget-boolean v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 286
    sget-object v1, Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;->THROUGHPUT:Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;

    invoke-direct {p0, v1, p1, p2}, Lcom/showmax/app/util/analytics/LogEventManager;->createPlaybackLogEvent(Lcom/showmax/lib/api/model/log/Event$PlaybackEvent;Ljava/lang/String;Ljava/lang/String;)Lcom/showmax/lib/api/model/log/PlaybackLogEvent;

    move-result-object v0

    .line 287
    .local v0, "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    iput p3, v0, Lcom/showmax/lib/api/model/log/PlaybackLogEvent;->position:I

    .line 288
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v1, v0}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 290
    .end local v0    # "logEvent":Lcom/showmax/lib/api/model/log/PlaybackLogEvent;
    :cond_0
    return-void
.end method

.method public onResume(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->RESUME:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    invoke-direct {p0, v1, p1}, Lcom/showmax/app/util/analytics/LogEventManager;->createAppGeneralLogEvent(Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;Ljava/lang/String;)Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 112
    :cond_0
    return-void
.end method

.method public onSuspend(Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/showmax/app/util/analytics/LogEventManager;->mLogEventService:Lcom/showmax/app/util/analytics/LogEventService;

    sget-object v1, Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;->SUSPEND:Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;

    invoke-direct {p0, v1, p1}, Lcom/showmax/app/util/analytics/LogEventManager;->createAppGeneralLogEvent(Lcom/showmax/lib/api/model/log/Event$AppGeneralEvent;Ljava/lang/String;)Lcom/showmax/lib/api/model/log/AppGeneralLogEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/util/analytics/LogEventService;->sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V

    .line 104
    :cond_0
    return-void
.end method
