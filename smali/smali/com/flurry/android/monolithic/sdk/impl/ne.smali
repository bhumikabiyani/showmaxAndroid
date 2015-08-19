.class public Lcom/flurry/android/monolithic/sdk/impl/ne;
.super Lcom/flurry/android/monolithic/sdk/impl/mq;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/mq;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/mq;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>([Lcom/flurry/android/monolithic/sdk/impl/mq;)V
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/na;->c:Lcom/flurry/android/monolithic/sdk/impl/na;

    invoke-direct {p0, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/mq;-><init>(Lcom/flurry/android/monolithic/sdk/impl/na;[Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    .line 270
    return-void
.end method

.method synthetic constructor <init>([Lcom/flurry/android/monolithic/sdk/impl/mq;Lcom/flurry/android/monolithic/sdk/impl/mr;)V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ne;-><init>([Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ne;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ne;->a([Lcom/flurry/android/monolithic/sdk/impl/mq;I)I

    move-result v0

    return v0
.end method

.method public synthetic a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/mq;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ne;->b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ne;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ne;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ne;",
            "Lcom/flurry/android/monolithic/sdk/impl/ne;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ne;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/mx;",
            ">;>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/ne;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 304
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ne;

    .line 305
    if-nez v0, :cond_1

    .line 306
    new-instance v6, Lcom/flurry/android/monolithic/sdk/impl/ne;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ne;->a()I

    move-result v0

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/mq;

    invoke-direct {v6, v0}, Lcom/flurry/android/monolithic/sdk/impl/ne;-><init>([Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    .line 307
    invoke-interface {p1, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 309
    invoke-interface {p2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ne;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    iget-object v2, v6, Lcom/flurry/android/monolithic/sdk/impl/ne;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    move v3, v1

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/ne;->a([Lcom/flurry/android/monolithic/sdk/impl/mq;I[Lcom/flurry/android/monolithic/sdk/impl/mq;ILjava/util/Map;Ljava/util/Map;)V

    .line 313
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/mx;

    .line 314
    iget-object v3, v6, Lcom/flurry/android/monolithic/sdk/impl/ne;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    iget-object v4, v0, Lcom/flurry/android/monolithic/sdk/impl/mx;->a:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    iget v0, v0, Lcom/flurry/android/monolithic/sdk/impl/mx;->b:I

    iget-object v5, v6, Lcom/flurry/android/monolithic/sdk/impl/ne;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    array-length v5, v5

    invoke-static {v3, v1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 317
    :cond_0
    invoke-interface {p2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v6

    .line 319
    :cond_1
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/mq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/nf;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/nf;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ne;)V

    return-object v0
.end method
