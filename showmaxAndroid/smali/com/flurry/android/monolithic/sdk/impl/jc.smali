.class public Lcom/flurry/android/monolithic/sdk/impl/jc;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static d:Lcom/flurry/android/monolithic/sdk/impl/jc;


# instance fields
.field a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/jb;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jc;->c:Z

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jc;->b:Ljava/util/List;

    .line 63
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/android/monolithic/sdk/impl/jc;
    .locals 2

    .prologue
    .line 66
    const-class v1, Lcom/flurry/android/monolithic/sdk/impl/jc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/jc;->d:Lcom/flurry/android/monolithic/sdk/impl/jc;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jc;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/jc;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/jc;->d:Lcom/flurry/android/monolithic/sdk/impl/jc;

    .line 70
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/jc;->d:Lcom/flurry/android/monolithic/sdk/impl/jc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 176
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jc;->c:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 185
    :goto_0
    return v0

    .line 183
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 184
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/flurry/android/monolithic/sdk/impl/jb;)V
    .locals 2

    .prologue
    .line 100
    monitor-enter p0

    if-nez p1, :cond_0

    .line 105
    :goto_0
    monitor-exit p0

    return-void

    .line 104
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jc;->b:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v1

    .line 75
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jc;->c:Z

    .line 77
    invoke-direct {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jc;->a:Z

    .line 79
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jc;->c:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/jc;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    monitor-exit p0

    return-void

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jc;->a:Z

    return v0
.end method

.method d()V
    .locals 3

    .prologue
    .line 144
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v0

    .line 145
    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/jc;->a:Z

    .line 146
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method

.method public e()Lcom/flurry/android/monolithic/sdk/impl/jd;
    .locals 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jc;->c:Z

    if-nez v0, :cond_0

    .line 193
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/jd;->a:Lcom/flurry/android/monolithic/sdk/impl/jd;

    .line 209
    :goto_0
    return-object v0

    .line 196
    :cond_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 199
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/jd;->b:Lcom/flurry/android/monolithic/sdk/impl/jd;

    goto :goto_0

    .line 204
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/jd;->c:Lcom/flurry/android/monolithic/sdk/impl/jd;

    goto :goto_0

    .line 209
    :cond_2
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/jd;->a:Lcom/flurry/android/monolithic/sdk/impl/jd;

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a(Landroid/content/Context;)Z

    move-result v0

    .line 158
    iget-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/jc;->a:Z

    if-eq v1, v0, :cond_1

    .line 159
    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jc;->a:Z

    .line 161
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/jc;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 165
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/jb;

    .line 166
    if-eqz v0, :cond_0

    .line 169
    iget-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/jc;->a:Z

    invoke-interface {v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/jb;->b(Z)V

    goto :goto_0

    .line 172
    :cond_1
    return-void
.end method
