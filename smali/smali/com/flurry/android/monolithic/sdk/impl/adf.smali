.class public Lcom/flurry/android/monolithic/sdk/impl/adf;
.super Lcom/flurry/android/monolithic/sdk/impl/adi;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/flurry/android/monolithic/sdk/impl/afm;

.field protected final b:Lcom/flurry/android/monolithic/sdk/impl/afm;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/afm;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-direct {p0, p1, v0, p4, p5}, Lcom/flurry/android/monolithic/sdk/impl/adi;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 47
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 48
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 49
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/adf;
    .locals 6

    .prologue
    .line 111
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/adf;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->f:Ljava/lang/Object;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/adf;-><init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/adf;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->f:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->g:Ljava/lang/Object;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/adf;-><init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    if-eqz v1, :cond_0

    .line 140
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    if-nez p1, :cond_0

    const-string v0, "K"

    .line 186
    :goto_0
    return-object v0

    .line 185
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "V"

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/adf;
    .locals 6

    .prologue
    .line 118
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/adf;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v3, p1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->f(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->f:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->g:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/adf;-><init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public b(I)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 172
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 174
    :goto_0
    return-object v0

    .line 173
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 70
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/adf;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v3, p1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->f(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->f:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->g:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/adf;-><init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/adf;
    .locals 6

    .prologue
    .line 125
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/adf;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->g:Ljava/lang/Object;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/adf;-><init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public c(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 80
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/adf;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v3, p1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->h(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->f:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->g:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/adf;-><init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public d(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 90
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/adf;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v2, p1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->f(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->f:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->g:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/adf;-><init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public synthetic d(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/adf;->c(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/adf;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 103
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/adf;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->d:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v2, p1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->h(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->f:Ljava/lang/Object;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->g:Ljava/lang/Object;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/adf;-><init>(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public synthetic e(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/adf;->b(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/adf;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 255
    if-ne p1, p0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v0

    .line 256
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 259
    :cond_3
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/adf;

    .line 260
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->d:Ljava/lang/Class;

    iget-object v3, p1, Lcom/flurry/android/monolithic/sdk/impl/adf;->d:Ljava/lang/Class;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v3, p1, Lcom/flurry/android/monolithic/sdk/impl/adf;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/afm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iget-object v3, p1, Lcom/flurry/android/monolithic/sdk/impl/adf;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/afm;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public synthetic f(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/adf;->a(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/adf;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public g()Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x2

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public k()Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    return-object v0
.end method

.method public l()Z
    .locals 2

    .prologue
    .line 237
    const-class v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[map-like type; class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->a:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/adf;->b:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
