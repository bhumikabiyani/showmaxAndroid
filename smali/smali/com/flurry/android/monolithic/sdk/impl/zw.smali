.class public Lcom/flurry/android/monolithic/sdk/impl/zw;
.super Lcom/flurry/android/monolithic/sdk/impl/ru;
.source "SourceFile"


# static fields
.field public static final d:Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final f:Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final g:Lcom/flurry/android/monolithic/sdk/impl/rs;

.field protected final h:Lcom/flurry/android/monolithic/sdk/impl/aat;

.field protected final i:Lcom/flurry/android/monolithic/sdk/impl/aem;

.field protected j:Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected m:Lcom/flurry/android/monolithic/sdk/impl/ra;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final n:Lcom/flurry/android/monolithic/sdk/impl/aas;

.field protected o:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aai;

    const-string v1, "Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)"

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/aai;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/zw;->d:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 61
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/acq;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/acq;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/zw;->e:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 63
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aav;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/aav;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/zw;->f:Lcom/flurry/android/monolithic/sdk/impl/ra;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ru;-><init>(Lcom/flurry/android/monolithic/sdk/impl/rq;)V

    .line 97
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/zw;->f:Lcom/flurry/android/monolithic/sdk/impl/ra;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->j:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 110
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/abn;->a:Lcom/flurry/android/monolithic/sdk/impl/abn;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->l:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 119
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/zw;->d:Lcom/flurry/android/monolithic/sdk/impl/ra;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->m:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 154
    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->g:Lcom/flurry/android/monolithic/sdk/impl/rs;

    .line 155
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aat;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/aat;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->h:Lcom/flurry/android/monolithic/sdk/impl/aat;

    .line 157
    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->n:Lcom/flurry/android/monolithic/sdk/impl/aas;

    .line 158
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aem;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/aem;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->i:Lcom/flurry/android/monolithic/sdk/impl/aem;

    .line 159
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/zw;Lcom/flurry/android/monolithic/sdk/impl/rs;)V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ru;-><init>(Lcom/flurry/android/monolithic/sdk/impl/rq;)V

    .line 97
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/zw;->f:Lcom/flurry/android/monolithic/sdk/impl/ra;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->j:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 110
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/abn;->a:Lcom/flurry/android/monolithic/sdk/impl/abn;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->l:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 119
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/zw;->d:Lcom/flurry/android/monolithic/sdk/impl/ra;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->m:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 171
    if-nez p1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 174
    :cond_0
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->g:Lcom/flurry/android/monolithic/sdk/impl/rs;

    .line 176
    iget-object v0, p2, Lcom/flurry/android/monolithic/sdk/impl/zw;->h:Lcom/flurry/android/monolithic/sdk/impl/aat;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->h:Lcom/flurry/android/monolithic/sdk/impl/aat;

    .line 177
    iget-object v0, p2, Lcom/flurry/android/monolithic/sdk/impl/zw;->j:Lcom/flurry/android/monolithic/sdk/impl/ra;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->j:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 178
    iget-object v0, p2, Lcom/flurry/android/monolithic/sdk/impl/zw;->k:Lcom/flurry/android/monolithic/sdk/impl/ra;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->k:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 179
    iget-object v0, p2, Lcom/flurry/android/monolithic/sdk/impl/zw;->l:Lcom/flurry/android/monolithic/sdk/impl/ra;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->l:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 180
    iget-object v0, p2, Lcom/flurry/android/monolithic/sdk/impl/zw;->m:Lcom/flurry/android/monolithic/sdk/impl/ra;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->m:Lcom/flurry/android/monolithic/sdk/impl/ra;

    .line 181
    iget-object v0, p2, Lcom/flurry/android/monolithic/sdk/impl/zw;->i:Lcom/flurry/android/monolithic/sdk/impl/aem;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->i:Lcom/flurry/android/monolithic/sdk/impl/aem;

    .line 186
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->h:Lcom/flurry/android/monolithic/sdk/impl/aat;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/aat;->a()Lcom/flurry/android/monolithic/sdk/impl/aas;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->n:Lcom/flurry/android/monolithic/sdk/impl/aas;

    .line 187
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 374
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->n:Lcom/flurry/android/monolithic/sdk/impl/aas;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aas;->b(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 375
    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->h:Lcom/flurry/android/monolithic/sdk/impl/aat;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aat;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 378
    if-nez v0, :cond_0

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/zw;->c(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 386
    if-nez v0, :cond_0

    .line 387
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/afm;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/zw;->a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/zw;->a(Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/afm;ZLcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Z",
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
    .line 438
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->n:Lcom/flurry/android/monolithic/sdk/impl/aas;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aas;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-object v0

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->h:Lcom/flurry/android/monolithic/sdk/impl/aat;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aat;->b(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 444
    if-nez v0, :cond_0

    .line 449
    invoke-virtual {p0, p1, p3}, Lcom/flurry/android/monolithic/sdk/impl/zw;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v1

    .line 450
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->g:Lcom/flurry/android/monolithic/sdk/impl/rs;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-virtual {v0, v2, p1, p3}, Lcom/flurry/android/monolithic/sdk/impl/rs;->b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/rx;

    move-result-object v2

    .line 451
    if-eqz v2, :cond_2

    .line 452
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/zx;

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/zx;-><init>(Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    .line 454
    :goto_1
    if-eqz p2, :cond_0

    .line 455
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->h:Lcom/flurry/android/monolithic/sdk/impl/aat;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/aat;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;",
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
    .line 793
    instance-of v0, p1, Lcom/flurry/android/monolithic/sdk/impl/qj;

    if-nez v0, :cond_0

    .line 804
    :goto_0
    return-object p1

    :cond_0
    move-object v0, p1

    .line 796
    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/qj;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-interface {v0, v1, p2}, Lcom/flurry/android/monolithic/sdk/impl/qj;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v1

    .line 797
    if-eq v1, p1, :cond_2

    .line 799
    instance-of v0, v1, Lcom/flurry/android/monolithic/sdk/impl/rp;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 800
    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/rp;

    invoke-interface {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/rp;->a(Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    :cond_1
    :goto_1
    move-object p1, v1

    .line 804
    goto :goto_0

    :cond_2
    move-object v1, p1

    goto :goto_1
.end method

.method public a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->j:Lcom/flurry/android/monolithic/sdk/impl/ra;

    return-object v0
.end method

.method public a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
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
    .line 335
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->n:Lcom/flurry/android/monolithic/sdk/impl/aas;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aas;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 336
    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->h:Lcom/flurry/android/monolithic/sdk/impl/aat;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aat;->a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 339
    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->h:Lcom/flurry/android/monolithic/sdk/impl/aat;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-virtual {v1, p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/aat;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 342
    if-nez v0, :cond_0

    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/zw;->b(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 350
    if-nez v0, :cond_0

    .line 351
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/zw;->a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/zw;->a(Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;ZLcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z",
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
    .line 409
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->n:Lcom/flurry/android/monolithic/sdk/impl/aas;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aas;->a(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-object v0

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->h:Lcom/flurry/android/monolithic/sdk/impl/aat;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aat;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 415
    if-nez v0, :cond_0

    .line 420
    invoke-virtual {p0, p1, p3}, Lcom/flurry/android/monolithic/sdk/impl/zw;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v1

    .line 421
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->g:Lcom/flurry/android/monolithic/sdk/impl/rs;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-virtual {v3, p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p3}, Lcom/flurry/android/monolithic/sdk/impl/rs;->b(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/rx;

    move-result-object v2

    .line 423
    if-eqz v2, :cond_2

    .line 424
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/zx;

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/zx;-><init>(Lcom/flurry/android/monolithic/sdk/impl/rx;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    .line 426
    :goto_1
    if-eqz p2, :cond_0

    .line 427
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->h:Lcom/flurry/android/monolithic/sdk/impl/aat;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/aat;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/rs;)Lcom/flurry/android/monolithic/sdk/impl/zw;
    .locals 1

    .prologue
    .line 195
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/zw;

    invoke-direct {v0, p1, p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/zw;-><init>(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/zw;Lcom/flurry/android/monolithic/sdk/impl/rs;)V

    return-object v0
.end method

.method public final a(JLcom/flurry/android/monolithic/sdk/impl/or;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 519
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/rr;->q:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/zw;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p3, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(J)V

    .line 528
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->o:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->n()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->o:Ljava/text/DateFormat;

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->o:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/or;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 595
    if-nez p2, :cond_2

    .line 596
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/zw;->d()Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v1

    .line 597
    const/4 v0, 0x0

    .line 610
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v1, p2, p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/ra;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    .line 611
    if-eqz v0, :cond_1

    .line 612
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/or;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 627
    :cond_1
    return-void

    .line 599
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 601
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/zw;->a(Ljava/lang/Class;ZLcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v1

    .line 603
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/rr;->j:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    .line 604
    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/or;->d()V

    .line 606
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->i:Lcom/flurry/android/monolithic/sdk/impl/aem;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-virtual {v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/aem;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/rf;)Lcom/flurry/android/monolithic/sdk/impl/pw;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Lcom/flurry/android/monolithic/sdk/impl/pw;)V

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    .line 618
    throw v0

    .line 619
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 621
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 622
    if-nez v0, :cond_3

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[no message for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    :cond_3
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/qw;

    invoke-direct {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/or;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/rs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;
        }
    .end annotation

    .prologue
    .line 242
    if-nez p4, :cond_0

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null serializerFactory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/flurry/android/monolithic/sdk/impl/zw;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/rs;)Lcom/flurry/android/monolithic/sdk/impl/zw;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 253
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broken serializer provider: createInstance returned instance of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; blueprint of type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/zw;->a(Lcom/flurry/android/monolithic/sdk/impl/or;Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public final a(Ljava/util/Date;Lcom/flurry/android/monolithic/sdk/impl/or;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 535
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/rr;->q:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/zw;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(J)V

    .line 545
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->o:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->n()Ljava/text/DateFormat;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->o:Ljava/text/DateFormat;

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->o:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 471
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->g:Lcom/flurry/android/monolithic/sdk/impl/rs;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-virtual {v0, v1, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/rs;->c(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 475
    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->k:Lcom/flurry/android/monolithic/sdk/impl/ra;

    if-nez v0, :cond_2

    .line 477
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/acr;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 483
    :cond_0
    :goto_0
    instance-of v1, v0, Lcom/flurry/android/monolithic/sdk/impl/qj;

    if-eqz v1, :cond_1

    .line 484
    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/qj;

    .line 485
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-interface {v0, v1, p2}, Lcom/flurry/android/monolithic/sdk/impl/qj;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    .line 487
    :cond_1
    return-object v0

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->k:Lcom/flurry/android/monolithic/sdk/impl/ra;

    goto :goto_0
.end method

.method protected b(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
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
    .line 735
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->b(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/afm;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/zw;->d(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 743
    if-eqz v0, :cond_0

    .line 744
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->h:Lcom/flurry/android/monolithic/sdk/impl/aat;

    invoke-virtual {v1, p1, v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/aat;->a(Ljava/lang/Class;Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    .line 746
    :cond_0
    return-object v0

    .line 736
    :catch_0
    move-exception v0

    .line 740
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/qw;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ot;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(JLcom/flurry/android/monolithic/sdk/impl/or;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 551
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/rr;->r:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/zw;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;)V

    .line 561
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->o:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->n()Ljava/text/DateFormat;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->o:Ljava/text/DateFormat;

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->o:Ljava/text/DateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/util/Date;Lcom/flurry/android/monolithic/sdk/impl/or;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 567
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/rr;->r:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/zw;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;)V

    .line 577
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->o:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/rq;->n()Ljava/text/DateFormat;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->o:Ljava/text/DateFormat;

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->o:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/or;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->m:Lcom/flurry/android/monolithic/sdk/impl/ra;

    return-object v0
.end method

.method protected c(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 758
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/zw;->d(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 766
    if-eqz v0, :cond_0

    .line 767
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->h:Lcom/flurry/android/monolithic/sdk/impl/aat;

    invoke-virtual {v1, p1, v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/aat;->a(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/ra;Lcom/flurry/android/monolithic/sdk/impl/ru;)V

    .line 769
    :cond_0
    return-object v0

    .line 759
    :catch_0
    move-exception v0

    .line 763
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/qw;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ot;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public d()Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/android/monolithic/sdk/impl/ra",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->l:Lcom/flurry/android/monolithic/sdk/impl/ra;

    return-object v0
.end method

.method protected d(Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 782
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->g:Lcom/flurry/android/monolithic/sdk/impl/rs;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/zw;->b:Lcom/flurry/android/monolithic/sdk/impl/rq;

    invoke-virtual {v0, v1, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/rs;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/ra;

    move-result-object v0

    return-object v0
.end method
