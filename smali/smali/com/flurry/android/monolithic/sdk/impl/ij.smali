.class public final Lcom/flurry/android/monolithic/sdk/impl/ij;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/ik;


# static fields
.field private static a:Lcom/flurry/android/monolithic/sdk/impl/ij;


# instance fields
.field private final b:Lcom/flurry/android/monolithic/sdk/impl/ik;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ij;->b()Lcom/flurry/android/monolithic/sdk/impl/ik;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ij;->b:Lcom/flurry/android/monolithic/sdk/impl/ik;

    .line 36
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/android/monolithic/sdk/impl/ij;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/flurry/android/monolithic/sdk/impl/ij;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ij;->a:Lcom/flurry/android/monolithic/sdk/impl/ij;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ij;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/ij;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ij;->a:Lcom/flurry/android/monolithic/sdk/impl/ij;

    .line 31
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ij;->a:Lcom/flurry/android/monolithic/sdk/impl/ij;
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

.method private static b()Lcom/flurry/android/monolithic/sdk/impl/ik;
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ij;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ii;->a()Lcom/flurry/android/monolithic/sdk/impl/ik;

    move-result-object v0

    .line 67
    :cond_0
    return-object v0
.end method

.method private static c()Z
    .locals 2

    .prologue
    .line 71
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
.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ij;->b:Lcom/flurry/android/monolithic/sdk/impl/ik;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ij;->b:Lcom/flurry/android/monolithic/sdk/impl/ik;

    invoke-interface {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ik;->a(Landroid/content/Context;)V

    .line 43
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ij;->b:Lcom/flurry/android/monolithic/sdk/impl/ik;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ij;->b:Lcom/flurry/android/monolithic/sdk/impl/ik;

    invoke-interface {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ik;->b(Landroid/content/Context;)V

    .line 50
    :cond_0
    return-void
.end method
