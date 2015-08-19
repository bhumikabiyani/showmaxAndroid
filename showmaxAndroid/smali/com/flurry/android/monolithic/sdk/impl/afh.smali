.class public final Lcom/flurry/android/monolithic/sdk/impl/afh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/flurry/android/monolithic/sdk/impl/afh;

.field final b:Z

.field private c:I

.field private d:I

.field private e:[I

.field private f:[Lcom/flurry/android/monolithic/sdk/impl/afl;

.field private g:[Lcom/flurry/android/monolithic/sdk/impl/afi;

.field private h:I

.field private transient i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method private constructor <init>(IZ)V
    .locals 2

    .prologue
    const/16 v0, 0x10

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/afh;->a:Lcom/flurry/android/monolithic/sdk/impl/afh;

    .line 202
    iput-boolean p2, p0, Lcom/flurry/android/monolithic/sdk/impl/afh;->b:Z

    .line 206
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 220
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afh;->a(I)V

    .line 221
    return-void

    .line 212
    :cond_1
    add-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 214
    :goto_1
    if-ge v0, p1, :cond_2

    .line 215
    add-int/2addr v0, v0

    goto :goto_1

    :cond_2
    move p1, v0

    .line 217
    goto :goto_0
.end method

.method public static a()Lcom/flurry/android/monolithic/sdk/impl/afh;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afh;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/afh;-><init>(IZ)V

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 248
    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/afh;->c:I

    .line 249
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afh;->e:[I

    .line 250
    new-array v0, p1, [Lcom/flurry/android/monolithic/sdk/impl/afl;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afh;->f:[Lcom/flurry/android/monolithic/sdk/impl/afl;

    .line 251
    iput-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/afh;->j:Z

    .line 252
    iput-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/afh;->k:Z

    .line 253
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afh;->d:I

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afh;->l:Z

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/afh;->g:[Lcom/flurry/android/monolithic/sdk/impl/afi;

    .line 257
    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/afh;->h:I

    .line 259
    iput-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/afh;->i:Z

    .line 260
    return-void
.end method
