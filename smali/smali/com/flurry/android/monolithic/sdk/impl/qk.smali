.class public Lcom/flurry/android/monolithic/sdk/impl/qk;
.super Lcom/flurry/android/monolithic/sdk/impl/ri;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/ri",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/ql;",
        "Lcom/flurry/android/monolithic/sdk/impl/qk;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/flurry/android/monolithic/sdk/impl/aeg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/aeg",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/qn;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Lcom/flurry/android/monolithic/sdk/impl/aez;

.field protected c:Z


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
    .line 406
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->d(Ljava/lang/Class;)I

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

    .line 408
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/aez;->a:Lcom/flurry/android/monolithic/sdk/impl/aez;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qk;->b:Lcom/flurry/android/monolithic/sdk/impl/aez;

    .line 409
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/rg;)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/qk;->h:Lcom/flurry/android/monolithic/sdk/impl/yh;

    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ri;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ri;Lcom/flurry/android/monolithic/sdk/impl/rg;Lcom/flurry/android/monolithic/sdk/impl/yh;)V

    .line 438
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/qk;->a:Lcom/flurry/android/monolithic/sdk/impl/aeg;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qk;->a:Lcom/flurry/android/monolithic/sdk/impl/aeg;

    .line 439
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/qk;->b:Lcom/flurry/android/monolithic/sdk/impl/aez;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qk;->b:Lcom/flurry/android/monolithic/sdk/impl/aez;

    .line 440
    iget-boolean v0, p1, Lcom/flurry/android/monolithic/sdk/impl/qk;->c:Z

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qk;->c:Z

    .line 441
    return-void
.end method

.method private constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/qk;Ljava/util/HashMap;Lcom/flurry/android/monolithic/sdk/impl/yh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/qk;",
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
    .line 427
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/qk;->e:Lcom/flurry/android/monolithic/sdk/impl/rg;

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/rg;)V

    .line 428
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/qk;->f:Ljava/util/HashMap;

    .line 429
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/qk;->h:Lcom/flurry/android/monolithic/sdk/impl/yh;

    .line 430
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/py;
    .locals 1

    .prologue
    .line 671
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->a:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-super {p0}, Lcom/flurry/android/monolithic/sdk/impl/ri;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v0

    .line 674
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ya;->a:Lcom/flurry/android/monolithic/sdk/impl/ya;

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
    .line 686
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->i()Lcom/flurry/android/monolithic/sdk/impl/qf;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/qf;->a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/qb;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)Lcom/flurry/android/monolithic/sdk/impl/qk;
    .locals 1

    .prologue
    .line 474
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/rr;->l:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rr;->b()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qk;->c:Z

    .line 476
    return-object p0

    .line 474
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/yh;)Lcom/flurry/android/monolithic/sdk/impl/qk;
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qk;->f:Ljava/util/HashMap;

    .line 657
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/qk;->g:Z

    .line 658
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/qk;

    invoke-direct {v1, p0, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/qk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/qk;Ljava/util/HashMap;Lcom/flurry/android/monolithic/sdk/impl/yh;)V

    return-object v1
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/xg;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/xg;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<*>;>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->k()Lcom/flurry/android/monolithic/sdk/impl/qs;

    move-result-object v0

    .line 891
    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/qs;->a(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/xg;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qu;

    move-result-object v0

    .line 893
    if-eqz v0, :cond_0

    .line 897
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->c()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/adz;->b(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/qu;

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z
    .locals 2

    .prologue
    .line 755
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qk;->i:I

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ql;->b()I

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
    .line 868
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->i()Lcom/flurry/android/monolithic/sdk/impl/qf;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/qf;->a(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/qb;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/xg;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/rc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/xg;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/android/monolithic/sdk/impl/rc;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/rc;"
        }
    .end annotation

    .prologue
    .line 903
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->k()Lcom/flurry/android/monolithic/sdk/impl/qs;

    move-result-object v0

    .line 904
    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/qs;->b(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/xg;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/rc;

    move-result-object v0

    .line 906
    if-eqz v0, :cond_0

    .line 910
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->c()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/adz;->b(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/rc;

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 704
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->a:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/qb;
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
    .line 877
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->i()Lcom/flurry/android/monolithic/sdk/impl/qf;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/qf;->b(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qg;)Lcom/flurry/android/monolithic/sdk/impl/qb;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/flurry/android/monolithic/sdk/impl/xg;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/th;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/xg;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/android/monolithic/sdk/impl/th;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/th;"
        }
    .end annotation

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->k()Lcom/flurry/android/monolithic/sdk/impl/qs;

    move-result-object v0

    .line 917
    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/qs;->c(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/xg;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/th;

    move-result-object v0

    .line 919
    if-eqz v0, :cond_0

    .line 923
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->c()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/adz;->b(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/th;

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 709
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->f:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qk;->c:Z

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
    .line 720
    invoke-super {p0}, Lcom/flurry/android/monolithic/sdk/impl/ri;->e()Lcom/flurry/android/monolithic/sdk/impl/ye;

    move-result-object v0

    .line 721
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ql;->b:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qk;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ye;->c(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/android/monolithic/sdk/impl/ye;

    move-result-object v0

    .line 724
    :cond_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ql;->c:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qk;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 725
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ye;->d(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/android/monolithic/sdk/impl/ye;

    move-result-object v0

    .line 727
    :cond_1
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ql;->d:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qk;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 728
    sget-object v1, Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->NONE:Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;

    invoke-interface {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ye;->e(Lcom/flurry/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/flurry/android/monolithic/sdk/impl/ye;

    move-result-object v0

    .line 730
    :cond_2
    return-object v0
.end method

.method public f()Lcom/flurry/android/monolithic/sdk/impl/aeg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/android/monolithic/sdk/impl/aeg",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/qn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 803
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qk;->a:Lcom/flurry/android/monolithic/sdk/impl/aeg;

    return-object v0
.end method

.method public g()Lcom/flurry/android/monolithic/sdk/impl/on;
    .locals 1

    .prologue
    .line 844
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/oo;->a()Lcom/flurry/android/monolithic/sdk/impl/on;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/flurry/android/monolithic/sdk/impl/aez;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/qk;->b:Lcom/flurry/android/monolithic/sdk/impl/aez;

    return-object v0
.end method
