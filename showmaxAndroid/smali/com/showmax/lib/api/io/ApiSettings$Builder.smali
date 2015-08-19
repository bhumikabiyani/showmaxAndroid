.class public Lcom/showmax/lib/api/io/ApiSettings$Builder;
.super Ljava/lang/Object;
.source "ApiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/io/ApiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_API_ENVIRONMENT:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

.field private static final DEFAULT_API_PROTOCOL:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

.field private static final DEFAULT_PLATFORM:Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

.field private static final DEFAULT_VERSION:Ljava/lang/String; = "v6.0"


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mEnvironment:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

.field private mFullLogs:Z

.field private mPlatform:Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

.field private mProtocol:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->IO:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    sput-object v0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->DEFAULT_API_ENVIRONMENT:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    .line 297
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->HTTP:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    sput-object v0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->DEFAULT_API_PROTOCOL:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    .line 298
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;->ANDROID:Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    sput-object v0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->DEFAULT_PLATFORM:Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    return-void
.end method

.method static synthetic access$000(Lcom/showmax/lib/api/io/ApiSettings$Builder;)Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/lib/api/io/ApiSettings$Builder;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mEnvironment:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/showmax/lib/api/io/ApiSettings$Builder;)Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/lib/api/io/ApiSettings$Builder;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mProtocol:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    return-object v0
.end method

.method static synthetic access$200(Lcom/showmax/lib/api/io/ApiSettings$Builder;)Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/lib/api/io/ApiSettings$Builder;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mPlatform:Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    return-object v0
.end method

.method static synthetic access$300(Lcom/showmax/lib/api/io/ApiSettings$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/lib/api/io/ApiSettings$Builder;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/showmax/lib/api/io/ApiSettings$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/lib/api/io/ApiSettings$Builder;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/showmax/lib/api/io/ApiSettings$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/showmax/lib/api/io/ApiSettings$Builder;

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mFullLogs:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/showmax/lib/api/io/ApiSettings;
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mEnvironment:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    if-nez v0, :cond_0

    .line 387
    sget-object v0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->DEFAULT_API_ENVIRONMENT:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    iput-object v0, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mEnvironment:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mProtocol:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    if-nez v0, :cond_1

    .line 391
    sget-object v0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->DEFAULT_API_PROTOCOL:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    iput-object v0, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mProtocol:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mPlatform:Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    if-nez v0, :cond_2

    .line 395
    sget-object v0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->DEFAULT_PLATFORM:Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    iput-object v0, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mPlatform:Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mVersion:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 399
    const-string v0, "v6.0"

    iput-object v0, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mVersion:Ljava/lang/String;

    .line 401
    :cond_3
    new-instance v0, Lcom/showmax/lib/api/io/ApiSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/showmax/lib/api/io/ApiSettings;-><init>(Lcom/showmax/lib/api/io/ApiSettings$Builder;Lcom/showmax/lib/api/io/ApiSettings$1;)V

    return-object v0
.end method

.method public deviceId(Ljava/lang/String;)Lcom/showmax/lib/api/io/ApiSettings$Builder;
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mDeviceId:Ljava/lang/String;

    .line 348
    return-object p0
.end method

.method public environment(Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;)Lcom/showmax/lib/api/io/ApiSettings$Builder;
    .locals 0
    .param p1, "environment"    # Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mEnvironment:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    .line 323
    return-object p0
.end method

.method public fullLogs(Z)Lcom/showmax/lib/api/io/ApiSettings$Builder;
    .locals 0
    .param p1, "fullLogs"    # Z

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mFullLogs:Z

    .line 380
    return-object p0
.end method

.method public platform(Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;)Lcom/showmax/lib/api/io/ApiSettings$Builder;
    .locals 0
    .param p1, "platform"    # Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mPlatform:Lcom/showmax/lib/api/io/ApiConstants$ApiPlatform;

    .line 360
    return-object p0
.end method

.method public protocol(Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;)Lcom/showmax/lib/api/io/ApiSettings$Builder;
    .locals 0
    .param p1, "protocol"    # Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mProtocol:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    .line 336
    return-object p0
.end method

.method public version(Ljava/lang/String;)Lcom/showmax/lib/api/io/ApiSettings$Builder;
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/showmax/lib/api/io/ApiSettings$Builder;->mVersion:Ljava/lang/String;

    .line 370
    return-object p0
.end method
