.class public Lcom/flurry/android/monolithic/sdk/impl/hk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/flurry/android/monolithic/sdk/impl/hl;

.field private e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->a:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->b:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->c:Ljava/util/Vector;

    .line 12
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hl;->c:Lcom/flurry/android/monolithic/sdk/impl/hl;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->d:Lcom/flurry/android/monolithic/sdk/impl/hl;

    .line 14
    const/16 v0, 0x1f

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->e:I

    .line 23
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->a:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hl;->b:Lcom/flurry/android/monolithic/sdk/impl/hl;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->d:Lcom/flurry/android/monolithic/sdk/impl/hl;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->a:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->b:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->c:Ljava/util/Vector;

    .line 12
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hl;->c:Lcom/flurry/android/monolithic/sdk/impl/hl;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->d:Lcom/flurry/android/monolithic/sdk/impl/hl;

    .line 14
    const/16 v0, 0x1f

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->e:I

    .line 28
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->a:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->b:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/hl;->a:Lcom/flurry/android/monolithic/sdk/impl/hl;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->d:Lcom/flurry/android/monolithic/sdk/impl/hl;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->c:Ljava/util/Vector;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->c:Ljava/util/Vector;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->c:Ljava/util/Vector;

    .line 39
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    if-ne p1, p0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 93
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 96
    goto :goto_0

    .line 99
    :cond_3
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/hm;

    .line 100
    iget-object v2, p1, Lcom/flurry/android/monolithic/sdk/impl/hm;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/flurry/android/monolithic/sdk/impl/hm;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/flurry/android/monolithic/sdk/impl/hm;->c:Ljava/util/Vector;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->c:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 107
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->e:I

    .line 116
    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->e:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->e:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->e:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/hk;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 120
    return v0
.end method
