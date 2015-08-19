.class public Lcom/showmax/lib/api/io/LogApi;
.super Ljava/lang/Object;
.source "LogApi.java"

# interfaces
.implements Lcom/showmax/lib/api/io/ApiConstants;


# static fields
.field private static final LOG:Z = true

.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/showmax/lib/api/io/LogApi;


# instance fields
.field private mService:Lcom/showmax/lib/api/io/serviceinterface/LogService;

.field private mSettings:Lcom/showmax/lib/api/io/ApiSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/showmax/lib/api/io/LogApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/lib/api/io/LogApi;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    return-void
.end method

.method private constructor <init>(Lcom/showmax/lib/api/io/ApiSettings;)V
    .locals 2
    .param p1, "settings"    # Lcom/showmax/lib/api/io/ApiSettings;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "settings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/showmax/lib/api/io/LogApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    .line 114
    invoke-direct {p0}, Lcom/showmax/lib/api/io/LogApi;->init()V

    .line 115
    return-void
.end method

.method public static getInstance()Lcom/showmax/lib/api/io/LogApi;
    .locals 4

    .prologue
    .line 94
    sget-object v0, Lcom/showmax/lib/api/io/LogApi;->sInstance:Lcom/showmax/lib/api/io/LogApi;

    if-nez v0, :cond_0

    .line 96
    const-string v0, "[%s]::[getInstance]::[sInstance is null]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/lib/api/io/LogApi;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :cond_0
    sget-object v0, Lcom/showmax/lib/api/io/LogApi;->sInstance:Lcom/showmax/lib/api/io/LogApi;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 119
    iget-object v4, p0, Lcom/showmax/lib/api/io/LogApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v4}, Lcom/showmax/lib/api/io/ApiSettings;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "deviceId":Ljava/lang/String;
    iget-object v4, p0, Lcom/showmax/lib/api/io/LogApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v4}, Lcom/showmax/lib/api/io/ApiSettings;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "userAgent":Ljava/lang/String;
    new-instance v4, Lretrofit/RestAdapter$Builder;

    invoke-direct {v4}, Lretrofit/RestAdapter$Builder;-><init>()V

    iget-object v5, p0, Lcom/showmax/lib/api/io/LogApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    .line 123
    invoke-virtual {v5}, Lcom/showmax/lib/api/io/ApiSettings;->getLogEndpoint()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    sget-object v5, Lretrofit/RestAdapter$LogLevel;->BASIC:Lretrofit/RestAdapter$LogLevel;

    .line 124
    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    new-instance v5, Lcom/showmax/lib/api/io/ApiRequestInterceptor;

    invoke-direct {v5, v2, v3}, Lcom/showmax/lib/api/io/ApiRequestInterceptor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v1

    .line 127
    .local v1, "builder":Lretrofit/RestAdapter$Builder;
    iget-object v4, p0, Lcom/showmax/lib/api/io/LogApi;->mSettings:Lcom/showmax/lib/api/io/ApiSettings;

    invoke-virtual {v4}, Lcom/showmax/lib/api/io/ApiSettings;->isFullLogsEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    sget-object v4, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v1, v4}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    .line 132
    :cond_0
    invoke-virtual {v1}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    .line 133
    .local v0, "adapter":Lretrofit/RestAdapter;
    const-class v4, Lcom/showmax/lib/api/io/serviceinterface/LogService;

    invoke-virtual {v0, v4}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/showmax/lib/api/io/serviceinterface/LogService;

    iput-object v4, p0, Lcom/showmax/lib/api/io/LogApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/LogService;

    .line 134
    return-void
.end method

.method public static initInstance(Lcom/showmax/lib/api/io/ApiSettings;)V
    .locals 5
    .param p0, "settings"    # Lcom/showmax/lib/api/io/ApiSettings;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    const-string v0, "[%s]::[initInstance]"

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lcom/showmax/lib/api/io/LogApi;->TAG:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/showmax/lib/api/io/LogApi;->sInstance:Lcom/showmax/lib/api/io/LogApi;

    if-nez v0, :cond_0

    .line 81
    const-string v0, "[%s]::[initInstance]::[sInstance is null, create a new instance]"

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lcom/showmax/lib/api/io/LogApi;->TAG:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    new-instance v0, Lcom/showmax/lib/api/io/LogApi;

    invoke-direct {v0, p0}, Lcom/showmax/lib/api/io/LogApi;-><init>(Lcom/showmax/lib/api/io/ApiSettings;)V

    sput-object v0, Lcom/showmax/lib/api/io/LogApi;->sInstance:Lcom/showmax/lib/api/io/LogApi;

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public sendLog(Ljava/util/List;)Lretrofit/client/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/showmax/lib/api/model/log/LogEvent;",
            ">;)",
            "Lretrofit/client/Response;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "logEvents":Ljava/util/List;, "Ljava/util/List<Lcom/showmax/lib/api/model/log/LogEvent;>;"
    const-string v0, "[%s]::[sendLog]::[async]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/lib/api/io/LogApi;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/showmax/lib/api/io/LogApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/LogService;

    invoke-interface {v0, p1}, Lcom/showmax/lib/api/io/serviceinterface/LogService;->sendEvent(Ljava/util/List;)Lretrofit/client/Response;

    move-result-object v0

    return-object v0
.end method

.method public sendLog(Ljava/util/List;Lretrofit/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/showmax/lib/api/model/log/LogEvent;",
            ">;",
            "Lretrofit/Callback",
            "<",
            "Lretrofit/client/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "logEvents":Ljava/util/List;, "Ljava/util/List<Lcom/showmax/lib/api/model/log/LogEvent;>;"
    .local p2, "cb":Lretrofit/Callback;, "Lretrofit/Callback<Lretrofit/client/Response;>;"
    const-string v0, "[%s]::[sendLog]::[async]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/lib/api/io/LogApi;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/showmax/lib/api/io/LogApi;->mService:Lcom/showmax/lib/api/io/serviceinterface/LogService;

    invoke-interface {v0, p1, p2}, Lcom/showmax/lib/api/io/serviceinterface/LogService;->sendEvent(Ljava/util/List;Lretrofit/Callback;)V

    .line 146
    return-void
.end method
