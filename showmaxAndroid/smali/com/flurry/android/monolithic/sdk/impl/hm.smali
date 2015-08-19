.class public Lcom/flurry/android/monolithic/sdk/impl/hm;
.super Lcom/flurry/android/monolithic/sdk/impl/hk;
.source "SourceFile"


# instance fields
.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/hk;-><init>(Ljava/lang/String;)V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hm;->e:Ljava/lang/String;

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hm;->f:I

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hm;->g:I

    .line 14
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/hv;->a(IJ)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hm;->h:Ljava/util/LinkedHashMap;

    .line 24
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/flurry/android/monolithic/sdk/impl/hm;->f:I

    .line 78
    return-void
.end method

.method public d()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hm;->h:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hm;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hm;->g:I

    .line 62
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hm;->g:I

    return v0
.end method

.method public g()Lcom/flurry/android/monolithic/sdk/impl/hl;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hm;->d:Lcom/flurry/android/monolithic/sdk/impl/hl;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hm;->f:I

    return v0
.end method
