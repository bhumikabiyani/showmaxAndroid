.class public Lcom/flurry/android/monolithic/sdk/impl/aaw;
.super Lcom/flurry/android/monolithic/sdk/impl/zf;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/zf;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/zf;-><init>(Lcom/flurry/android/monolithic/sdk/impl/zf;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/zf;Lcom/flurry/android/monolithic/sdk/impl/ra;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/zf;-><init>(Lcom/flurry/android/monolithic/sdk/impl/zf;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected a(Lcom/flurry/android/monolithic/sdk/impl/aal;Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ru;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/aal;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/ru;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aaw;->o:Lcom/flurry/android/monolithic/sdk/impl/afm;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aaw;->o:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {p3, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    .line 89
    invoke-virtual {p3, v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 93
    :goto_0
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ra;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a()Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aaw;->j:Lcom/flurry/android/monolithic/sdk/impl/aal;

    invoke-virtual {v1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/aal;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/aal;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aaw;->j:Lcom/flurry/android/monolithic/sdk/impl/aal;

    .line 97
    return-object v0

    .line 91
    :cond_1
    invoke-virtual {p3, p2, p0}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/zf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/android/monolithic/sdk/impl/aaw;

    if-eq v0, v1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UnwrappingBeanPropertyWriter sub-class does not override \'withSerializer()\'; needs to!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ra;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a()Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object p1

    .line 38
    :cond_1
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aaw;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aaw;-><init>(Lcom/flurry/android/monolithic/sdk/impl/zf;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aaw;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 46
    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    if-ne v1, p1, :cond_2

    .line 54
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aaw;->b(Ljava/lang/Object;)V

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aaw;->l:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aaw;->l:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aaw;->i:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 60
    if-nez v0, :cond_4

    .line 61
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 62
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/aaw;->j:Lcom/flurry/android/monolithic/sdk/impl/aal;

    .line 63
    invoke-virtual {v3, v2}, Lcom/flurry/android/monolithic/sdk/impl/aal;->a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 64
    if-nez v0, :cond_4

    .line 65
    invoke-virtual {p0, v3, v2, p3}, Lcom/flurry/android/monolithic/sdk/impl/aaw;->a(Lcom/flurry/android/monolithic/sdk/impl/aal;Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ru;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 70
    :cond_4
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ra;->b()Z

    move-result v2

    if-nez v2, :cond_5

    .line 71
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/aaw;->g:Lcom/flurry/android/monolithic/sdk/impl/pw;

    invoke-virtual {p2, v2}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Lcom/flurry/android/monolithic/sdk/impl/pw;)V

    .line 74
    :cond_5
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/aaw;->n:Lcom/flurry/android/monolithic/sdk/impl/rx;

    if-nez v2, :cond_6

    .line 75
    invoke-virtual {v0, v1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    goto :goto_0

    .line 77
    :cond_6
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/aaw;->n:Lcom/flurry/android/monolithic/sdk/impl/rx;

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V

    goto :goto_0
.end method
