.class public Lcom/flurry/android/monolithic/sdk/impl/ww;
.super Lcom/flurry/android/monolithic/sdk/impl/th;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Z

.field protected c:Lcom/flurry/android/monolithic/sdk/impl/xo;

.field protected d:[Lcom/flurry/android/monolithic/sdk/impl/tn;

.field protected e:Lcom/flurry/android/monolithic/sdk/impl/xo;

.field protected f:Lcom/flurry/android/monolithic/sdk/impl/afm;

.field protected g:Lcom/flurry/android/monolithic/sdk/impl/xo;

.field protected h:Lcom/flurry/android/monolithic/sdk/impl/xo;

.field protected i:Lcom/flurry/android/monolithic/sdk/impl/xo;

.field protected j:Lcom/flurry/android/monolithic/sdk/impl/xo;

.field protected k:Lcom/flurry/android/monolithic/sdk/impl/xo;

.field protected l:Lcom/flurry/android/monolithic/sdk/impl/xo;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/th;-><init>()V

    .line 77
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->b:Z

    .line 79
    if-nez p2, :cond_1

    const-string v0, "UNKNOWN TYPE"

    :goto_1
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->a:Ljava/lang/String;

    .line 80
    return-void

    .line 77
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->q:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v0

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/afm;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;)Lcom/flurry/android/monolithic/sdk/impl/qw;
    .locals 3

    .prologue
    .line 385
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 388
    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qw;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instantiation of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public a(D)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->k:Lcom/flurry/android/monolithic/sdk/impl/xo;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->k:Lcom/flurry/android/monolithic/sdk/impl/xo;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xo;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a(Ljava/lang/Throwable;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 314
    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qw;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not instantiate value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from JSON floating-point number; no one-double/Double-arg constructor/factory method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->i:Lcom/flurry/android/monolithic/sdk/impl/xo;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->i:Lcom/flurry/android/monolithic/sdk/impl/xo;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xo;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->j:Lcom/flurry/android/monolithic/sdk/impl/xo;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->j:Lcom/flurry/android/monolithic/sdk/impl/xo;

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xo;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a(Ljava/lang/Throwable;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 286
    :cond_1
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qw;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not instantiate value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from JSON integral number; no single-int-arg constructor/factory method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->j:Lcom/flurry/android/monolithic/sdk/impl/xo;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->j:Lcom/flurry/android/monolithic/sdk/impl/xo;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xo;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a(Ljava/lang/Throwable;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 300
    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qw;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not instantiate value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from JSON long integral number; no single-long-arg constructor/factory method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->g:Lcom/flurry/android/monolithic/sdk/impl/xo;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No delegate constructor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->g:Lcom/flurry/android/monolithic/sdk/impl/xo;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/xo;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a(Ljava/lang/Throwable;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 247
    :catch_1
    move-exception v0

    .line 248
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a(Ljava/lang/Throwable;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->h:Lcom/flurry/android/monolithic/sdk/impl/xo;

    if-eqz v0, :cond_0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->h:Lcom/flurry/android/monolithic/sdk/impl/xo;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/xo;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a(Ljava/lang/Throwable;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 268
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ww;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->l:Lcom/flurry/android/monolithic/sdk/impl/xo;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->l:Lcom/flurry/android/monolithic/sdk/impl/xo;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/xo;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a(Ljava/lang/Throwable;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 328
    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qw;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not instantiate value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from JSON boolean value; no single-boolean/Boolean-arg constructor/factory method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->e:Lcom/flurry/android/monolithic/sdk/impl/xo;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No with-args constructor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->e:Lcom/flurry/android/monolithic/sdk/impl/xo;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/xo;->a([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a(Ljava/lang/Throwable;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 231
    :catch_1
    move-exception v0

    .line 232
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a(Ljava/lang/Throwable;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/xo;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->h:Lcom/flurry/android/monolithic/sdk/impl/xo;

    .line 124
    return-void
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/xo;Lcom/flurry/android/monolithic/sdk/impl/xo;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/xo;[Lcom/flurry/android/monolithic/sdk/impl/tn;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->c:Lcom/flurry/android/monolithic/sdk/impl/xo;

    .line 116
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->g:Lcom/flurry/android/monolithic/sdk/impl/xo;

    .line 117
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->f:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 118
    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->e:Lcom/flurry/android/monolithic/sdk/impl/xo;

    .line 119
    iput-object p5, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->d:[Lcom/flurry/android/monolithic/sdk/impl/tn;

    .line 120
    return-void
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->l:Lcom/flurry/android/monolithic/sdk/impl/xo;

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 367
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a(Z)Ljava/lang/Object;

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 370
    :cond_0
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a(Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_1
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->b:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 377
    const/4 v0, 0x0

    goto :goto_0

    .line 379
    :cond_2
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qw;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not instantiate value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from JSON String; no single-String constructor/factory method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/xo;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->i:Lcom/flurry/android/monolithic/sdk/impl/xo;

    .line 128
    return-void
.end method

.method public c(Lcom/flurry/android/monolithic/sdk/impl/xo;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->j:Lcom/flurry/android/monolithic/sdk/impl/xo;

    .line 132
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->h:Lcom/flurry/android/monolithic/sdk/impl/xo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lcom/flurry/android/monolithic/sdk/impl/xo;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->k:Lcom/flurry/android/monolithic/sdk/impl/xo;

    .line 136
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->i:Lcom/flurry/android/monolithic/sdk/impl/xo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(Lcom/flurry/android/monolithic/sdk/impl/xo;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->l:Lcom/flurry/android/monolithic/sdk/impl/xo;

    .line 140
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->j:Lcom/flurry/android/monolithic/sdk/impl/xo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->k:Lcom/flurry/android/monolithic/sdk/impl/xo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->l:Lcom/flurry/android/monolithic/sdk/impl/xo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->c:Lcom/flurry/android/monolithic/sdk/impl/xo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->e:Lcom/flurry/android/monolithic/sdk/impl/xo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()[Lcom/flurry/android/monolithic/sdk/impl/sw;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->d:[Lcom/flurry/android/monolithic/sdk/impl/tn;

    return-object v0
.end method

.method public l()Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->f:Lcom/flurry/android/monolithic/sdk/impl/afm;

    return-object v0
.end method

.method public m()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->c:Lcom/flurry/android/monolithic/sdk/impl/xo;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No default constructor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->c:Lcom/flurry/android/monolithic/sdk/impl/xo;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/xo;->g()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a(Ljava/lang/Throwable;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 215
    :catch_1
    move-exception v0

    .line 216
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ww;->a(Ljava/lang/Throwable;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0
.end method

.method public n()Lcom/flurry/android/monolithic/sdk/impl/xo;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->c:Lcom/flurry/android/monolithic/sdk/impl/xo;

    return-object v0
.end method

.method public o()Lcom/flurry/android/monolithic/sdk/impl/xo;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ww;->g:Lcom/flurry/android/monolithic/sdk/impl/xo;

    return-object v0
.end method
