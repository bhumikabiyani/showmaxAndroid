.class public Lcom/flurry/android/monolithic/sdk/impl/zf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/qc;


# instance fields
.field protected final a:Lcom/flurry/android/monolithic/sdk/impl/xk;

.field protected final b:Lcom/flurry/android/monolithic/sdk/impl/ado;

.field protected final c:Lcom/flurry/android/monolithic/sdk/impl/afm;

.field protected final d:Ljava/lang/reflect/Method;

.field protected final e:Ljava/lang/reflect/Field;

.field protected f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final g:Lcom/flurry/android/monolithic/sdk/impl/pw;

.field protected final h:Lcom/flurry/android/monolithic/sdk/impl/afm;

.field protected final i:Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Lcom/flurry/android/monolithic/sdk/impl/aal;

.field protected final k:Z

.field protected final l:Ljava/lang/Object;

.field protected m:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected n:Lcom/flurry/android/monolithic/sdk/impl/rx;

.field protected o:Lcom/flurry/android/monolithic/sdk/impl/afm;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/xk;Lcom/flurry/android/monolithic/sdk/impl/ado;Lcom/flurry/android/monolithic/sdk/impl/pw;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/xk;",
            "Lcom/flurry/android/monolithic/sdk/impl/ado;",
            "Lcom/flurry/android/monolithic/sdk/impl/pw;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->a:Lcom/flurry/android/monolithic/sdk/impl/xk;

    .line 178
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->b:Lcom/flurry/android/monolithic/sdk/impl/ado;

    .line 179
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->g:Lcom/flurry/android/monolithic/sdk/impl/pw;

    .line 180
    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 181
    iput-object p5, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->i:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 182
    if-nez p5, :cond_0

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/aal;->a()Lcom/flurry/android/monolithic/sdk/impl/aal;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->j:Lcom/flurry/android/monolithic/sdk/impl/aal;

    .line 183
    iput-object p6, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->n:Lcom/flurry/android/monolithic/sdk/impl/rx;

    .line 184
    iput-object p7, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->h:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 185
    iput-object p8, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->d:Ljava/lang/reflect/Method;

    .line 186
    iput-object p9, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->e:Ljava/lang/reflect/Field;

    .line 187
    iput-boolean p10, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->k:Z

    .line 188
    iput-object p11, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->l:Ljava/lang/Object;

    .line 189
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/xk;Lcom/flurry/android/monolithic/sdk/impl/ado;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/xk;",
            "Lcom/flurry/android/monolithic/sdk/impl/ado;",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/android/monolithic/sdk/impl/rx;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/pw;

    invoke-direct {v3, p3}, Lcom/flurry/android/monolithic/sdk/impl/pw;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/flurry/android/monolithic/sdk/impl/zf;-><init>(Lcom/flurry/android/monolithic/sdk/impl/xk;Lcom/flurry/android/monolithic/sdk/impl/ado;Lcom/flurry/android/monolithic/sdk/impl/pw;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    .line 170
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/zf;)V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/zf;->i:Lcom/flurry/android/monolithic/sdk/impl/ra;

    invoke-direct {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/zf;-><init>(Lcom/flurry/android/monolithic/sdk/impl/zf;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    .line 197
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/zf;Lcom/flurry/android/monolithic/sdk/impl/ra;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->i:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 206
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/zf;->a:Lcom/flurry/android/monolithic/sdk/impl/xk;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->a:Lcom/flurry/android/monolithic/sdk/impl/xk;

    .line 207
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/zf;->b:Lcom/flurry/android/monolithic/sdk/impl/ado;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->b:Lcom/flurry/android/monolithic/sdk/impl/ado;

    .line 208
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/zf;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 209
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/zf;->d:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->d:Ljava/lang/reflect/Method;

    .line 210
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/zf;->e:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->e:Ljava/lang/reflect/Field;

    .line 212
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/zf;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/zf;->f:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->f:Ljava/util/HashMap;

    .line 215
    :cond_0
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/zf;->g:Lcom/flurry/android/monolithic/sdk/impl/pw;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->g:Lcom/flurry/android/monolithic/sdk/impl/pw;

    .line 216
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/zf;->h:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->h:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 217
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/zf;->j:Lcom/flurry/android/monolithic/sdk/impl/aal;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->j:Lcom/flurry/android/monolithic/sdk/impl/aal;

    .line 218
    iget-boolean v0, p1, Lcom/flurry/android/monolithic/sdk/impl/zf;->k:Z

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->k:Z

    .line 219
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/zf;->l:Ljava/lang/Object;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->l:Ljava/lang/Object;

    .line 220
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/zf;->m:[Ljava/lang/Class;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->m:[Ljava/lang/Class;

    .line 221
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/zf;->n:Lcom/flurry/android/monolithic/sdk/impl/rx;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->n:Lcom/flurry/android/monolithic/sdk/impl/rx;

    .line 222
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/zf;->o:Lcom/flurry/android/monolithic/sdk/impl/afm;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->o:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 223
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->c:Lcom/flurry/android/monolithic/sdk/impl/afm;

    return-object v0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/aal;Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ru;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/aal;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/android/monolithic/sdk/impl/ru;",
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
    .line 459
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->o:Lcom/flurry/android/monolithic/sdk/impl/afm;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->o:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {p3, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    .line 461
    invoke-virtual {p1, v0, p3, p0}, Lcom/flurry/android/monolithic/sdk/impl/aal;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/aap;

    move-result-object v0

    .line 466
    :goto_0
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/aap;->b:Lcom/flurry/android/monolithic/sdk/impl/aal;

    if-eq p1, v1, :cond_0

    .line 467
    iget-object v1, v0, Lcom/flurry/android/monolithic/sdk/impl/aap;->b:Lcom/flurry/android/monolithic/sdk/impl/aal;

    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->j:Lcom/flurry/android/monolithic/sdk/impl/aal;

    .line 469
    :cond_0
    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/aap;->a:Lcom/flurry/android/monolithic/sdk/impl/ra;

    return-object v0

    .line 463
    :cond_1
    invoke-virtual {p1, p2, p3, p0}, Lcom/flurry/android/monolithic/sdk/impl/aal;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/aap;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ra;)Lcom/flurry/android/monolithic/sdk/impl/zf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/zf;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/android/monolithic/sdk/impl/zf;

    if-eq v0, v1, :cond_0

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BeanPropertyWriter sub-class does not override \'withSerializer()\'; needs to!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/zf;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/zf;-><init>(Lcom/flurry/android/monolithic/sdk/impl/zf;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 485
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/afm;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->o:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 268
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/zf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 420
    if-nez v1, :cond_1

    .line 421
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->k:Z

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->g:Lcom/flurry/android/monolithic/sdk/impl/pw;

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Lcom/flurry/android/monolithic/sdk/impl/pw;)V

    .line 423
    invoke-virtual {p3, p2}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/or;)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    if-ne v1, p1, :cond_2

    .line 429
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/zf;->b(Ljava/lang/Object;)V

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->l:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->l:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->i:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 436
    if-nez v0, :cond_4

    .line 437
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 438
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->j:Lcom/flurry/android/monolithic/sdk/impl/aal;

    .line 439
    invoke-virtual {v3, v2}, Lcom/flurry/android/monolithic/sdk/impl/aal;->a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 440
    if-nez v0, :cond_4

    .line 441
    invoke-virtual {p0, v3, v2, p3}, Lcom/flurry/android/monolithic/sdk/impl/zf;->a(Lcom/flurry/android/monolithic/sdk/impl/aal;Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ru;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 444
    :cond_4
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->g:Lcom/flurry/android/monolithic/sdk/impl/pw;

    invoke-virtual {p2, v2}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Lcom/flurry/android/monolithic/sdk/impl/pw;)V

    .line 445
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->n:Lcom/flurry/android/monolithic/sdk/impl/rx;

    if-nez v2, :cond_5

    .line 446
    invoke-virtual {v0, v1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    goto :goto_0

    .line 448
    :cond_5
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->n:Lcom/flurry/android/monolithic/sdk/impl/rx;

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/rx;)V

    goto :goto_0
.end method

.method public a([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 257
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->m:[Ljava/lang/Class;

    return-void
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/xk;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->a:Lcom/flurry/android/monolithic/sdk/impl/xk;

    return-object v0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 491
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qw;

    const-string v1, "Direct self-reference leading to cycle"

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lcom/flurry/android/monolithic/sdk/impl/zf;
    .locals 1

    .prologue
    .line 246
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aaw;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/aaw;-><init>(Lcom/flurry/android/monolithic/sdk/impl/zf;)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->g:Lcom/flurry/android/monolithic/sdk/impl/pw;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pw;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->i:Lcom/flurry/android/monolithic/sdk/impl/ra;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/flurry/android/monolithic/sdk/impl/afm;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->h:Lcom/flurry/android/monolithic/sdk/impl/afm;

    return-object v0
.end method

.method public g()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 399
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public h()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->m:[Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 498
    const-string v1, "property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/zf;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->d:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 500
    const-string v1, "via method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :goto_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->i:Lcom/flurry/android/monolithic/sdk/impl/ra;

    if-nez v1, :cond_1

    .line 505
    const-string v1, ", no static serializer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :goto_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 502
    :cond_0
    const-string v1, "field \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 507
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", static serializer of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zf;->i:Lcom/flurry/android/monolithic/sdk/impl/ra;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
