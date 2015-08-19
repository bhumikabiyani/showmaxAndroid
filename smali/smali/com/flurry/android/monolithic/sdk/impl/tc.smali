.class public final Lcom/flurry/android/monolithic/sdk/impl/tc;
.super Lcom/flurry/android/monolithic/sdk/impl/sw;
.source "SourceFile"


# instance fields
.field protected final i:Lcom/flurry/android/monolithic/sdk/impl/xl;

.field protected final j:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/tc;Lcom/flurry/android/monolithic/sdk/impl/qu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/tc;",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/sw;-><init>(Lcom/flurry/android/monolithic/sdk/impl/sw;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    .line 454
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/tc;->i:Lcom/flurry/android/monolithic/sdk/impl/xl;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tc;->i:Lcom/flurry/android/monolithic/sdk/impl/xl;

    .line 455
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/tc;->j:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tc;->j:Ljava/lang/reflect/Method;

    .line 456
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/rw;Lcom/flurry/android/monolithic/sdk/impl/ado;Lcom/flurry/android/monolithic/sdk/impl/xl;)V
    .locals 1

    .prologue
    .line 447
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/sw;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/rw;Lcom/flurry/android/monolithic/sdk/impl/ado;)V

    .line 448
    iput-object p5, p0, Lcom/flurry/android/monolithic/sdk/impl/tc;->i:Lcom/flurry/android/monolithic/sdk/impl/xl;

    .line 449
    invoke-virtual {p5}, Lcom/flurry/android/monolithic/sdk/impl/xl;->e()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tc;->j:Ljava/lang/reflect/Method;

    .line 450
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/android/monolithic/sdk/impl/qu;)Lcom/flurry/android/monolithic/sdk/impl/sw;
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/tc;->b(Lcom/flurry/android/monolithic/sdk/impl/qu;)Lcom/flurry/android/monolithic/sdk/impl/tc;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 488
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_0

    .line 512
    :goto_0
    return-void

    .line 498
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tc;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 508
    if-nez v0, :cond_1

    .line 509
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qw;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem deserializing \'setterless\' property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/tc;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': get method returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/tc;->a(Ljava/lang/Exception;)Ljava/io/IOException;

    goto :goto_0

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/tc;->d:Lcom/flurry/android/monolithic/sdk/impl/qu;

    invoke-virtual {v1, p1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qu;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Should never call \'set\' on setterless property"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/qu;)Lcom/flurry/android/monolithic/sdk/impl/tc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/tc;"
        }
    .end annotation

    .prologue
    .line 460
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/tc;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/tc;-><init>(Lcom/flurry/android/monolithic/sdk/impl/tc;Lcom/flurry/android/monolithic/sdk/impl/qu;)V

    return-object v0
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/xk;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/tc;->i:Lcom/flurry/android/monolithic/sdk/impl/xl;

    return-object v0
.end method
