.class Lcom/flurry/android/monolithic/sdk/impl/kg;
.super Lcom/flurry/android/monolithic/sdk/impl/kb;
.source "SourceFile"


# instance fields
.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/js;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/js;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Z


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ka;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 597
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/kj;->a:Lcom/flurry/android/monolithic/sdk/impl/kj;

    invoke-direct {p0, v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/kb;-><init>(Lcom/flurry/android/monolithic/sdk/impl/kj;Lcom/flurry/android/monolithic/sdk/impl/ka;Ljava/lang/String;)V

    .line 598
    iput-boolean p3, p0, Lcom/flurry/android/monolithic/sdk/impl/kg;->k:Z

    .line 599
    return-void
.end method


# virtual methods
.method a(Lcom/flurry/android/monolithic/sdk/impl/kc;Lcom/flurry/android/monolithic/sdk/impl/or;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/kg;->c(Lcom/flurry/android/monolithic/sdk/impl/kc;Lcom/flurry/android/monolithic/sdk/impl/or;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    :goto_0
    return-void

    .line 665
    :cond_0
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/kc;->a(Lcom/flurry/android/monolithic/sdk/impl/kc;)Ljava/lang/String;

    move-result-object v1

    .line 666
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->d()V

    .line 667
    const-string v2, "type"

    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kg;->k:Z

    if-eqz v0, :cond_2

    const-string v0, "error"

    :goto_1
    invoke-virtual {p2, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/kg;->d(Lcom/flurry/android/monolithic/sdk/impl/kc;Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 669
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kg;->f:Lcom/flurry/android/monolithic/sdk/impl/ka;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ka;->c(Lcom/flurry/android/monolithic/sdk/impl/ka;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/kc;->a(Lcom/flurry/android/monolithic/sdk/impl/kc;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/kg;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 671
    const-string v0, "doc"

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/kg;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_1
    const-string v0, "fields"

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/kg;->b(Lcom/flurry/android/monolithic/sdk/impl/kc;Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 674
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kg;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/kf;->a(Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 675
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/kg;->a(Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 676
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->e()V

    .line 677
    invoke-static {p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/kc;->a(Lcom/flurry/android/monolithic/sdk/impl/kc;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 667
    :cond_2
    const-string v0, "record"

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/js;
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kg;->j:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    const-string v1, "Schema fields not set yet"

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kg;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/js;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/js;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kg;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 612
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    const-string v1, "Schema fields not set yet"

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kg;->i:Ljava/util/List;

    return-object v0
.end method

.method b(Lcom/flurry/android/monolithic/sdk/impl/kc;Lcom/flurry/android/monolithic/sdk/impl/or;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->b()V

    .line 682
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kg;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/js;

    .line 683
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->d()V

    .line 684
    const-string v1, "name"

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v1, "type"

    invoke-virtual {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->c()Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ji;->a(Lcom/flurry/android/monolithic/sdk/impl/kc;Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 687
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 688
    const-string v1, "doc"

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_0
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->e()Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 690
    const-string v1, "default"

    invoke-virtual {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->e()Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Lcom/flurry/android/monolithic/sdk/impl/ou;)V

    .line 693
    :cond_1
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->f()Lcom/flurry/android/monolithic/sdk/impl/jt;

    move-result-object v1

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/jt;->a:Lcom/flurry/android/monolithic/sdk/impl/jt;

    if-eq v1, v3, :cond_2

    .line 694
    const-string v1, "order"

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->f()Lcom/flurry/android/monolithic/sdk/impl/jt;

    move-result-object v3

    invoke-static {v3}, Lcom/flurry/android/monolithic/sdk/impl/jt;->a(Lcom/flurry/android/monolithic/sdk/impl/jt;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_2
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->b(Lcom/flurry/android/monolithic/sdk/impl/js;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->b(Lcom/flurry/android/monolithic/sdk/impl/js;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 696
    const-string v1, "aliases"

    invoke-virtual {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->b()V

    .line 698
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->b(Lcom/flurry/android/monolithic/sdk/impl/js;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 699
    invoke-virtual {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 700
    :cond_3
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->c()V

    .line 702
    :cond_4
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->c(Lcom/flurry/android/monolithic/sdk/impl/js;)Lcom/flurry/android/monolithic/sdk/impl/kf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/kf;->a(Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 703
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->e()V

    goto/16 :goto_0

    .line 705
    :cond_5
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->c()V

    .line 706
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/js;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kg;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 619
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/jg;

    const-string v1, "Fields are already set"

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_0
    const/4 v0, 0x0

    .line 622
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/kg;->j:Ljava/util/Map;

    .line 623
    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/jx;

    invoke-direct {v3}, Lcom/flurry/android/monolithic/sdk/impl/jx;-><init>()V

    .line 624
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/js;

    .line 625
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->a(Lcom/flurry/android/monolithic/sdk/impl/js;)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 626
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/jg;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field already used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/jg;-><init>(Ljava/lang/String;)V

    throw v1

    .line 627
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/js;->a(Lcom/flurry/android/monolithic/sdk/impl/js;I)I

    .line 628
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/kg;->j:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/js;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    invoke-virtual {v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/jx;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    .line 631
    :cond_2
    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/jx;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kg;->i:Ljava/util/List;

    .line 632
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kg;->d:I

    .line 633
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 635
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 649
    :goto_0
    return v0

    .line 636
    :cond_0
    instance-of v0, p1, Lcom/flurry/android/monolithic/sdk/impl/kg;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 637
    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/kg;

    .line 638
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/kg;->c(Lcom/flurry/android/monolithic/sdk/impl/ji;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    .line 639
    :cond_2
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/kg;->a(Lcom/flurry/android/monolithic/sdk/impl/kb;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    .line 640
    :cond_3
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/kg;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/kg;->c:Lcom/flurry/android/monolithic/sdk/impl/kf;

    invoke-virtual {v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/kf;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    .line 641
    :cond_4
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ji;->o()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 642
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/kh;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/flurry/android/monolithic/sdk/impl/kh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/jj;)V

    .line 643
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 644
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    .line 646
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 647
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/kg;->i:Ljava/util/List;

    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/kg;

    iget-object v2, p1, Lcom/flurry/android/monolithic/sdk/impl/kg;->i:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 649
    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_6
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_7
    throw v1
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/kg;->k:Z

    return v0
.end method

.method m()I
    .locals 4

    .prologue
    .line 653
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ji;->p()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 654
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 660
    :goto_0
    return v0

    .line 655
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    .line 657
    :try_start_0
    invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    invoke-super {p0}, Lcom/flurry/android/monolithic/sdk/impl/kb;->m()I

    move-result v1

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/kg;->i:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/2addr v1, v3

    .line 660
    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    throw v1
.end method
