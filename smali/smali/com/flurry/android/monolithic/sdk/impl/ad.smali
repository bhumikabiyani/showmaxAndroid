.class public Lcom/flurry/android/monolithic/sdk/impl/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/flurry/android/monolithic/sdk/impl/bz;

.field private c:Lcom/flurry/android/monolithic/sdk/impl/cb;

.field private d:I

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ad;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->d:I

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->e:Ljava/util/Map;

    .line 25
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/cb;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/cb;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->c:Lcom/flurry/android/monolithic/sdk/impl/cb;

    .line 26
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bz;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/bz;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->b:Lcom/flurry/android/monolithic/sdk/impl/bz;

    .line 27
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->b:Lcom/flurry/android/monolithic/sdk/impl/bz;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->c:Lcom/flurry/android/monolithic/sdk/impl/cb;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/bz;->a(Lcom/flurry/android/monolithic/sdk/impl/ca;)V

    .line 28
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 152
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/je;->f()I

    move-result v1

    .line 154
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->b:Lcom/flurry/android/monolithic/sdk/impl/bz;

    invoke-virtual {v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/bz;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 156
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ad;->b(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    const/4 v0, 0x3

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ad;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no valid ad units in cache for current orientation for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    if-ne v1, v3, :cond_4

    const/4 v2, 0x2

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->b:Lcom/flurry/android/monolithic/sdk/impl/bz;

    invoke-virtual {v0, p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/bz;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 164
    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ad;->b(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ad;->a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    const/4 v0, 0x3

    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/ad;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no valid ad units in cache for other orientation for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    move v1, v2

    .line 170
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    if-eqz v0, :cond_5

    .line 173
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 174
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p3, :cond_5

    .line 176
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 177
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->c()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(J)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->e()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_3

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 179
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->b:Lcom/flurry/android/monolithic/sdk/impl/bz;

    invoke-virtual {v5, p1, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/bz;->b(Ljava/lang/String;ILcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Z

    move-result v0

    .line 181
    const/4 v5, 0x3

    sget-object v6, Lcom/flurry/android/monolithic/sdk/impl/ad;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ad unit was removed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v2, v3

    .line 159
    goto/16 :goto_0

    .line 186
    :cond_5
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 72
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/je;->f()I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->b:Lcom/flurry/android/monolithic/sdk/impl/bz;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/bz;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->d:I

    .line 74
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->e:Ljava/util/Map;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/je;->f()I

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->b:Lcom/flurry/android/monolithic/sdk/impl/bz;

    invoke-virtual {v1, p1, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/bz;->a(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/je;->f()I

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->b:Lcom/flurry/android/monolithic/sdk/impl/bz;

    invoke-virtual {v1, p1, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/bz;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/je;->f()I

    move-result v12

    .line 34
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/ad;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " orientation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-object v11, v0

    .line 38
    invoke-virtual {v11}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->g()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 40
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/cd;

    invoke-virtual {v11}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->g()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->h()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v11}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->l()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v11}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->i()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v11}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->j()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v11}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->k()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct/range {v2 .. v10}, Lcom/flurry/android/monolithic/sdk/impl/cd;-><init>(Ljava/lang/String;JJIII)V

    .line 41
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ce;->a()Lcom/flurry/android/monolithic/sdk/impl/ce;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/flurry/android/monolithic/sdk/impl/ce;->a(Lcom/flurry/android/monolithic/sdk/impl/cd;)V

    .line 44
    :cond_0
    invoke-virtual {v11}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->b:Lcom/flurry/android/monolithic/sdk/impl/bz;

    invoke-virtual {v3, v2, v12, v11}, Lcom/flurry/android/monolithic/sdk/impl/bz;->a(Ljava/lang/String;ILcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 48
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Z
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->e()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "takeover"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    const/4 v1, 0x0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 85
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 89
    :goto_0
    monitor-exit p0

    return v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public b(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 146
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public declared-synchronized c(Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 94
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/je;->f()I

    move-result v2

    .line 96
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->b:Lcom/flurry/android/monolithic/sdk/impl/bz;

    invoke-virtual {v0, p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/bz;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ad;->b(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    const/4 v0, 0x3

    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/ad;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no valid ad units in cache for current orientation for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    if-ne v2, v3, :cond_0

    const/4 v3, 0x2

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->b:Lcom/flurry/android/monolithic/sdk/impl/bz;

    invoke-virtual {v0, p1, v3}, Lcom/flurry/android/monolithic/sdk/impl/bz;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 107
    invoke-virtual {p0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ad;->b(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ad;->a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 109
    :cond_1
    const/4 v0, 0x3

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ad;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no valid ad units in cache for other orientation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 136
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    move v3, v2

    move-object v2, v0

    .line 114
    :cond_3
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ad;->b(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 118
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 119
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 121
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 122
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->c()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(J)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 126
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->b:Lcom/flurry/android/monolithic/sdk/impl/bz;

    invoke-virtual {v1, p1, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/bz;->b(Ljava/lang/String;ILcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Z

    move-result v1

    .line 127
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/ad;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found valid ad unit for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/ad;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad unit was removed = = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 134
    :cond_5
    const/4 v0, 0x3

    :try_start_2
    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/ad;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no valid ad units for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->c:Lcom/flurry/android/monolithic/sdk/impl/cb;

    invoke-virtual {v0, p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/cb;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .line 136
    goto/16 :goto_0
.end method

.method public declared-synchronized d(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/je;->f()I

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->b:Lcom/flurry/android/monolithic/sdk/impl/bz;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/bz;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 201
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ad;->b(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 205
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x1

    .line 211
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/je;->f()I

    move-result v0

    .line 217
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ad;->b:Lcom/flurry/android/monolithic/sdk/impl/bz;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/bz;->b(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 218
    monitor-exit p0

    return v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
