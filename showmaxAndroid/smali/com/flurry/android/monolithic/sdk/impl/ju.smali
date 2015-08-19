.class Lcom/flurry/android/monolithic/sdk/impl/ju;
.super Lcom/flurry/android/monolithic/sdk/impl/kb;
.source "SourceFile"


# instance fields
.field private final i:I


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ka;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 860
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/kj;->f:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-direct {p0, v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/kb;-><init>(Lcom/flurry/android/monolithic/sdk/impl/kj;Lcom/flurry/android/monolithic/sdk/impl/ka;Ljava/lang/String;)V

    .line 861
    if-gez p3, :cond_0

    .line 862
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fixed size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_0
    iput p3, p0, Lcom/flurry/android/monolithic/sdk/impl/ju;->i:I

    .line 864
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
    .line 877
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ju;->c(Lcom/flurry/android/monolithic/sdk/impl/kc;Lcom/flurry/android/monolithic/sdk/impl/or;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    :goto_0
    return-void

    .line 878
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->d()V

    .line 879
    const-string v0, "type"

    const-string v1, "fixed"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ju;->d(Lcom/flurry/android/monolithic/sdk/impl/kc;Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 881
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ju;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 882
    const-string v0, "doc"

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ju;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :cond_1
    const-string v0, "size"

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ju;->i:I

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;I)V

    .line 884
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ju;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/kf;->a(Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 885
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/ju;->a(Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 886
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->e()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 867
    if-ne p1, p0, :cond_1

    .line 870
    :cond_0
    :goto_0
    return v0

    .line 868
    :cond_1
    instance-of v2, p1, Lcom/flurry/android/monolithic/sdk/impl/ju;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 869
    :cond_2
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/ju;

    .line 870
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ju;->c(Lcom/flurry/android/monolithic/sdk/impl/ji;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ju;->a(Lcom/flurry/android/monolithic/sdk/impl/kb;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ju;->i:I

    iget v3, p1, Lcom/flurry/android/monolithic/sdk/impl/ju;->i:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ju;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    iget-object v3, p1, Lcom/flurry/android/monolithic/sdk/impl/ju;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    invoke-virtual {v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/kf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 865
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ju;->i:I

    return v0
.end method

.method m()I
    .locals 2

    .prologue
    .line 875
    invoke-super {p0}, Lcom/flurry/android/monolithic/sdk/impl/kb;->m()I

    move-result v0

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ju;->i:I

    add-int/2addr v0, v1

    return v0
.end method
