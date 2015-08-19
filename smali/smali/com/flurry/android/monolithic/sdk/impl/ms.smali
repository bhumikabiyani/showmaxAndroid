.class public Lcom/flurry/android/monolithic/sdk/impl/ms;
.super Lcom/flurry/android/monolithic/sdk/impl/mq;
.source "SourceFile"


# instance fields
.field public final A:[Ljava/lang/String;

.field public final z:[Lcom/flurry/android/monolithic/sdk/impl/mq;


# direct methods
.method private constructor <init>([Lcom/flurry/android/monolithic/sdk/impl/mq;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/na;->e:Lcom/flurry/android/monolithic/sdk/impl/na;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/mq;-><init>(Lcom/flurry/android/monolithic/sdk/impl/na;)V

    .line 359
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ms;->z:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    .line 360
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/ms;->A:[Ljava/lang/String;

    .line 361
    return-void
.end method

.method synthetic constructor <init>([Lcom/flurry/android/monolithic/sdk/impl/mq;[Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/mr;)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ms;-><init>([Lcom/flurry/android/monolithic/sdk/impl/mq;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/android/monolithic/sdk/impl/mq;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ms;->z:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public synthetic a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/mq;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ms;->b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ms;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/ms;
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
            "Lcom/flurry/android/monolithic/sdk/impl/ms;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ms;->z:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    array-length v0, v0

    new-array v1, v0, [Lcom/flurry/android/monolithic/sdk/impl/mq;

    .line 390
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ms;->z:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/mq;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v2

    aput-object v2, v1, v0

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ms;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ms;->A:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ms;-><init>([Lcom/flurry/android/monolithic/sdk/impl/mq;[Ljava/lang/String;)V

    return-object v0
.end method
