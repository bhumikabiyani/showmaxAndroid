.class public abstract Lcom/flurry/android/monolithic/sdk/impl/rf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/qg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/flurry/android/monolithic/sdk/impl/rf",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/flurry/android/monolithic/sdk/impl/qg;"
    }
.end annotation


# static fields
.field protected static final d:Ljava/text/DateFormat;


# instance fields
.field protected e:Lcom/flurry/android/monolithic/sdk/impl/rg;

.field protected f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/adb;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected g:Z

.field protected h:Lcom/flurry/android/monolithic/sdk/impl/yh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/aen;->f:Lcom/flurry/android/monolithic/sdk/impl/aen;

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/rf;->d:Ljava/text/DateFormat;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/qf;Lcom/flurry/android/monolithic/sdk/impl/py;Lcom/flurry/android/monolithic/sdk/impl/ye;Lcom/flurry/android/monolithic/sdk/impl/yh;Lcom/flurry/android/monolithic/sdk/impl/rl;Lcom/flurry/android/monolithic/sdk/impl/adk;Lcom/flurry/android/monolithic/sdk/impl/qs;)V
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
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/rg;

    const/4 v6, 0x0

    sget-object v7, Lcom/flurry/android/monolithic/sdk/impl/rf;->d:Ljava/text/DateFormat;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/flurry/android/monolithic/sdk/impl/rg;-><init>(Lcom/flurry/android/monolithic/sdk/impl/qf;Lcom/flurry/android/monolithic/sdk/impl/py;Lcom/flurry/android/monolithic/sdk/impl/ye;Lcom/flurry/android/monolithic/sdk/impl/rl;Lcom/flurry/android/monolithic/sdk/impl/adk;Lcom/flurry/android/monolithic/sdk/impl/yj;Ljava/text/DateFormat;Lcom/flurry/android/monolithic/sdk/impl/qs;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->e:Lcom/flurry/android/monolithic/sdk/impl/rg;

    .line 131
    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->h:Lcom/flurry/android/monolithic/sdk/impl/yh;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->g:Z

    .line 134
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/rg;Lcom/flurry/android/monolithic/sdk/impl/yh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rf",
            "<TT;>;",
            "Lcom/flurry/android/monolithic/sdk/impl/rg;",
            "Lcom/flurry/android/monolithic/sdk/impl/yh;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->e:Lcom/flurry/android/monolithic/sdk/impl/rg;

    .line 151
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->h:Lcom/flurry/android/monolithic/sdk/impl/yh;

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->g:Z

    .line 154
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/rf;->f:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->f:Ljava/util/HashMap;

    .line 155
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;"
        }
    .end annotation

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/rf;->m()Lcom/flurry/android/monolithic/sdk/impl/adk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/adk;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/flurry/android/monolithic/sdk/impl/py;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->e:Lcom/flurry/android/monolithic/sdk/impl/rg;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rg;->b()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/qb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DESC:",
            "Lcom/flurry/android/monolithic/sdk/impl/qb;",
            ">(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            ")TDESC;"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->f:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/adb;

    invoke-direct {v1, p1}, Lcom/flurry/android/monolithic/sdk/impl/adb;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0
.end method

.method public final b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;"
        }
    .end annotation

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/rf;->m()Lcom/flurry/android/monolithic/sdk/impl/adk;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/adj;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/adk;->a(Ljava/lang/reflect/Type;Lcom/flurry/android/monolithic/sdk/impl/adj;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    return-object v0
.end method

.method public abstract b()Z
.end method

.method public c(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DESC:",
            "Lcom/flurry/android/monolithic/sdk/impl/qb;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TDESC;"
        }
    .end annotation

    .prologue
    .line 634
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/rf;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/rf;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/qb;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()Z
.end method

.method public final d(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/yj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/yj",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->e:Lcom/flurry/android/monolithic/sdk/impl/rg;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rg;->f()Lcom/flurry/android/monolithic/sdk/impl/yj;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/flurry/android/monolithic/sdk/impl/xg;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/yj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/xg;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/android/monolithic/sdk/impl/yj",
            "<*>;>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/yj",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/rf;->k()Lcom/flurry/android/monolithic/sdk/impl/qs;

    move-result-object v0

    .line 679
    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/qs;->a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/xg;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/yj;

    move-result-object v0

    .line 681
    if-eqz v0, :cond_0

    .line 685
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/rf;->c()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/adz;->b(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/yj;

    goto :goto_0
.end method

.method public abstract d()Z
.end method

.method public e()Lcom/flurry/android/monolithic/sdk/impl/ye;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/android/monolithic/sdk/impl/ye",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->e:Lcom/flurry/android/monolithic/sdk/impl/rg;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rg;->c()Lcom/flurry/android/monolithic/sdk/impl/ye;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/flurry/android/monolithic/sdk/impl/xg;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/yi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/xg;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/flurry/android/monolithic/sdk/impl/yi;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/yi;"
        }
    .end annotation

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/rf;->k()Lcom/flurry/android/monolithic/sdk/impl/qs;

    move-result-object v0

    .line 698
    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/qs;->b(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/xg;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/yi;

    move-result-object v0

    .line 700
    if-eqz v0, :cond_0

    .line 704
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/rf;->c()Z

    move-result v0

    invoke-static {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/adz;->b(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/yi;

    goto :goto_0
.end method

.method public i()Lcom/flurry/android/monolithic/sdk/impl/qf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/android/monolithic/sdk/impl/qf",
            "<+",
            "Lcom/flurry/android/monolithic/sdk/impl/qb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->e:Lcom/flurry/android/monolithic/sdk/impl/rg;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rg;->a()Lcom/flurry/android/monolithic/sdk/impl/qf;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/flurry/android/monolithic/sdk/impl/rl;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->e:Lcom/flurry/android/monolithic/sdk/impl/rg;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rg;->d()Lcom/flurry/android/monolithic/sdk/impl/rl;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/flurry/android/monolithic/sdk/impl/qs;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->e:Lcom/flurry/android/monolithic/sdk/impl/rg;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rg;->h()Lcom/flurry/android/monolithic/sdk/impl/qs;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lcom/flurry/android/monolithic/sdk/impl/yh;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->h:Lcom/flurry/android/monolithic/sdk/impl/yh;

    if-nez v0, :cond_0

    .line 555
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/yv;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/yv;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->h:Lcom/flurry/android/monolithic/sdk/impl/yh;

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->h:Lcom/flurry/android/monolithic/sdk/impl/yh;

    return-object v0
.end method

.method public final m()Lcom/flurry/android/monolithic/sdk/impl/adk;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->e:Lcom/flurry/android/monolithic/sdk/impl/rg;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rg;->e()Lcom/flurry/android/monolithic/sdk/impl/adk;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rf;->e:Lcom/flurry/android/monolithic/sdk/impl/rg;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rg;->g()Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method
