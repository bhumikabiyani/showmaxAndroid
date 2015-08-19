.class Lcom/flurry/android/monolithic/sdk/impl/jz;
.super Lcom/flurry/android/monolithic/sdk/impl/ji;
.source "SourceFile"


# instance fields
.field private final f:Lcom/flurry/android/monolithic/sdk/impl/ji;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ji;)V
    .locals 1

    .prologue
    .line 784
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/kj;->d:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ji;-><init>(Lcom/flurry/android/monolithic/sdk/impl/kj;)V

    .line 785
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/jz;->f:Lcom/flurry/android/monolithic/sdk/impl/ji;

    .line 786
    return-void
.end method


# virtual methods
.method a(Lcom/flurry/android/monolithic/sdk/impl/kc;Lcom/flurry/android/monolithic/sdk/impl/or;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 800
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->d()V

    .line 801
    const-string v0, "type"

    const-string v1, "map"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    const-string v0, "values"

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jz;->f:Lcom/flurry/android/monolithic/sdk/impl/ji;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/kc;Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 804
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jz;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/kf;->a(Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 805
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->e()V

    .line 806
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 789
    if-ne p1, p0, :cond_1

    .line 792
    :cond_0
    :goto_0
    return v0

    .line 790
    :cond_1
    instance-of v2, p1, Lcom/flurry/android/monolithic/sdk/impl/jz;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 791
    :cond_2
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/jz;

    .line 792
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/jz;->c(Lcom/flurry/android/monolithic/sdk/impl/ji;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/jz;->f:Lcom/flurry/android/monolithic/sdk/impl/ji;

    iget-object v3, p1, Lcom/flurry/android/monolithic/sdk/impl/jz;->f:Lcom/flurry/android/monolithic/sdk/impl/ji;

    invoke-virtual {v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ji;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/jz;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    iget-object v3, p1, Lcom/flurry/android/monolithic/sdk/impl/jz;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    invoke-virtual {v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/kf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public j()Lcom/flurry/android/monolithic/sdk/impl/ji;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/jz;->f:Lcom/flurry/android/monolithic/sdk/impl/ji;

    return-object v0
.end method

.method m()I
    .locals 2

    .prologue
    .line 797
    invoke-super {p0}, Lcom/flurry/android/monolithic/sdk/impl/ji;->m()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/jz;->f:Lcom/flurry/android/monolithic/sdk/impl/ji;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->m()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
