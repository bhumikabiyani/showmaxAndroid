.class public Lcom/flurry/android/monolithic/sdk/impl/nd;
.super Lcom/flurry/android/monolithic/sdk/impl/mq;
.source "SourceFile"


# direct methods
.method private varargs constructor <init>([Lcom/flurry/android/monolithic/sdk/impl/mq;)V
    .locals 2

    .prologue
    .line 254
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/na;->b:Lcom/flurry/android/monolithic/sdk/impl/na;

    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/nd;->c([Lcom/flurry/android/monolithic/sdk/impl/mq;)[Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/mq;-><init>(Lcom/flurry/android/monolithic/sdk/impl/na;[Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    .line 255
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nd;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 256
    return-void
.end method

.method synthetic constructor <init>([Lcom/flurry/android/monolithic/sdk/impl/mq;Lcom/flurry/android/monolithic/sdk/impl/mr;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/nd;-><init>([Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    return-void
.end method

.method private static c([Lcom/flurry/android/monolithic/sdk/impl/mq;)[Lcom/flurry/android/monolithic/sdk/impl/mq;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 259
    invoke-static {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/nd;->a([Lcom/flurry/android/monolithic/sdk/impl/mq;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Lcom/flurry/android/monolithic/sdk/impl/mq;

    .line 260
    const/4 v3, 0x1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/nd;->a([Lcom/flurry/android/monolithic/sdk/impl/mq;I[Lcom/flurry/android/monolithic/sdk/impl/mq;ILjava/util/Map;Ljava/util/Map;)V

    .line 263
    return-object v2
.end method
