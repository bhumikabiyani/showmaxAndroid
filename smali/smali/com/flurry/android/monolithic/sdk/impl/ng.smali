.class public Lcom/flurry/android/monolithic/sdk/impl/ng;
.super Lcom/flurry/android/monolithic/sdk/impl/my;
.source "SourceFile"


# instance fields
.field public final z:Lcom/flurry/android/monolithic/sdk/impl/mq;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/mq;)V
    .locals 2

    .prologue
    .line 443
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/my;-><init>(ZLcom/flurry/android/monolithic/sdk/impl/mr;)V

    .line 444
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ng;->z:Lcom/flurry/android/monolithic/sdk/impl/mq;

    .line 445
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/mq;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ng;->b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ng;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ng;
    .locals 2
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
            "Lcom/flurry/android/monolithic/sdk/impl/ng;"
        }
    .end annotation

    .prologue
    .line 450
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ng;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ng;->z:Lcom/flurry/android/monolithic/sdk/impl/mq;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/mq;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ng;-><init>(Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    return-object v0
.end method
