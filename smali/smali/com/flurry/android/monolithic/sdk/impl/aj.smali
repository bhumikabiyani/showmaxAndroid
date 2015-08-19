.class abstract Lcom/flurry/android/monolithic/sdk/impl/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ag;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/aj;-><init>()V

    return-void
.end method

.method private static h(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)Z
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static i(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)Z
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)Landroid/view/ViewGroup$LayoutParams;
.end method

.method public b(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 138
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/aj;->h(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aj;->d(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aj;->f(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)I

    move-result v0

    goto :goto_0
.end method

.method public c(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 142
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/aj;->i(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aj;->e(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aj;->g(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)I

    move-result v0

    goto :goto_0
.end method

.method public d(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/je;->b(I)I

    move-result v0

    return v0
.end method

.method public e(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/je;->b(I)I

    move-result v0

    return v0
.end method

.method public f(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 154
    const/4 v0, -0x1

    return v0
.end method

.method public g(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)I
    .locals 1

    .prologue
    .line 158
    const/4 v0, -0x2

    return v0
.end method
