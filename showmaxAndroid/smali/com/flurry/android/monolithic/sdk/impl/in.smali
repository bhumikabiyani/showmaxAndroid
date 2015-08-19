.class public Lcom/flurry/android/monolithic/sdk/impl/in;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/id;


# static fields
.field private static final c:Ljava/lang/String;

.field private static l:Lcom/flurry/android/monolithic/sdk/impl/in;


# instance fields
.field a:Z

.field b:Z

.field private final d:J

.field private final e:J

.field private f:Landroid/location/LocationManager;

.field private g:Landroid/location/Criteria;

.field private h:Landroid/location/Location;

.field private i:Lcom/flurry/android/monolithic/sdk/impl/io;

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/in;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/in;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->d:J

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->e:J

    .line 36
    iput-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->a:Z

    .line 39
    iput v2, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->k:I

    .line 44
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/io;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/io;-><init>(Lcom/flurry/android/monolithic/sdk/impl/in;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->i:Lcom/flurry/android/monolithic/sdk/impl/io;

    .line 46
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ib;->a()Lcom/flurry/android/monolithic/sdk/impl/ic;

    move-result-object v1

    .line 48
    const-string v0, "LocationCriteria"

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Criteria;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->g:Landroid/location/Criteria;

    .line 49
    const-string v0, "LocationCriteria"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/id;)V

    .line 50
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/in;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, LocationCriteria = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->g:Landroid/location/Criteria;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "ReportLocation"

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->b:Z

    .line 53
    const-string v0, "ReportLocation"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/id;)V

    .line 54
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/in;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSettings, ReportLocation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/in;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->h:Landroid/location/Location;

    return-object p1
.end method

.method public static declared-synchronized a()Lcom/flurry/android/monolithic/sdk/impl/in;
    .locals 2

    .prologue
    .line 58
    const-class v1, Lcom/flurry/android/monolithic/sdk/impl/in;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/in;->l:Lcom/flurry/android/monolithic/sdk/impl/in;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/in;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/in;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/in;->l:Lcom/flurry/android/monolithic/sdk/impl/in;

    .line 61
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/in;->l:Lcom/flurry/android/monolithic/sdk/impl/in;
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

.method private a(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->f:Landroid/location/LocationManager;

    const-wide/32 v2, 0x1b7740

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->i:Lcom/flurry/android/monolithic/sdk/impl/io;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 165
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/location/Location;
    .locals 2

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->f:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 172
    :cond_0
    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->f:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->i:Lcom/flurry/android/monolithic/sdk/impl/io;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->a:Z

    .line 114
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/in;->c:Ljava/lang/String;

    const-string v2, "LocationProvider stoped"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->b:Z

    if-nez v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v0

    .line 129
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 134
    :cond_2
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/in;->g()V

    .line 136
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/in;->i()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/in;->a(Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/in;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->h:Landroid/location/Location;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->a:Z

    .line 141
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/in;->c:Ljava/lang/String;

    const-string v2, "LocationProvider started"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private i()Ljava/lang/String;
    .locals 5

    .prologue
    .line 145
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->g:Landroid/location/Criteria;

    .line 146
    if-nez v0, :cond_0

    .line 147
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->f:Landroid/location/LocationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    .line 156
    :goto_0
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/in;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    return-object v0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->j:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 229
    const-string v0, "LocationCriteria"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    check-cast p2, Landroid/location/Criteria;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->g:Landroid/location/Criteria;

    .line 231
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/in;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, LocationCriteria = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->g:Landroid/location/Criteria;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->a:Z

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/in;->h()V

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    const-string v0, "ReportLocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->b:Z

    .line 239
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/in;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, ReportLocation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->b:Z

    if-eqz v0, :cond_2

    .line 242
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->a:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->k:I

    if-lez v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/in;->h()V

    goto :goto_0

    .line 247
    :cond_2
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/in;->g()V

    goto :goto_0

    .line 251
    :cond_3
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/in;->c:Ljava/lang/String;

    const-string v2, "LocationProvider internal error! Had to be LocationCriteria or ReportLocation key."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->f:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v0

    .line 80
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->f:Landroid/location/LocationManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    .prologue
    .line 84
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/in;->c:Ljava/lang/String;

    const-string v2, "Location provider subscribed"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->k:I

    .line 86
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->a:Z

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/in;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 3

    .prologue
    .line 92
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/in;->c:Ljava/lang/String;

    const-string v2, "Location provider unsubscribed"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->k:I

    if-gtz v0, :cond_1

    .line 94
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/in;->c:Ljava/lang/String;

    const-string v2, "Error! Unsubscribed too many times!"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/in;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 100
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->k:I

    .line 102
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->k:I

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/in;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Landroid/location/Location;
    .locals 5

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 178
    iget-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->b:Z

    if-eqz v1, :cond_1

    .line 179
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/in;->i()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/in;->b(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->h:Landroid/location/Location;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->h:Landroid/location/Location;

    .line 189
    :cond_1
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/in;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocation() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 190
    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/in;->k:I

    .line 195
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/in;->g()V

    .line 196
    return-void
.end method
