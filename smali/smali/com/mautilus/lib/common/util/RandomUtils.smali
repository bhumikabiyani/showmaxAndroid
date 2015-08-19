.class public Lcom/mautilus/lib/common/util/RandomUtils;
.super Ljava/lang/Object;
.source "RandomUtils.java"


# static fields
.field private static sInstance:Lcom/mautilus/lib/common/util/RandomUtils;


# instance fields
.field private mRandom:Ljava/util/Random;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/mautilus/lib/common/util/RandomUtils;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/mautilus/lib/common/util/RandomUtils;->sInstance:Lcom/mautilus/lib/common/util/RandomUtils;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/mautilus/lib/common/util/RandomUtils;

    invoke-direct {v0}, Lcom/mautilus/lib/common/util/RandomUtils;-><init>()V

    sput-object v0, Lcom/mautilus/lib/common/util/RandomUtils;->sInstance:Lcom/mautilus/lib/common/util/RandomUtils;

    .line 28
    sget-object v0, Lcom/mautilus/lib/common/util/RandomUtils;->sInstance:Lcom/mautilus/lib/common/util/RandomUtils;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, v0, Lcom/mautilus/lib/common/util/RandomUtils;->mRandom:Ljava/util/Random;

    .line 30
    :cond_0
    sget-object v0, Lcom/mautilus/lib/common/util/RandomUtils;->sInstance:Lcom/mautilus/lib/common/util/RandomUtils;

    return-object v0
.end method


# virtual methods
.method public generateColor()I
    .locals 5

    .prologue
    const/16 v4, 0xff

    .line 50
    iget-object v3, p0, Lcom/mautilus/lib/common/util/RandomUtils;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 51
    .local v2, "r":I
    iget-object v3, p0, Lcom/mautilus/lib/common/util/RandomUtils;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 52
    .local v1, "g":I
    iget-object v3, p0, Lcom/mautilus/lib/common/util/RandomUtils;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 53
    .local v0, "b":I
    invoke-static {v2, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    return v3
.end method

.method public generateDirection(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 58
    iget-object v1, p0, Lcom/mautilus/lib/common/util/RandomUtils;->mRandom:Ljava/util/Random;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 59
    .local v0, "direction":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 61
    mul-int/lit8 p1, p1, -0x1

    .line 63
    .end local p1    # "value":I
    :cond_0
    return p1
.end method

.method public generateFloat()F
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mautilus/lib/common/util/RandomUtils;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public generateInt(II)I
    .locals 2
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 35
    iget-object v1, p0, Lcom/mautilus/lib/common/util/RandomUtils;->mRandom:Ljava/util/Random;

    invoke-virtual {v1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 36
    .local v0, "num":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/mautilus/lib/common/util/RandomUtils;->mRandom:Ljava/util/Random;

    invoke-virtual {v1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    goto :goto_0

    .line 40
    :cond_0
    return v0
.end method
