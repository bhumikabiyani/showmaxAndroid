.class final Lcom/flurry/android/monolithic/sdk/impl/yd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/flurry/android/monolithic/sdk/impl/yd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/yd",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/yd;Ljava/lang/String;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/flurry/android/monolithic/sdk/impl/yd",
            "<TT;>;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->a:Ljava/lang/Object;

    .line 558
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->b:Lcom/flurry/android/monolithic/sdk/impl/yd;

    .line 560
    if-nez p3, :cond_0

    .line 561
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->c:Ljava/lang/String;

    .line 565
    :goto_0
    iput-boolean p4, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->d:Z

    .line 566
    iput-boolean p5, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->e:Z

    .line 567
    return-void

    .line 563
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object p3, v0

    :cond_1
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/yd;Lcom/flurry/android/monolithic/sdk/impl/yd;)Lcom/flurry/android/monolithic/sdk/impl/yd;
    .locals 1

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/yd;->b(Lcom/flurry/android/monolithic/sdk/impl/yd;)Lcom/flurry/android/monolithic/sdk/impl/yd;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/flurry/android/monolithic/sdk/impl/yd;)Lcom/flurry/android/monolithic/sdk/impl/yd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/yd",
            "<TT;>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/yd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 610
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->b:Lcom/flurry/android/monolithic/sdk/impl/yd;

    if-nez v0, :cond_0

    .line 611
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/yd;->a(Lcom/flurry/android/monolithic/sdk/impl/yd;)Lcom/flurry/android/monolithic/sdk/impl/yd;

    move-result-object v0

    .line 613
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->b:Lcom/flurry/android/monolithic/sdk/impl/yd;

    invoke-direct {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/yd;->b(Lcom/flurry/android/monolithic/sdk/impl/yd;)Lcom/flurry/android/monolithic/sdk/impl/yd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/yd;->a(Lcom/flurry/android/monolithic/sdk/impl/yd;)Lcom/flurry/android/monolithic/sdk/impl/yd;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/yd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/android/monolithic/sdk/impl/yd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->e:Z

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->b:Lcom/flurry/android/monolithic/sdk/impl/yd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 595
    :goto_0
    return-object v0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->b:Lcom/flurry/android/monolithic/sdk/impl/yd;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/yd;->a()Lcom/flurry/android/monolithic/sdk/impl/yd;

    move-result-object v0

    goto :goto_0

    .line 589
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->b:Lcom/flurry/android/monolithic/sdk/impl/yd;

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->b:Lcom/flurry/android/monolithic/sdk/impl/yd;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/yd;->a()Lcom/flurry/android/monolithic/sdk/impl/yd;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->b:Lcom/flurry/android/monolithic/sdk/impl/yd;

    if-eq v0, v1, :cond_2

    .line 592
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/yd;->a(Lcom/flurry/android/monolithic/sdk/impl/yd;)Lcom/flurry/android/monolithic/sdk/impl/yd;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 595
    goto :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/yd;)Lcom/flurry/android/monolithic/sdk/impl/yd;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/yd",
            "<TT;>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/yd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->b:Lcom/flurry/android/monolithic/sdk/impl/yd;

    if-ne p1, v0, :cond_0

    .line 581
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/yd;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->d:Z

    iget-boolean v5, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->e:Z

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/yd;-><init>(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/yd;Ljava/lang/String;ZZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/yd;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/flurry/android/monolithic/sdk/impl/yd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 574
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/yd;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->b:Lcom/flurry/android/monolithic/sdk/impl/yd;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->d:Z

    iget-boolean v5, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->e:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/yd;-><init>(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/yd;Ljava/lang/String;ZZ)V

    move-object p0, v0

    goto :goto_0
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/yd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/android/monolithic/sdk/impl/yd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 600
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->b:Lcom/flurry/android/monolithic/sdk/impl/yd;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 601
    :goto_0
    iget-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/yd;->a(Lcom/flurry/android/monolithic/sdk/impl/yd;)Lcom/flurry/android/monolithic/sdk/impl/yd;

    move-result-object v0

    :cond_0
    return-object v0

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->b:Lcom/flurry/android/monolithic/sdk/impl/yd;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/yd;->b()Lcom/flurry/android/monolithic/sdk/impl/yd;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Lcom/flurry/android/monolithic/sdk/impl/yd;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/android/monolithic/sdk/impl/yd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 618
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->b:Lcom/flurry/android/monolithic/sdk/impl/yd;

    if-nez v0, :cond_1

    move-object v0, p0

    .line 636
    :cond_0
    :goto_0
    return-object v0

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->b:Lcom/flurry/android/monolithic/sdk/impl/yd;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/yd;->c()Lcom/flurry/android/monolithic/sdk/impl/yd;

    move-result-object v0

    .line 622
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->c:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 623
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/yd;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 624
    invoke-virtual {p0, v3}, Lcom/flurry/android/monolithic/sdk/impl/yd;->a(Lcom/flurry/android/monolithic/sdk/impl/yd;)Lcom/flurry/android/monolithic/sdk/impl/yd;

    move-result-object v0

    goto :goto_0

    .line 627
    :cond_2
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/yd;->a(Lcom/flurry/android/monolithic/sdk/impl/yd;)Lcom/flurry/android/monolithic/sdk/impl/yd;

    move-result-object v0

    goto :goto_0

    .line 629
    :cond_3
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/yd;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 633
    iget-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->d:Z

    iget-boolean v2, v0, Lcom/flurry/android/monolithic/sdk/impl/yd;->d:Z

    if-ne v1, v2, :cond_4

    .line 634
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/yd;->a(Lcom/flurry/android/monolithic/sdk/impl/yd;)Lcom/flurry/android/monolithic/sdk/impl/yd;

    move-result-object v0

    goto :goto_0

    .line 636
    :cond_4
    iget-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->d:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/flurry/android/monolithic/sdk/impl/yd;->a(Lcom/flurry/android/monolithic/sdk/impl/yd;)Lcom/flurry/android/monolithic/sdk/impl/yd;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 642
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->b:Lcom/flurry/android/monolithic/sdk/impl/yd;

    if-eqz v1, :cond_0

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/yd;->b:Lcom/flurry/android/monolithic/sdk/impl/yd;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/yd;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    :cond_0
    return-object v0
.end method
