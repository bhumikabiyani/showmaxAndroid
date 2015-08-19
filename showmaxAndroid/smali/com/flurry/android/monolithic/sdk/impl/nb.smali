.class public Lcom/flurry/android/monolithic/sdk/impl/nb;
.super Lcom/flurry/android/monolithic/sdk/impl/mq;
.source "SourceFile"


# instance fields
.field public final z:Lcom/flurry/android/monolithic/sdk/impl/mq;


# direct methods
.method private varargs constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/mq;[Lcom/flurry/android/monolithic/sdk/impl/mq;)V
    .locals 2

    .prologue
    .line 332
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/na;->d:Lcom/flurry/android/monolithic/sdk/impl/na;

    invoke-static {p2}, Lcom/flurry/android/monolithic/sdk/impl/nb;->c([Lcom/flurry/android/monolithic/sdk/impl/mq;)[Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/mq;-><init>(Lcom/flurry/android/monolithic/sdk/impl/na;[Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    .line 333
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/nb;->z:Lcom/flurry/android/monolithic/sdk/impl/mq;

    .line 334
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nb;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 335
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/mq;[Lcom/flurry/android/monolithic/sdk/impl/mq;Lcom/flurry/android/monolithic/sdk/impl/mr;)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/nb;-><init>(Lcom/flurry/android/monolithic/sdk/impl/mq;[Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    return-void
.end method

.method private static c([Lcom/flurry/android/monolithic/sdk/impl/mq;)[Lcom/flurry/android/monolithic/sdk/impl/mq;
    .locals 4

    .prologue
    .line 338
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/mq;

    .line 339
    const/4 v1, 0x0

    const/4 v2, 0x1

    array-length v3, p0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    return-object v0
.end method


# virtual methods
.method public synthetic a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/mq;
    .locals 1

    .prologue
    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/nb;->b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/nb;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/nb;
    .locals 7
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
            "Lcom/flurry/android/monolithic/sdk/impl/nb;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 346
    new-instance v6, Lcom/flurry/android/monolithic/sdk/impl/nb;

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nb;->z:Lcom/flurry/android/monolithic/sdk/impl/mq;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/nb;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    invoke-static {v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/nb;->a([Lcom/flurry/android/monolithic/sdk/impl/mq;I)I

    move-result v2

    new-array v2, v2, [Lcom/flurry/android/monolithic/sdk/impl/mq;

    invoke-direct {v6, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/nb;-><init>(Lcom/flurry/android/monolithic/sdk/impl/mq;[Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    .line 348
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nb;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    iget-object v2, v6, Lcom/flurry/android/monolithic/sdk/impl/nb;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    move v3, v1

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/nb;->a([Lcom/flurry/android/monolithic/sdk/impl/mq;I[Lcom/flurry/android/monolithic/sdk/impl/mq;ILjava/util/Map;Ljava/util/Map;)V

    .line 349
    return-object v6
.end method
