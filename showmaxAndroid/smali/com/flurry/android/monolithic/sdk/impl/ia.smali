.class public Lcom/flurry/android/monolithic/sdk/impl/ia;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/android/monolithic/sdk/impl/ia;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ia;->b:Landroid/content/Context;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ia;->c:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method public static a()Lcom/flurry/android/monolithic/sdk/impl/ia;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ia;->a:Lcom/flurry/android/monolithic/sdk/impl/ia;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 18
    const-class v1, Lcom/flurry/android/monolithic/sdk/impl/ia;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ia;->a:Lcom/flurry/android/monolithic/sdk/impl/ia;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 27
    :goto_0
    monitor-exit v1

    return-void

    .line 22
    :cond_0
    if-nez p0, :cond_1

    .line 23
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 26
    :cond_1
    :try_start_2
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ia;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/ia;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ia;->a:Lcom/flurry/android/monolithic/sdk/impl/ia;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ia;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ia;->b:Landroid/content/Context;

    return-object v0
.end method

.method public c()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ia;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ia;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method
