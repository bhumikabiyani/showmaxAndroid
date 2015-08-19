.class public Lcom/flurry/android/impl/appcloud/AppCloudModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/ik;
.implements Lcom/flurry/android/monolithic/sdk/impl/jb;


# static fields
.field static a:I

.field static b:I

.field private static final e:Ljava/lang/String;

.field private static f:Lcom/flurry/android/impl/appcloud/AppCloudModule;


# instance fields
.field c:Ljava/lang/String;

.field volatile d:Z

.field private final g:Lcom/flurry/android/monolithic/sdk/impl/hd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/flurry/android/impl/appcloud/AppCloudModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/impl/appcloud/AppCloudModule;->e:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/flurry/android/impl/appcloud/AppCloudModule;->a:I

    .line 17
    const/4 v0, 0x5

    sput v0, Lcom/flurry/android/impl/appcloud/AppCloudModule;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a()Lcom/flurry/android/monolithic/sdk/impl/jc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a(Lcom/flurry/android/monolithic/sdk/impl/jb;)V

    .line 39
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hd;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/hd;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/appcloud/AppCloudModule;->g:Lcom/flurry/android/monolithic/sdk/impl/hd;

    .line 40
    return-void
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/go;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "localhost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/flurry/android/impl/appcloud/AppCloudModule;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcom/flurry/android/impl/appcloud/AppCloudModule;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/impl/appcloud/AppCloudModule;->f:Lcom/flurry/android/impl/appcloud/AppCloudModule;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/flurry/android/impl/appcloud/AppCloudModule;

    invoke-direct {v0}, Lcom/flurry/android/impl/appcloud/AppCloudModule;-><init>()V

    sput-object v0, Lcom/flurry/android/impl/appcloud/AppCloudModule;->f:Lcom/flurry/android/impl/appcloud/AppCloudModule;

    .line 34
    :cond_0
    sget-object v0, Lcom/flurry/android/impl/appcloud/AppCloudModule;->f:Lcom/flurry/android/impl/appcloud/AppCloudModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flurry/android/impl/appcloud/AppCloudModule;->g:Lcom/flurry/android/monolithic/sdk/impl/hd;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/flurry/android/impl/appcloud/AppCloudModule;->g:Lcom/flurry/android/monolithic/sdk/impl/hd;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/hd;->b()V

    .line 78
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/flurry/android/monolithic/sdk/impl/fl;)V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a()Lcom/flurry/android/monolithic/sdk/impl/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/jc;->b()V

    .line 45
    iget-boolean v0, p0, Lcom/flurry/android/impl/appcloud/AppCloudModule;->d:Z

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p2, Lcom/flurry/android/monolithic/sdk/impl/fl;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/impl/appcloud/AppCloudModule;->c:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/impl/appcloud/AppCloudModule;->d:Z

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/impl/appcloud/AppCloudModule;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/go;->a(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/flurry/android/impl/appcloud/AppCloudModule;->d:Z

    return v0
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/hd;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/flurry/android/impl/appcloud/AppCloudModule;->g:Lcom/flurry/android/monolithic/sdk/impl/hd;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/android/impl/appcloud/AppCloudModule;->g:Lcom/flurry/android/monolithic/sdk/impl/hd;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/flurry/android/impl/appcloud/AppCloudModule;->g:Lcom/flurry/android/monolithic/sdk/impl/hd;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/hd;->c()V

    .line 85
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->e()Z

    move-result v0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a()Lcom/flurry/android/monolithic/sdk/impl/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/jc;->c()Z

    move-result v0

    return v0
.end method
