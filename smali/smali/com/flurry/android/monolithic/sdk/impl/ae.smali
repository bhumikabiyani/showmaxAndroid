.class public Lcom/flurry/android/monolithic/sdk/impl/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/flurry/android/impl/ads/FlurryAdModule;


# direct methods
.method public constructor <init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ae;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/m;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkAdLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 29
    new-instance v4, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkAdLog;

    invoke-direct {v4}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkAdLog;-><init>()V

    .line 30
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/m;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkAdLog;->a(Ljava/lang/Long;)V

    .line 31
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/m;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v4, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkAdLog;->a(Ljava/lang/CharSequence;)V

    .line 32
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 34
    monitor-enter v0

    .line 36
    :try_start_0
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/m;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/monolithic/sdk/impl/k;

    .line 39
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/k;->b()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 41
    new-instance v7, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkAdEvent;

    invoke-direct {v7}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkAdEvent;-><init>()V

    .line 42
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/k;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkAdEvent;->a(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/k;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkAdEvent;->a(Ljava/lang/Long;)V

    .line 44
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/k;->d()Ljava/util/Map;

    move-result-object v1

    .line 45
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 46
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v8, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/m;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 50
    :cond_2
    :try_start_1
    invoke-virtual {v7, v8}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkAdEvent;->a(Ljava/util/Map;)V

    .line 52
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 55
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    invoke-virtual {v4, v5}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkAdLog;->a(Ljava/util/List;)V

    .line 59
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ae;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/util/List;)V

    .line 65
    return-object v2
.end method
