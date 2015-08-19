.class public final Lcom/flurry/android/monolithic/sdk/impl/aex;
.super Lcom/flurry/android/monolithic/sdk/impl/afc;
.source "SourceFile"


# instance fields
.field protected final c:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/afc;-><init>()V

    iput-wide p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aex;->c:D

    return-void
.end method

.method public static b(D)Lcom/flurry/android/monolithic/sdk/impl/aex;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aex;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aex;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aex;->c:D

    invoke-virtual {p1, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(D)V

    .line 85
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    if-ne p1, p0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 93
    goto :goto_0

    .line 95
    :cond_3
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/aex;

    iget-wide v2, p1, Lcom/flurry/android/monolithic/sdk/impl/aex;->c:D

    iget-wide v4, p0, Lcom/flurry/android/monolithic/sdk/impl/aex;->c:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aex;->c:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 103
    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long/2addr v0, v3

    long-to-int v0, v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aex;->c:D

    double-to-int v0, v0

    return v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aex;->c:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public l()D
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aex;->c:D

    return-wide v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aex;->c:D

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/pu;->a(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
