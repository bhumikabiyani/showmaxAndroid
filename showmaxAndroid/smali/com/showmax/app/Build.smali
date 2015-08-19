.class public Lcom/showmax/app/Build;
.super Ljava/lang/Object;
.source "Build.java"


# static fields
.field private static sInstance:Lcom/showmax/app/Build;


# instance fields
.field public final API_KEY_BOLDCHAT:Ljava/lang/String;

.field public final API_KEY_FLURRY:Ljava/lang/String;

.field public final API_KEY_HOCKEYAPP:Ljava/lang/String;

.field public final BOLDCHAT_DEPARTMENT:Ljava/lang/String;

.field public final DEBUG:Z

.field public final DRM_PORTAL:Ljava/lang/String;

.field public final EMAIL_CUSTOMER_SUPPORT:Ljava/lang/String;

.field public final FLURRY:Z

.field public final G_ANALYTICS:Z

.field public final HOCKEYAPP_CRASH_MANAGER:Z

.field public final HOCKEYAPP_UPDATE_MANAGER:Z

.field private final HTTPS:Z

.field public final ICFLIX_API_ENVIRONMENT:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

.field public final ICFLIX_API_PROTOCOL:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

.field public final ICFLIX_API_VERSION:Ljava/lang/String;

.field private final IO:Z

.field public final STAGING:Z

.field public final VERSION_NAME:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v0, p0, Lcom/showmax/app/Build;->DEBUG:Z

    .line 77
    iput-boolean v0, p0, Lcom/showmax/app/Build;->STAGING:Z

    .line 78
    iput-boolean v1, p0, Lcom/showmax/app/Build;->FLURRY:Z

    .line 79
    iput-boolean v1, p0, Lcom/showmax/app/Build;->HTTPS:Z

    .line 80
    iput-boolean v0, p0, Lcom/showmax/app/Build;->IO:Z

    .line 81
    iput-boolean v0, p0, Lcom/showmax/app/Build;->HOCKEYAPP_CRASH_MANAGER:Z

    .line 82
    iput-boolean v0, p0, Lcom/showmax/app/Build;->HOCKEYAPP_UPDATE_MANAGER:Z

    .line 83
    iput-boolean v1, p0, Lcom/showmax/app/Build;->G_ANALYTICS:Z

    .line 85
    const-string v0, "JCYWH58YT5JR32YY76QM"

    iput-object v0, p0, Lcom/showmax/app/Build;->API_KEY_FLURRY:Ljava/lang/String;

    .line 86
    const-string v0, "a9d35ff8bfa55eb6a719bbbc32c2d18a"

    iput-object v0, p0, Lcom/showmax/app/Build;->API_KEY_HOCKEYAPP:Ljava/lang/String;

    .line 87
    const-string v0, "738643170435083061:732200090873419228:ecVSCgx1yGAPOZl8+291MXkZZoEZnZwv"

    iput-object v0, p0, Lcom/showmax/app/Build;->API_KEY_BOLDCHAT:Ljava/lang/String;

    .line 88
    const-string v0, "3557829709439875521"

    iput-object v0, p0, Lcom/showmax/app/Build;->BOLDCHAT_DEPARTMENT:Ljava/lang/String;

    .line 90
    const-string v0, "v6.0"

    iput-object v0, p0, Lcom/showmax/app/Build;->ICFLIX_API_VERSION:Ljava/lang/String;

    .line 91
    iget-boolean v0, p0, Lcom/showmax/app/Build;->IO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->IO:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    :goto_0
    iput-object v0, p0, Lcom/showmax/app/Build;->ICFLIX_API_ENVIRONMENT:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    .line 92
    iget-boolean v0, p0, Lcom/showmax/app/Build;->HTTPS:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->HTTPS:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    :goto_1
    iput-object v0, p0, Lcom/showmax/app/Build;->ICFLIX_API_PROTOCOL:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    .line 94
    const-string v0, "1.1.12.376ea8d"

    iput-object v0, p0, Lcom/showmax/app/Build;->VERSION_NAME:Ljava/lang/String;

    .line 96
    const-string v0, "support@showmax.com"

    iput-object v0, p0, Lcom/showmax/app/Build;->EMAIL_CUSTOMER_SUPPORT:Ljava/lang/String;

    .line 98
    const-string v0, "showmax"

    iput-object v0, p0, Lcom/showmax/app/Build;->DRM_PORTAL:Ljava/lang/String;

    .line 99
    return-void

    .line 91
    :cond_0
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;->COM:Lcom/showmax/lib/api/io/ApiConstants$ApiEnvironment;

    goto :goto_0

    .line 92
    :cond_1
    sget-object v0, Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;->HTTP:Lcom/showmax/lib/api/io/ApiConstants$ApiProtocol;

    goto :goto_1
.end method

.method public static getInstance()Lcom/showmax/app/Build;
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/showmax/app/Build;->sInstance:Lcom/showmax/app/Build;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "class not initialized, call initInstance() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    sget-object v0, Lcom/showmax/app/Build;->sInstance:Lcom/showmax/app/Build;

    return-object v0
.end method

.method public static initInstance(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    sget-object v0, Lcom/showmax/app/Build;->sInstance:Lcom/showmax/app/Build;

    if-nez v0, :cond_1

    .line 59
    const-string v0, "[Build]::[initInstance]::[sInstance is null, create a new instance]"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    new-instance v0, Lcom/showmax/app/Build;

    invoke-direct {v0, p0}, Lcom/showmax/app/Build;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/showmax/app/Build;->sInstance:Lcom/showmax/app/Build;

    .line 62
    :cond_1
    return-void
.end method
