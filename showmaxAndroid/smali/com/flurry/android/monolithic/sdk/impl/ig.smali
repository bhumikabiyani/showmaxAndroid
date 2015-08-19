.class public final Lcom/flurry/android/monolithic/sdk/impl/ig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/ih;


# static fields
.field private static a:Lcom/flurry/android/monolithic/sdk/impl/ig;


# instance fields
.field private final b:Lcom/flurry/android/monolithic/sdk/impl/ih;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ig;->b()Lcom/flurry/android/monolithic/sdk/impl/ih;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ig;->b:Lcom/flurry/android/monolithic/sdk/impl/ih;

    .line 36
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/android/monolithic/sdk/impl/ig;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/flurry/android/monolithic/sdk/impl/ig;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ig;->a:Lcom/flurry/android/monolithic/sdk/impl/ig;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ig;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/ig;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ig;->a:Lcom/flurry/android/monolithic/sdk/impl/ig;

    .line 31
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ig;->a:Lcom/flurry/android/monolithic/sdk/impl/ig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b()Lcom/flurry/android/monolithic/sdk/impl/ih;
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ig;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/if;->a()Lcom/flurry/android/monolithic/sdk/impl/ih;

    move-result-object v0

    .line 58
    :cond_0
    return-object v0
.end method

.method private static c()Z
    .locals 2

    .prologue
    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public f(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ig;->b:Lcom/flurry/android/monolithic/sdk/impl/ih;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ig;->b:Lcom/flurry/android/monolithic/sdk/impl/ih;

    invoke-interface {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ih;->f(Landroid/content/Context;)V

    .line 43
    :cond_0
    return-void
.end method

.method public g(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ig;->b:Lcom/flurry/android/monolithic/sdk/impl/ih;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ig;->b:Lcom/flurry/android/monolithic/sdk/impl/ih;

    invoke-interface {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ih;->g(Landroid/content/Context;)V

    .line 50
    :cond_0
    return-void
.end method
