.class public Lcom/flurry/android/monolithic/sdk/impl/zi;
.super Lcom/flurry/android/monolithic/sdk/impl/zd;
.source "SourceFile"


# static fields
.field public static final e:Lcom/flurry/android/monolithic/sdk/impl/zi;


# instance fields
.field protected final f:Lcom/flurry/android/monolithic/sdk/impl/rt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/zi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/zi;-><init>(Lcom/flurry/android/monolithic/sdk/impl/rt;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/zi;->e:Lcom/flurry/android/monolithic/sdk/impl/zi;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/rt;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/zd;-><init>()V

    .line 187
    if-nez p1, :cond_0

    .line 188
    new-instance p1, Lcom/flurry/android/monolithic/sdk/impl/zj;

    invoke-direct {p1}, Lcom/flurry/android/monolithic/sdk/impl/zj;-><init>()V

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/zi;->f:Lcom/flurry/android/monolithic/sdk/impl/rt;

    .line 191
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
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
    .line 251
    invoke-virtual {p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/rq;->b(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/qb;

    move-result-object v3

    check-cast v3, Lcom/flurry/android/monolithic/sdk/impl/xq;

    .line 252
    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/xq;->c()Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/flurry/android/monolithic/sdk/impl/zi;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xg;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-object v0

    .line 258
    :cond_1
    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/xq;->c()Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/zi;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xg;Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v2

    .line 260
    if-eq v2, p2, :cond_2

    const/4 v5, 0x1

    .line 263
    :goto_1
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    .line 264
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/zi;->b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;Z)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zi;->f:Lcom/flurry/android/monolithic/sdk/impl/rt;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rt;->c()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/rv;

    .line 269
    invoke-interface {v0, p1, v2, v3, p3}, Lcom/flurry/android/monolithic/sdk/impl/rv;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qb;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_4

    goto :goto_0

    :cond_5
    move-object v6, p0

    move-object v7, v2

    move-object v8, p1

    move-object v9, v3

    move-object v10, p3

    move v11, v5

    .line 279
    invoke-virtual/range {v6 .. v11}, Lcom/flurry/android/monolithic/sdk/impl/zi;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;Z)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 280
    if-nez v0, :cond_0

    move-object v6, p0

    move-object v7, v2

    move-object v8, p1

    move-object v9, v3

    move-object v10, p3

    move v11, v5

    .line 281
    invoke-virtual/range {v6 .. v11}, Lcom/flurry/android/monolithic/sdk/impl/zi;->b(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;Z)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 282
    if-nez v0, :cond_0

    .line 287
    invoke-virtual {p0, p1, v2, v3, p3}, Lcom/flurry/android/monolithic/sdk/impl/zi;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 291
    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    .line 292
    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/zi;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;Z)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
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
    .line 340
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/zi;->b(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    const/4 v1, 0x0

    .line 350
    :cond_0
    :goto_0
    return-object v1

    .line 343
    :cond_1
    invoke-virtual {p0, p1, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/zi;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zi;->f:Lcom/flurry/android/monolithic/sdk/impl/rt;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/rt;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zi;->f:Lcom/flurry/android/monolithic/sdk/impl/rt;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/rt;->e()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/zk;

    .line 347
    invoke-virtual {v0, p1, p3, v1}, Lcom/flurry/android/monolithic/sdk/impl/zk;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
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
    const/4 v0, 0x0

    .line 423
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/xq;->b()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not create bean serializer for Object.class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/zi;->a(Lcom/flurry/android/monolithic/sdk/impl/xq;)Lcom/flurry/android/monolithic/sdk/impl/zh;

    move-result-object v7

    .line 430
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/zi;->c(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;)Ljava/util/List;

    move-result-object v1

    .line 432
    if-nez v1, :cond_1

    .line 433
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    :cond_1
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zi;->f:Lcom/flurry/android/monolithic/sdk/impl/rt;

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/rt;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zi;->f:Lcom/flurry/android/monolithic/sdk/impl/rt;

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/rt;->e()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/monolithic/sdk/impl/zk;

    .line 438
    invoke-virtual {v1, p1, p2, v2}, Lcom/flurry/android/monolithic/sdk/impl/zk;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 443
    :cond_3
    invoke-virtual {p0, p1, p2, v2}, Lcom/flurry/android/monolithic/sdk/impl/zi;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 445
    invoke-virtual {p0, p1, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/zi;->b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 448
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zi;->f:Lcom/flurry/android/monolithic/sdk/impl/rt;

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/rt;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 449
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zi;->f:Lcom/flurry/android/monolithic/sdk/impl/rt;

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/rt;->e()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/monolithic/sdk/impl/zk;

    .line 450
    invoke-virtual {v1, p1, p2, v2}, Lcom/flurry/android/monolithic/sdk/impl/zk;->b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    :cond_4
    move-object v2, v1

    .line 454
    :cond_5
    invoke-virtual {v7, v2}, Lcom/flurry/android/monolithic/sdk/impl/zh;->a(Ljava/util/List;)V

    .line 455
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/zi;->b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/flurry/android/monolithic/sdk/impl/zh;->a(Ljava/lang/Object;)V

    .line 457
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/xq;->p()Lcom/flurry/android/monolithic/sdk/impl/xl;

    move-result-object v8

    .line 458
    if-eqz v8, :cond_7

    .line 459
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/rr;->e:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 460
    invoke-virtual {v8}, Lcom/flurry/android/monolithic/sdk/impl/xl;->k()V

    .line 462
    :cond_6
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/xq;->j()Lcom/flurry/android/monolithic/sdk/impl/adj;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/flurry/android/monolithic/sdk/impl/xl;->a(Lcom/flurry/android/monolithic/sdk/impl/adj;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v1

    .line 464
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/rr;->h:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v2

    .line 465
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->g()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v3

    .line 466
    invoke-virtual {p0, p1, v3, p3}, Lcom/flurry/android/monolithic/sdk/impl/zi;->b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/rx;

    move-result-object v3

    move-object v4, p3

    move-object v5, v0

    move-object v6, v0

    .line 468
    invoke-static/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/abl;->a([Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;ZLcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/abl;

    move-result-object v0

    .line 470
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/zc;

    invoke-direct {v1, v8, v0}, Lcom/flurry/android/monolithic/sdk/impl/zc;-><init>(Lcom/flurry/android/monolithic/sdk/impl/xl;Lcom/flurry/android/monolithic/sdk/impl/abl;)V

    invoke-virtual {v7, v1}, Lcom/flurry/android/monolithic/sdk/impl/zh;->a(Lcom/flurry/android/monolithic/sdk/impl/zc;)V

    .line 473
    :cond_7
    invoke-virtual {p0, p1, v7}, Lcom/flurry/android/monolithic/sdk/impl/zi;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/zh;)V

    .line 475
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zi;->f:Lcom/flurry/android/monolithic/sdk/impl/rt;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rt;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 476
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zi;->f:Lcom/flurry/android/monolithic/sdk/impl/rt;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rt;->e()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v7

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/zk;

    .line 477
    invoke-virtual {v0, p1, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/zk;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/zh;)Lcom/flurry/android/monolithic/sdk/impl/zh;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_8
    move-object v1, v7

    .line 480
    :cond_9
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/zh;->b()Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 485
    if-nez v0, :cond_a

    .line 490
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/xq;->h()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 491
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/zh;->c()Lcom/flurry/android/monolithic/sdk/impl/zg;

    move-result-object v0

    .line 494
    :cond_a
    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xk;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/rx;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v0

    .line 370
    invoke-virtual {v0, p2, p3, p1}, Lcom/flurry/android/monolithic/sdk/impl/py;->a(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/xk;Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/yj;

    move-result-object v1

    .line 372
    if-nez v1, :cond_0

    .line 373
    invoke-virtual {p0, p2, p1, p4}, Lcom/flurry/android/monolithic/sdk/impl/zi;->b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/rx;

    move-result-object v0

    .line 376
    :goto_0
    return-object v0

    .line 375
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/rq;->l()Lcom/flurry/android/monolithic/sdk/impl/yh;

    move-result-object v2

    invoke-virtual {v2, p3, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/yh;->a(Lcom/flurry/android/monolithic/sdk/impl/xk;Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/py;)Ljava/util/Collection;

    move-result-object v0

    .line 376
    invoke-interface {v1, p2, p1, v0, p4}, Lcom/flurry/android/monolithic/sdk/impl/yj;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/util/Collection;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/rx;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/adj;Lcom/flurry/android/monolithic/sdk/impl/zp;ZLjava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/xk;)Lcom/flurry/android/monolithic/sdk/impl/zf;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 757
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/rr;->e:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {p6}, Lcom/flurry/android/monolithic/sdk/impl/xk;->k()V

    .line 760
    :cond_0
    invoke-virtual {p6, p2}, Lcom/flurry/android/monolithic/sdk/impl/xk;->a(Lcom/flurry/android/monolithic/sdk/impl/adj;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v2

    .line 761
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qd;

    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/zp;->a()Lcom/flurry/android/monolithic/sdk/impl/ado;

    move-result-object v1

    invoke-direct {v0, p5, v2, v1, p6}, Lcom/flurry/android/monolithic/sdk/impl/qd;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ado;Lcom/flurry/android/monolithic/sdk/impl/xk;)V

    .line 764
    invoke-virtual {p0, p1, p6, v0}, Lcom/flurry/android/monolithic/sdk/impl/zi;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xg;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v3

    .line 766
    const/4 v5, 0x0

    .line 767
    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/adz;->e(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    invoke-virtual {p0, v2, p1, p6, v0}, Lcom/flurry/android/monolithic/sdk/impl/zi;->b(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xk;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/rx;

    move-result-object v5

    .line 772
    :cond_1
    invoke-virtual {p0, v2, p1, p6, v0}, Lcom/flurry/android/monolithic/sdk/impl/zi;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xk;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/rx;

    move-result-object v4

    move-object v0, p3

    move-object v1, p5

    move-object v6, p6

    move v7, p4

    .line 773
    invoke-virtual/range {v0 .. v7}, Lcom/flurry/android/monolithic/sdk/impl/zp;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/xk;Z)Lcom/flurry/android/monolithic/sdk/impl/zf;

    move-result-object v0

    .line 776
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v1

    .line 777
    invoke-virtual {v1, p6}, Lcom/flurry/android/monolithic/sdk/impl/py;->g(Lcom/flurry/android/monolithic/sdk/impl/xg;)[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/zf;->a([Ljava/lang/Class;)V

    .line 778
    return-object v0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/zf;[Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/zf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;"
        }
    .end annotation

    .prologue
    .line 504
    invoke-static {p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/zm;->a(Lcom/flurry/android/monolithic/sdk/impl/zf;[Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/zf;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/xq;)Lcom/flurry/android/monolithic/sdk/impl/zh;
    .locals 1

    .prologue
    .line 514
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/zh;

    invoke-direct {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/zh;-><init>(Lcom/flurry/android/monolithic/sdk/impl/xq;)V

    return-object v0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;)Lcom/flurry/android/monolithic/sdk/impl/zp;
    .locals 1

    .prologue
    .line 510
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/zp;

    invoke-direct {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/zp;-><init>(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;)V

    return-object v0
.end method

.method protected a()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/rv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zi;->f:Lcom/flurry/android/monolithic/sdk/impl/rt;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rt;->c()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v0

    .line 608
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/xq;->c()Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v1

    .line 609
    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/py;->c(Lcom/flurry/android/monolithic/sdk/impl/xh;)[Ljava/lang/String;

    move-result-object v0

    .line 610
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 611
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/adp;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    .line 612
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 613
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/zf;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/zf;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 619
    :cond_1
    return-object p3
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/zh;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 663
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/zh;->a()Ljava/util/List;

    move-result-object v3

    .line 664
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/rr;->i:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v4

    .line 665
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 667
    new-array v6, v5, [Lcom/flurry/android/monolithic/sdk/impl/zf;

    move v2, v0

    move v1, v0

    .line 669
    :goto_0
    if-ge v2, v5, :cond_2

    .line 670
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/zf;

    .line 671
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/zf;->h()[Ljava/lang/Class;

    move-result-object v7

    .line 672
    if-nez v7, :cond_0

    .line 673
    if-eqz v4, :cond_1

    .line 674
    aput-object v0, v6, v2

    move v0, v1

    .line 669
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 677
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 678
    invoke-virtual {p0, v0, v7}, Lcom/flurry/android/monolithic/sdk/impl/zi;->a(Lcom/flurry/android/monolithic/sdk/impl/zf;[Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/zf;

    move-result-object v0

    aput-object v0, v6, v2

    :cond_1
    move v0, v1

    goto :goto_1

    .line 682
    :cond_2
    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    .line 686
    :goto_2
    return-void

    .line 685
    :cond_3
    invoke-virtual {p2, v6}, Lcom/flurry/android/monolithic/sdk/impl/zh;->a([Lcom/flurry/android/monolithic/sdk/impl/zf;)V

    goto :goto_2
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xk;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/rx;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->g()Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    .line 396
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v1

    .line 397
    invoke-virtual {v1, p2, p3, p1}, Lcom/flurry/android/monolithic/sdk/impl/py;->b(Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/xk;Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/yj;

    move-result-object v2

    .line 399
    if-nez v2, :cond_0

    .line 400
    invoke-virtual {p0, p2, v0, p4}, Lcom/flurry/android/monolithic/sdk/impl/zi;->b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/rx;

    move-result-object v0

    .line 403
    :goto_0
    return-object v0

    .line 402
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/rq;->l()Lcom/flurry/android/monolithic/sdk/impl/yh;

    move-result-object v3

    invoke-virtual {v3, p3, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/yh;->a(Lcom/flurry/android/monolithic/sdk/impl/xk;Lcom/flurry/android/monolithic/sdk/impl/rf;Lcom/flurry/android/monolithic/sdk/impl/py;)Ljava/util/Collection;

    move-result-object v1

    .line 403
    invoke-interface {v2, p2, v0, v1, p4}, Lcom/flurry/android/monolithic/sdk/impl/yj;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/util/Collection;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/rx;

    move-result-object v0

    goto :goto_0
.end method

.method protected b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 525
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v0

    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/xq;->c()Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/py;->f(Lcom/flurry/android/monolithic/sdk/impl/xh;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 645
    return-object p3
.end method

.method protected b(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 544
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/adz;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/adz;->c(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/qc;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zi;->f:Lcom/flurry/android/monolithic/sdk/impl/rt;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rt;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-object v1

    .line 310
    :cond_1
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->c(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qb;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/xq;

    .line 314
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zi;->f:Lcom/flurry/android/monolithic/sdk/impl/rt;

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/rt;->d()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/monolithic/sdk/impl/rv;

    .line 315
    invoke-interface {v1, p1, p2, v0, p3}, Lcom/flurry/android/monolithic/sdk/impl/rv;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qb;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v1

    .line 316
    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method protected c(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 554
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/xq;->d()Ljava/util/List;

    move-result-object v1

    .line 555
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v8

    .line 558
    invoke-virtual {p0, p1, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/zi;->c(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Ljava/util/List;)V

    .line 561
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/rr;->f:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 562
    invoke-virtual {p0, p1, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/zi;->d(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Ljava/util/List;)V

    .line 566
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 591
    :goto_0
    return-object v0

    .line 571
    :cond_1
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/flurry/android/monolithic/sdk/impl/zi;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/qc;)Z

    move-result v4

    .line 572
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/zi;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;)Lcom/flurry/android/monolithic/sdk/impl/zp;

    move-result-object v3

    .line 574
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 575
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/xq;->j()Lcom/flurry/android/monolithic/sdk/impl/adj;

    move-result-object v2

    .line 577
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/qe;

    .line 578
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/qe;->j()Lcom/flurry/android/monolithic/sdk/impl/xk;

    move-result-object v6

    .line 580
    invoke-virtual {v8, v6}, Lcom/flurry/android/monolithic/sdk/impl/py;->a(Lcom/flurry/android/monolithic/sdk/impl/xk;)Lcom/flurry/android/monolithic/sdk/impl/pz;

    move-result-object v1

    .line 581
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/pz;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 584
    :cond_3
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/qe;->a()Ljava/lang/String;

    move-result-object v5

    .line 585
    instance-of v0, v6, Lcom/flurry/android/monolithic/sdk/impl/xl;

    if-eqz v0, :cond_4

    .line 586
    check-cast v6, Lcom/flurry/android/monolithic/sdk/impl/xl;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/zi;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/adj;Lcom/flurry/android/monolithic/sdk/impl/zp;ZLjava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/xk;)Lcom/flurry/android/monolithic/sdk/impl/zf;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 588
    :cond_4
    check-cast v6, Lcom/flurry/android/monolithic/sdk/impl/xj;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/zi;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/adj;Lcom/flurry/android/monolithic/sdk/impl/zp;ZLjava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/xk;)Lcom/flurry/android/monolithic/sdk/impl/zf;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v0, v7

    .line 591
    goto :goto_0
.end method

.method protected c(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/qe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 696
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a()Lcom/flurry/android/monolithic/sdk/impl/py;

    move-result-object v1

    .line 697
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 698
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 699
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 700
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/qe;

    .line 701
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/qe;->j()Lcom/flurry/android/monolithic/sdk/impl/xk;

    move-result-object v0

    .line 702
    if-nez v0, :cond_1

    .line 703
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 706
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xk;->d()Ljava/lang/Class;

    move-result-object v4

    .line 707
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 708
    if-nez v0, :cond_3

    .line 709
    invoke-virtual {p1, v4}, Lcom/flurry/android/monolithic/sdk/impl/rq;->c(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qb;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/xq;

    .line 710
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xq;->c()Lcom/flurry/android/monolithic/sdk/impl/xh;

    move-result-object v0

    .line 711
    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/py;->e(Lcom/flurry/android/monolithic/sdk/impl/xh;)Ljava/lang/Boolean;

    move-result-object v0

    .line 713
    if-nez v0, :cond_2

    .line 714
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 716
    :cond_2
    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 723
    :cond_4
    return-void
.end method

.method protected d(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/xq;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/rq;",
            "Lcom/flurry/android/monolithic/sdk/impl/xq;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/qe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 734
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 735
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/qe;

    .line 737
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/qe;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 741
    :cond_1
    return-void
.end method
