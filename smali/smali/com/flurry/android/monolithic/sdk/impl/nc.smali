.class public Lcom/flurry/android/monolithic/sdk/impl/nc;
.super Lcom/flurry/android/monolithic/sdk/impl/my;
.source "SourceFile"


# instance fields
.field public final B:Lcom/flurry/android/monolithic/sdk/impl/mq;

.field public final z:Lcom/flurry/android/monolithic/sdk/impl/mq;


# direct methods
.method private constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/mq;Lcom/flurry/android/monolithic/sdk/impl/mq;)V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/my;-><init>(Lcom/flurry/android/monolithic/sdk/impl/mr;)V

    .line 427
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/nc;->z:Lcom/flurry/android/monolithic/sdk/impl/mq;

    .line 428
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/nc;->B:Lcom/flurry/android/monolithic/sdk/impl/mq;

    .line 429
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/mq;Lcom/flurry/android/monolithic/sdk/impl/mq;Lcom/flurry/android/monolithic/sdk/impl/mr;)V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/nc;-><init>(Lcom/flurry/android/monolithic/sdk/impl/mq;Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/mq;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/nc;->b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/nc;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/nc;
    .locals 3
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
            "Lcom/flurry/android/monolithic/sdk/impl/nc;"
        }
    .end annotation

    .prologue
    .line 434
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/nc;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/nc;->z:Lcom/flurry/android/monolithic/sdk/impl/mq;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/mq;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/nc;->B:Lcom/flurry/android/monolithic/sdk/impl/mq;

    invoke-virtual {v2, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/mq;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/nc;-><init>(Lcom/flurry/android/monolithic/sdk/impl/mq;Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    return-object v0
.end method
