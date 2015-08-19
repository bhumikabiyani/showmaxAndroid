.class public Lcom/flurry/android/monolithic/sdk/impl/mj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/flurry/android/monolithic/sdk/impl/mk;

.field protected b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

.field protected c:I


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/mq;Lcom/flurry/android/monolithic/sdk/impl/mk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->a:Lcom/flurry/android/monolithic/sdk/impl/mk;

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/mq;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    .line 58
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    .line 60
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    array-length v0, v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    array-length v1, v1

    const/16 v2, 0x400

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/flurry/android/monolithic/sdk/impl/mq;

    .line 68
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    .line 70
    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/android/monolithic/sdk/impl/mq;)Lcom/flurry/android/monolithic/sdk/impl/mq;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    aget-object v1, v0, v1

    .line 85
    if-ne v1, p1, :cond_1

    .line 101
    :goto_1
    return-object v1

    .line 89
    :cond_1
    iget-object v0, v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->a:Lcom/flurry/android/monolithic/sdk/impl/na;

    .line 90
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/na;->f:Lcom/flurry/android/monolithic/sdk/impl/na;

    if-ne v0, v2, :cond_2

    .line 91
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->a:Lcom/flurry/android/monolithic/sdk/impl/mk;

    invoke-interface {v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/mk;->a(Lcom/flurry/android/monolithic/sdk/impl/mq;Lcom/flurry/android/monolithic/sdk/impl/mq;)Lcom/flurry/android/monolithic/sdk/impl/mq;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_0

    goto :goto_1

    .line 95
    :cond_2
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/na;->a:Lcom/flurry/android/monolithic/sdk/impl/na;

    if-ne v0, v2, :cond_3

    .line 96
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jh;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to process a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was expected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_3
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/na;->d:Lcom/flurry/android/monolithic/sdk/impl/na;

    if-ne v0, v2, :cond_4

    move-object v0, v1

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/nb;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/nb;->z:Lcom/flurry/android/monolithic/sdk/impl/mq;

    if-ne p1, v0, :cond_4

    move-object v1, p1

    .line 101
    goto :goto_1

    .line 103
    :cond_4
    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/mj;->b(Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    goto :goto_0
.end method

.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    :goto_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 117
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/mq;->a:Lcom/flurry/android/monolithic/sdk/impl/na;

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/na;->f:Lcom/flurry/android/monolithic/sdk/impl/na;

    if-ne v1, v2, :cond_0

    .line 118
    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    .line 119
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->a:Lcom/flurry/android/monolithic/sdk/impl/mk;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/mk;->a(Lcom/flurry/android/monolithic/sdk/impl/mq;Lcom/flurry/android/monolithic/sdk/impl/mq;)Lcom/flurry/android/monolithic/sdk/impl/mq;

    goto :goto_0

    .line 120
    :cond_0
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/mq;->a:Lcom/flurry/android/monolithic/sdk/impl/na;

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/na;->a:Lcom/flurry/android/monolithic/sdk/impl/na;

    if-eq v1, v2, :cond_1

    .line 121
    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    .line 122
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/mj;->b(Lcom/flurry/android/monolithic/sdk/impl/mq;)V

    goto :goto_0

    .line 127
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    :goto_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    .line 135
    iget-object v0, v1, Lcom/flurry/android/monolithic/sdk/impl/mq;->a:Lcom/flurry/android/monolithic/sdk/impl/na;

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/na;->f:Lcom/flurry/android/monolithic/sdk/impl/na;

    if-ne v0, v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/my;

    iget-boolean v0, v0, Lcom/flurry/android/monolithic/sdk/impl/my;->A:Z

    if-eqz v0, :cond_0

    .line 137
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    .line 138
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->a:Lcom/flurry/android/monolithic/sdk/impl/mk;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/mk;->a(Lcom/flurry/android/monolithic/sdk/impl/mq;Lcom/flurry/android/monolithic/sdk/impl/mq;)Lcom/flurry/android/monolithic/sdk/impl/mq;

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public final b(Lcom/flurry/android/monolithic/sdk/impl/mq;)V
    .locals 5

    .prologue
    .line 152
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/mq;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    .line 153
    :goto_0
    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    array-length v2, v0

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/mj;->f()V

    goto :goto_0

    .line 156
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    iget v3, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    array-length v4, v0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    .line 158
    return-void
.end method

.method public c()Lcom/flurry/android/monolithic/sdk/impl/mq;
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public c(Lcom/flurry/android/monolithic/sdk/impl/mq;)V
    .locals 3

    .prologue
    .line 178
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/mj;->f()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    aput-object p1, v0, v1

    .line 182
    return-void
.end method

.method public d()Lcom/flurry/android/monolithic/sdk/impl/mq;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->b:[Lcom/flurry/android/monolithic/sdk/impl/mq;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mj;->c:I

    .line 193
    return-void
.end method
