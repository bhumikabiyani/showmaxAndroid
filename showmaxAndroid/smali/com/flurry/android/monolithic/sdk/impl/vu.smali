.class public final Lcom/flurry/android/monolithic/sdk/impl/vu;
.super Lcom/flurry/android/monolithic/sdk/impl/wa;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/android/monolithic/sdk/impl/rz;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/wa",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Character;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/lang/Character;",
            ")V"
        }
    .end annotation

    .prologue
    .line 775
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/wa;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 776
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 769
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/vu;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Character;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 782
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 785
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_0

    .line 786
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->t()I

    move-result v1

    .line 787
    if-ltz v1, :cond_2

    const v2, 0xffff

    if-gt v1, v2, :cond_2

    .line 788
    int-to-char v0, v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 798
    :goto_0
    return-object v0

    .line 790
    :cond_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_2

    .line 792
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v1

    .line 793
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 794
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    .line 797
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 798
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/vu;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    goto :goto_0

    .line 801
    :cond_2
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/vu;->q:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/pb;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0
.end method
