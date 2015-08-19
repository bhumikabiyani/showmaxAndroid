.class public Lcom/flurry/android/monolithic/sdk/impl/ib;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/Boolean;

.field public static final d:Ljava/lang/Boolean;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/Boolean;

.field public static final g:Landroid/location/Criteria;

.field public static final h:Ljava/lang/Long;

.field public static final i:Ljava/lang/Boolean;

.field public static final j:Ljava/lang/Long;

.field public static final k:Ljava/lang/Byte;

.field private static l:Lcom/flurry/android/monolithic/sdk/impl/ic;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 36
    const/16 v0, 0x97

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->a:Ljava/lang/Integer;

    .line 38
    sput-object v1, Lcom/flurry/android/monolithic/sdk/impl/ib;->b:Ljava/lang/String;

    .line 39
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->c:Ljava/lang/Boolean;

    .line 40
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->d:Ljava/lang/Boolean;

    .line 41
    sput-object v1, Lcom/flurry/android/monolithic/sdk/impl/ib;->e:Ljava/lang/String;

    .line 42
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->f:Ljava/lang/Boolean;

    .line 43
    sput-object v1, Lcom/flurry/android/monolithic/sdk/impl/ib;->g:Landroid/location/Criteria;

    .line 44
    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->h:Ljava/lang/Long;

    .line 45
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->i:Ljava/lang/Boolean;

    .line 46
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->j:Ljava/lang/Long;

    .line 47
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->k:Ljava/lang/Byte;

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/android/monolithic/sdk/impl/ic;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/flurry/android/monolithic/sdk/impl/ib;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->l:Lcom/flurry/android/monolithic/sdk/impl/ic;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ic;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/ic;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->l:Lcom/flurry/android/monolithic/sdk/impl/ic;

    .line 60
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ib;->b()V

    .line 63
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->l:Lcom/flurry/android/monolithic/sdk/impl/ic;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b()V
    .locals 3

    .prologue
    .line 71
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->l:Lcom/flurry/android/monolithic/sdk/impl/ic;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ic;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/ic;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->l:Lcom/flurry/android/monolithic/sdk/impl/ic;

    .line 75
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->l:Lcom/flurry/android/monolithic/sdk/impl/ic;

    const-string v1, "AgentVersion"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ib;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->l:Lcom/flurry/android/monolithic/sdk/impl/ic;

    const-string v1, "VesionName"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ib;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->l:Lcom/flurry/android/monolithic/sdk/impl/ic;

    const-string v1, "CaptureUncaughtExceptions"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ib;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->l:Lcom/flurry/android/monolithic/sdk/impl/ic;

    const-string v1, "UseHttps"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ib;->d:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->l:Lcom/flurry/android/monolithic/sdk/impl/ic;

    const-string v1, "ReportUrl"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ib;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->l:Lcom/flurry/android/monolithic/sdk/impl/ic;

    const-string v1, "ReportLocation"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ib;->f:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->l:Lcom/flurry/android/monolithic/sdk/impl/ic;

    const-string v1, "LocationCriteria"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ib;->g:Landroid/location/Criteria;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->l:Lcom/flurry/android/monolithic/sdk/impl/ic;

    const-string v1, "ContinueSessionMillis"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ib;->h:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->l:Lcom/flurry/android/monolithic/sdk/impl/ic;

    const-string v1, "LogEvents"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ib;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->l:Lcom/flurry/android/monolithic/sdk/impl/ic;

    const-string v1, "Age"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ib;->j:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->l:Lcom/flurry/android/monolithic/sdk/impl/ic;

    const-string v1, "Gender"

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ib;->k:Ljava/lang/Byte;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ib;->l:Lcom/flurry/android/monolithic/sdk/impl/ic;

    const-string v1, "UserId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    return-void
.end method
