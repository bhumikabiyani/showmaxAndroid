.class public final Lcom/flurry/android/monolithic/sdk/impl/sx;
.super Lcom/flurry/android/monolithic/sdk/impl/sw;
.source "SourceFile"


# instance fields
.field protected final i:Lcom/flurry/android/monolithic/sdk/impl/xj;

.field protected final j:Ljava/lang/reflect/Field;


# direct methods
.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/sx;Lcom/flurry/android/monolithic/sdk/impl/qu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/sx;",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/sw;-><init>(Lcom/flurry/android/monolithic/sdk/impl/sw;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    .line 546
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/sx;->i:Lcom/flurry/android/monolithic/sdk/impl/xj;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/sx;->i:Lcom/flurry/android/monolithic/sdk/impl/xj;

    .line 547
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/sx;->j:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/sx;->j:Ljava/lang/reflect/Field;

    .line 548
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/rw;Lcom/flurry/android/monolithic/sdk/impl/ado;Lcom/flurry/android/monolithic/sdk/impl/xj;)V
    .locals 1

    .prologue
    .line 539
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/sw;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/rw;Lcom/flurry/android/monolithic/sdk/impl/ado;)V

    .line 540
    iput-object p5, p0, Lcom/flurry/android/monolithic/sdk/impl/sx;->i:Lcom/flurry/android/monolithic/sdk/impl/xj;

    .line 541
    invoke-virtual {p5}, Lcom/flurry/android/monolithic/sdk/impl/xj;->e()Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/sx;->j:Ljava/lang/reflect/Field;

    .line 542
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/android/monolithic/sdk/impl/qu;)Lcom/flurry/android/monolithic/sdk/impl/sw;
    .locals 1

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/sx;->b(Lcom/flurry/android/monolithic/sdk/impl/qu;)Lcom/flurry/android/monolithic/sdk/impl/sx;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 579
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/sx;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/sx;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 580
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/sx;->j:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    invoke-virtual {p0, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/sx;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/qu;)Lcom/flurry/android/monolithic/sdk/impl/sx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/sx;"
        }
    .end annotation

    .prologue
    .line 552
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/sx;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/sx;-><init>(Lcom/flurry/android/monolithic/sdk/impl/sx;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    return-object v0
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/xk;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/sx;->i:Lcom/flurry/android/monolithic/sdk/impl/xj;

    return-object v0
.end method
