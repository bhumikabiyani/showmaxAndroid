.class abstract Lcom/flurry/android/monolithic/sdk/impl/ub;
.super Lcom/flurry/android/monolithic/sdk/impl/vo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/flurry/android/monolithic/sdk/impl/ou;",
        ">",
        "Lcom/flurry/android/monolithic/sdk/impl/vo",
        "<TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/vo;-><init>(Ljava/lang/Class;)V

    .line 131
    return-void
.end method


# virtual methods
.method protected final a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/aez;)Lcom/flurry/android/monolithic/sdk/impl/afd;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/aez;->c()Lcom/flurry/android/monolithic/sdk/impl/afd;

    move-result-object v1

    .line 188
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 189
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v2, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 192
    :cond_0
    :goto_0
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->f:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v2, :cond_2

    .line 193
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->g()Ljava/lang/String;

    move-result-object v2

    .line 195
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/uc;->a:[I

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/pb;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 206
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ub;->c(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/aez;)Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v0

    .line 208
    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/afd;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ou;)Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v3

    .line 209
    if-eqz v3, :cond_1

    .line 210
    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ub;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afd;Lcom/flurry/android/monolithic/sdk/impl/ou;Lcom/flurry/android/monolithic/sdk/impl/ou;)V

    .line 192
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    goto :goto_0

    .line 197
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ub;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/aez;)Lcom/flurry/android/monolithic/sdk/impl/afd;

    move-result-object v0

    goto :goto_1

    .line 200
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ub;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/aez;)Lcom/flurry/android/monolithic/sdk/impl/aeo;

    move-result-object v0

    goto :goto_1

    .line 203
    :pswitch_2
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/aez;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/aff;

    move-result-object v0

    goto :goto_1

    .line 213
    :cond_2
    return-object v1

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/rw;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p3, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/rw;->d(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afd;Lcom/flurry/android/monolithic/sdk/impl/ou;Lcom/flurry/android/monolithic/sdk/impl/ou;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 175
    return-void
.end method

.method protected final b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/aez;)Lcom/flurry/android/monolithic/sdk/impl/aeo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/aez;->b()Lcom/flurry/android/monolithic/sdk/impl/aeo;

    move-result-object v0

    .line 222
    :goto_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/uc;->a:[I

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/pb;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 235
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ub;->c(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/aez;)Lcom/flurry/android/monolithic/sdk/impl/ou;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/aeo;->a(Lcom/flurry/android/monolithic/sdk/impl/ou;)V

    goto :goto_0

    .line 224
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ub;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/aez;)Lcom/flurry/android/monolithic/sdk/impl/afd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/aeo;->a(Lcom/flurry/android/monolithic/sdk/impl/ou;)V

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ub;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/aez;)Lcom/flurry/android/monolithic/sdk/impl/aeo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/aeo;->a(Lcom/flurry/android/monolithic/sdk/impl/ou;)V

    goto :goto_0

    .line 232
    :pswitch_2
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/flurry/android/monolithic/sdk/impl/aez;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/aff;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/aeo;->a(Lcom/flurry/android/monolithic/sdk/impl/ou;)V

    goto :goto_0

    .line 230
    :pswitch_3
    return-object v0

    .line 222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected final c(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/aez;)Lcom/flurry/android/monolithic/sdk/impl/ou;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 245
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/uc;->a:[I

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/pb;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 311
    :pswitch_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ub;->f()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 247
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ub;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/aez;)Lcom/flurry/android/monolithic/sdk/impl/afd;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    .line 250
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ub;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/aez;)Lcom/flurry/android/monolithic/sdk/impl/aeo;

    move-result-object v0

    goto :goto_0

    .line 253
    :pswitch_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ub;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/aez;)Lcom/flurry/android/monolithic/sdk/impl/afd;

    move-result-object v0

    goto :goto_0

    .line 258
    :pswitch_4
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->z()Ljava/lang/Object;

    move-result-object v0

    .line 259
    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/aez;->a()Lcom/flurry/android/monolithic/sdk/impl/afb;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 263
    const-class v2, [B

    if-ne v1, v2, :cond_1

    .line 264
    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/aez;->a([B)Lcom/flurry/android/monolithic/sdk/impl/aer;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/aez;->a(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/afe;

    move-result-object v0

    goto :goto_0

    .line 271
    :pswitch_5
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/aez;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/aff;

    move-result-object v0

    goto :goto_0

    .line 275
    :pswitch_6
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->q()Lcom/flurry/android/monolithic/sdk/impl/oy;

    move-result-object v0

    .line 276
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/oy;->c:Lcom/flurry/android/monolithic/sdk/impl/oy;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ql;->h:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 278
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/aez;->a(Ljava/math/BigInteger;)Lcom/flurry/android/monolithic/sdk/impl/afc;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_3
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/oy;->a:Lcom/flurry/android/monolithic/sdk/impl/oy;

    if-ne v0, v1, :cond_4

    .line 281
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->t()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/aez;->a(I)Lcom/flurry/android/monolithic/sdk/impl/afc;

    move-result-object v0

    goto :goto_0

    .line 283
    :cond_4
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->u()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/aez;->a(J)Lcom/flurry/android/monolithic/sdk/impl/afc;

    move-result-object v0

    goto :goto_0

    .line 288
    :pswitch_7
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->q()Lcom/flurry/android/monolithic/sdk/impl/oy;

    move-result-object v0

    .line 289
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/oy;->f:Lcom/flurry/android/monolithic/sdk/impl/oy;

    if-eq v0, v1, :cond_5

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ql;->g:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    :cond_5
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->y()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/aez;->a(Ljava/math/BigDecimal;)Lcom/flurry/android/monolithic/sdk/impl/afc;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_6
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->x()D

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/aez;->a(D)Lcom/flurry/android/monolithic/sdk/impl/afc;

    move-result-object v0

    goto/16 :goto_0

    .line 297
    :pswitch_8
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/aez;->a(Z)Lcom/flurry/android/monolithic/sdk/impl/aes;

    move-result-object v0

    goto/16 :goto_0

    .line 300
    :pswitch_9
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/aez;->a(Z)Lcom/flurry/android/monolithic/sdk/impl/aes;

    move-result-object v0

    goto/16 :goto_0

    .line 303
    :pswitch_a
    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/aez;->a()Lcom/flurry/android/monolithic/sdk/impl/afb;

    move-result-object v0

    goto/16 :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
