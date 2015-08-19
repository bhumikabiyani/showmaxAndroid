.class public Lcom/flurry/android/monolithic/sdk/impl/rq;
.super Lcom/flurry/android/monolithic/sdk/impl/ri;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/ri",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/rr;",
        "Lcom/flurry/android/monolithic/sdk/impl/rq;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/flurry/android/monolithic/sdk/impl/sf;

.field protected b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected c:Lcom/flurry/android/monolithic/sdk/impl/zl;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/qf;Lcom/flurry/android/monolithic/sdk/impl/py;Lcom/flurry/android/monolithic/sdk/impl/ye;Lcom/flurry/android/monolithic/sdk/impl/yh;Lcom/flurry/android/monolithic/sdk/impl/rl;Lcom/flurry/android/monolithic/sdk/impl/adk;Lcom/flurry/android/monolithic/sdk/impl/qs;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/qf",
            "<+",
            "Lcom/flurry/android/monolithic/sdk/impl/qb;",
            ">;",
            "Lcom/flurry/android/monolithic/sdk/impl/py;",
            "Lcom/flurry/android/monolithic/sdk/impl/ye",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/yh;",
            "Lcom/flurry/android/monolithic/sdk/impl/rl;",
            "Lcom/flurry/android/monolithic/sdk/impl/adk;",
            "Lcom/flurry/android/monolithic/sdk/impl/qs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 490
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->d(Ljava/lang/Class;)I

    move-result v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/flurry/android/monolithic/sdk/impl/ri;-><init>(Lcom/flurry/android/monolithic/sdk/impl/qf;Lcom/flurry/android/monolithic/sdk/impl/py;Lcom/flurry/android/monolithic/sdk/impl/ye;Lcom/flurry/android/monolithic/sdk/impl/yh;Lcom/flurry/android/monolithic/sdk/impl/rl;Lcom/flurry/android/monolithic/sdk/impl/adk;Lcom/flurry/android/monolithic/sdk/impl/qs;I)V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rq;->a:Lcom/flurry/android/monolithic/sdk/impl/sf;

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rq;->c:Lcom/flurry/android/monolithic/sdk/impl/zl;

    .line 493
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/rg;)V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/rq;->h:Lcom/flurry/android/monolithic/sdk/impl/yh;

    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ri;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ri;Lcom/flurry/android/monolithic/sdk/impl/rg;Lcom/flurry/android/monolithic/sdk/impl/yh;)V

    .line 459
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rq;->a:Lcom/flurry/android/monolithic/sdk/impl/sf;

    .line 521
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/rq;->a:Lcom/flurry/android/monolithic/sdk/impl/sf;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rq;->a:Lcom/flurry/android/monolithic/sdk/impl/sf;

    .line 522
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/rq;->b:Ljava/lang/Class;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rq;->b:Ljava/lang/Class;

    .line 523
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/rq;->c:Lcom/flurry/android/monolithic/sdk/impl/zl;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rq;->c:Lcom/flurry/android/monolithic/sdk/impl/zl;

    .line 524
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/rq;Ljava/util/HashMap;Lcom/flurry/android/monolithic/sdk/impl/yh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/adb;",
            "Ljava/lang/Class",
            "<*>;>;",
            "Lcom/flurry/android/monolithic/sdk/impl/yh;",
            ")V"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/rq;->e:Lcom/flurry/android/monolithic/sdk/impl/rg;

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;-><init>(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/rg;)V

    .line 511
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/rq;->f:Ljava/util/HashMap;

    .line 512
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/rq;->h:Lcom/flurry/android/monolithic/sdk/impl/yh;

    .line 513
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/py;
    .locals 1

    .prologue
    .line 785
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/rr;->a:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    invoke-super {p0}, Lcom/flurry/android/monolithic/sdk/impl/ri;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v0

    .line 788
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/py;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/qb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/flurry/android/monolithic/sdk/impl/qb;",
            ">(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->i()Lcom/flurry/android/monolithic/sdk/impl/qf;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/qf;->a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/qb;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/xg;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/xg;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<*>;>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->k()Lcom/flurry/android/monolithic/sdk/impl/qs;

    move-result-object v0

    .line 986
    if-eqz v0, :cond_0

    .line 987
    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/qs;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xg;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 988
    if-eqz v0, :cond_0

    .line 992
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->c()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/adz;->b(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ra;

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/yh;)Lcom/flurry/android/monolithic/sdk/impl/rq;
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rq;->f:Ljava/util/HashMap;

    .line 775
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/rq;->g:Z

    .line 776
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-direct {v1, p0, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;-><init>(Lcom/flurry/android/monolithic/sdk/impl/rq;Ljava/util/HashMap;Lcom/flurry/android/monolithic/sdk/impl/yh;)V

    return-object v1
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z
    .locals 2

    .prologue
    .line 867
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rq;->i:I

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rr;->b()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/qb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/flurry/android/monolithic/sdk/impl/qb;",
            ">(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->i()Lcom/flurry/android/monolithic/sdk/impl/qf;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/qf;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/qb;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 818
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/rr;->a:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 823
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/rr;->e:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 828
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/rr;->l:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    return v0
.end method

.method public e()Lcom/flurry/android/monolithic/sdk/impl/ye;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/android/monolithic/sdk/impl/ye",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 834
    invoke-super {p0}, Lcom/flurry/android/monolithic/sdk/impl/ri;->e()Lcom/flurry/android/monolithic/sdk/impl/ye;

    move-result-object v0

    .line 835
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/rr;->b:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 836
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ye;->a(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/android/monolithic/sdk/impl/ye;

    move-result-object v0

    .line 839
    :cond_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/rr;->c:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 840
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ye;->b(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/android/monolithic/sdk/impl/ye;

    move-result-object v0

    .line 842
    :cond_1
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/rr;->d:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 843
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ye;->e(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/android/monolithic/sdk/impl/ye;

    move-result-object v0

    .line 845
    :cond_2
    return-object v0
.end method

.method public f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 915
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rq;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public g()Lcom/flurry/android/monolithic/sdk/impl/sf;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rq;->a:Lcom/flurry/android/monolithic/sdk/impl/sf;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rq;->a:Lcom/flurry/android/monolithic/sdk/impl/sf;

    .line 922
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/rr;->g:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/sf;->a:Lcom/flurry/android/monolithic/sdk/impl/sf;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/sf;->b:Lcom/flurry/android/monolithic/sdk/impl/sf;

    goto :goto_0
.end method

.method public h()Lcom/flurry/android/monolithic/sdk/impl/zl;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rq;->c:Lcom/flurry/android/monolithic/sdk/impl/zl;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SerializationConfig: flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/rq;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
