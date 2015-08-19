.class public Lcom/flurry/android/monolithic/sdk/impl/aem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/flurry/android/monolithic/sdk/impl/aef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/aef",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/adb;",
            "Lcom/flurry/android/monolithic/sdk/impl/pw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/rf;)Lcom/flurry/android/monolithic/sdk/impl/pw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/rf",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/pw;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/aem;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/rf;)Lcom/flurry/android/monolithic/sdk/impl/pw;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/rf;)Lcom/flurry/android/monolithic/sdk/impl/pw;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/rf",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/pw;"
        }
    .end annotation

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/adb;

    invoke-direct {v2, p1}, Lcom/flurry/android/monolithic/sdk/impl/adb;-><init>(Ljava/lang/Class;)V

    .line 33
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aem;->a:Lcom/flurry/android/monolithic/sdk/impl/aef;

    if-nez v0, :cond_1

    .line 34
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aef;

    const/16 v1, 0x14

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/aef;-><init>(II)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aem;->a:Lcom/flurry/android/monolithic/sdk/impl/aef;

    .line 41
    :cond_0
    invoke-virtual {p2, p1}, Lcom/flurry/android/monolithic/sdk/impl/rf;->c(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qb;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/xq;

    .line 42
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/rf;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v1

    .line 43
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xq;->c()Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/py;->b(Lcom/flurry/android/monolithic/sdk/impl/xh;)Ljava/lang/String;

    move-result-object v0

    .line 46
    if-nez v0, :cond_2

    .line 48
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 50
    :goto_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/pw;

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/pw;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aem;->a:Lcom/flurry/android/monolithic/sdk/impl/aef;

    invoke-virtual {v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/aef;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :goto_1
    monitor-exit p0

    return-object v0

    .line 36
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aem;->a:Lcom/flurry/android/monolithic/sdk/impl/aef;

    invoke-virtual {v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/aef;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/pw;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    if-eqz v0, :cond_0

    goto :goto_1

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method
