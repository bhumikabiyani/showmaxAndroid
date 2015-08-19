.class public Lcom/flurry/android/monolithic/sdk/impl/ni;
.super Lcom/flurry/android/monolithic/sdk/impl/my;
.source "SourceFile"


# instance fields
.field public final B:Lcom/flurry/android/monolithic/sdk/impl/mq;

.field public final z:I


# direct methods
.method public constructor <init>(ILcom/flurry/android/monolithic/sdk/impl/mq;)V
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/my;-><init>(Lcom/flurry/android/monolithic/sdk/impl/mr;)V

    .line 482
    iput p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ni;->z:I

    .line 483
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/ni;->B:Lcom/flurry/android/monolithic/sdk/impl/mq;

    .line 484
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/mq;
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ni;->b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ni;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ni;
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
            "Lcom/flurry/android/monolithic/sdk/impl/ni;"
        }
    .end annotation

    .prologue
    .line 489
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ni;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ni;->z:I

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ni;->B:Lcom/flurry/android/monolithic/sdk/impl/mq;

    invoke-virtual {v2, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/mq;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ni;-><init>(ILcom/flurry/android/monolithic/sdk/impl/mq;)V

    return-object v0
.end method
