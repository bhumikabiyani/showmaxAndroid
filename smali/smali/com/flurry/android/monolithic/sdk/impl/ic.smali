.class public Lcom/flurry/android/monolithic/sdk/impl/ic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/id;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ic;->a:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ic;->b:Ljava/util/Map;

    .line 38
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 60
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ic;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ic;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/id;

    .line 67
    invoke-interface {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/id;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ic;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/id;)V
    .locals 2

    .prologue
    .line 77
    monitor-enter p0

    if-nez p2, :cond_0

    .line 88
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ic;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 82
    if-nez v0, :cond_1

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 86
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ic;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 45
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ic;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    invoke-direct {p0, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    if-nez p2, :cond_2

    .line 50
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ic;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ic;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 52
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ic;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/id;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    monitor-enter p0

    if-nez p2, :cond_0

    move v0, v1

    .line 101
    :goto_0
    monitor-exit p0

    return v0

    .line 96
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ic;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 97
    if-nez v0, :cond_1

    move v0, v1

    .line 98
    goto :goto_0

    .line 101
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method