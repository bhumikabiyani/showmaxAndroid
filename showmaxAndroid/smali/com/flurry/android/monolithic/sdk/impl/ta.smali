.class public final Lcom/flurry/android/monolithic/sdk/impl/ta;
.super Lcom/flurry/android/monolithic/sdk/impl/sw;
.source "SourceFile"


# instance fields
.field protected final i:Lcom/flurry/android/monolithic/sdk/impl/xl;

.field protected final j:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ta;Lcom/flurry/android/monolithic/sdk/impl/qu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/ta;",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/sw;-><init>(Lcom/flurry/android/monolithic/sdk/impl/sw;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    .line 381
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/ta;->i:Lcom/flurry/android/monolithic/sdk/impl/xl;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ta;->i:Lcom/flurry/android/monolithic/sdk/impl/xl;

    .line 382
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/ta;->j:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ta;->j:Ljava/lang/reflect/Method;

    .line 383
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/rw;Lcom/flurry/android/monolithic/sdk/impl/ado;Lcom/flurry/android/monolithic/sdk/impl/xl;)V
    .locals 1

    .prologue
    .line 374
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/sw;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/rw;Lcom/flurry/android/monolithic/sdk/impl/ado;)V

    .line 375
    iput-object p5, p0, Lcom/flurry/android/monolithic/sdk/impl/ta;->i:Lcom/flurry/android/monolithic/sdk/impl/xl;

    .line 376
    invoke-virtual {p5}, Lcom/flurry/android/monolithic/sdk/impl/xl;->e()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ta;->j:Ljava/lang/reflect/Method;

    .line 377
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/android/monolithic/sdk/impl/qu;)Lcom/flurry/android/monolithic/sdk/impl/sw;
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ta;->b(Lcom/flurry/android/monolithic/sdk/impl/qu;)Lcom/flurry/android/monolithic/sdk/impl/ta;

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
    .line 414
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ta;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ta;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 415
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ta;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    invoke-virtual {p0, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/ta;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/qu;)Lcom/flurry/android/monolithic/sdk/impl/ta;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/ta;"
        }
    .end annotation

    .prologue
    .line 387
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ta;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ta;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ta;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    return-object v0
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/xk;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ta;->i:Lcom/flurry/android/monolithic/sdk/impl/xl;

    return-object v0
.end method
