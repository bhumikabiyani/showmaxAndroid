.class public final Lcom/flurry/android/monolithic/sdk/impl/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)Lcom/flurry/android/AdCreative;
    .locals 6

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 31
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 32
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 35
    new-instance v0, Lcom/flurry/android/AdCreative;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/AdCreative;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Lcom/flurry/android/AdCreative;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 39
    if-nez p0, :cond_0

    move-object v0, v1

    .line 58
    :goto_0
    return-object v0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 45
    goto :goto_0

    .line 48
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    .line 49
    if-nez v0, :cond_3

    move-object v0, v1

    .line 50
    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;

    move-result-object v0

    .line 54
    if-nez v0, :cond_4

    move-object v0, v1

    .line 55
    goto :goto_0

    .line 58
    :cond_4
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ab;->a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)Lcom/flurry/android/AdCreative;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/flurry/android/impl/ads/FlurryAdModule;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/m;
    .locals 6

    .prologue
    .line 22
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/m;

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->i()J

    move-result-wide v4

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/m;-><init>(JLjava/lang/String;J)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/monolithic/sdk/impl/m;)V

    .line 24
    return-object v0
.end method

.method public static b(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)Lcom/flurry/android/FlurryAdSize;
    .locals 2

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 63
    sget-object v0, Lcom/flurry/android/FlurryAdSize;->BANNER_TOP:Lcom/flurry/android/FlurryAdSize;

    .line 76
    :goto_0
    return-object v0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->e()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v1, "takeover"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    sget-object v0, Lcom/flurry/android/FlurryAdSize;->FULLSCREEN:Lcom/flurry/android/FlurryAdSize;

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->f()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 73
    array-length v1, v0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    sget-object v0, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    goto :goto_0

    .line 76
    :cond_2
    sget-object v0, Lcom/flurry/android/FlurryAdSize;->BANNER_TOP:Lcom/flurry/android/FlurryAdSize;

    goto :goto_0
.end method
