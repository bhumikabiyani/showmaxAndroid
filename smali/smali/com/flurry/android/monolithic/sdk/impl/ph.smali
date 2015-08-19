.class public abstract Lcom/flurry/android/monolithic/sdk/impl/ph;
.super Lcom/flurry/android/monolithic/sdk/impl/pi;
.source "SourceFile"


# static fields
.field static final u:Ljava/math/BigDecimal;

.field static final v:Ljava/math/BigDecimal;

.field static final w:Ljava/math/BigDecimal;

.field static final x:Ljava/math/BigDecimal;


# instance fields
.field protected A:J

.field protected B:D

.field protected C:Ljava/math/BigInteger;

.field protected D:Ljava/math/BigDecimal;

.field protected E:Z

.field protected F:I

.field protected G:I

.field protected H:I

.field protected final d:Lcom/flurry/android/monolithic/sdk/impl/pq;

.field protected e:Z

.field protected f:I

.field protected g:I

.field protected h:J

.field protected i:I

.field protected j:I

.field protected k:J

.field protected l:I

.field protected m:I

.field protected n:Lcom/flurry/android/monolithic/sdk/impl/pk;

.field protected o:Lcom/flurry/android/monolithic/sdk/impl/pb;

.field protected final p:Lcom/flurry/android/monolithic/sdk/impl/afy;

.field protected q:[C

.field protected r:Z

.field protected s:Lcom/flurry/android/monolithic/sdk/impl/afq;

.field protected t:[B

.field protected y:I

.field protected z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    .line 195
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ph;->u:Ljava/math/BigDecimal;

    .line 196
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ph;->v:Ljava/math/BigDecimal;

    .line 198
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ph;->w:Ljava/math/BigDecimal;

    .line 199
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(J)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ph;->x:Ljava/math/BigDecimal;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/pq;I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 293
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/pi;-><init>()V

    .line 54
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->f:I

    .line 59
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->g:I

    .line 71
    iput-wide v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->h:J

    .line 77
    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->i:I

    .line 85
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->j:I

    .line 101
    iput-wide v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->k:J

    .line 106
    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->l:I

    .line 112
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->m:I

    .line 151
    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->q:[C

    .line 158
    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->r:Z

    .line 164
    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->s:Lcom/flurry/android/monolithic/sdk/impl/afq;

    .line 241
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    .line 294
    iput p2, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->a:I

    .line 295
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->d:Lcom/flurry/android/monolithic/sdk/impl/pq;

    .line 296
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/pq;->c()Lcom/flurry/android/monolithic/sdk/impl/afy;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->p:Lcom/flurry/android/monolithic/sdk/impl/afy;

    .line 297
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/pk;->g()Lcom/flurry/android/monolithic/sdk/impl/pk;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->n:Lcom/flurry/android/monolithic/sdk/impl/pk;

    .line 298
    return-void
.end method

.method private final a(I[CII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 791
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->p:Lcom/flurry/android/monolithic/sdk/impl/afy;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afy;->f()Ljava/lang/String;

    move-result-object v1

    .line 794
    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->E:Z

    invoke-static {p2, p3, p4, v0}, Lcom/flurry/android/monolithic/sdk/impl/pt;->a([CIIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->A:J

    .line 797
    const/4 v0, 0x2

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    .line 807
    :goto_0
    return-void

    .line 800
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->C:Ljava/math/BigInteger;

    .line 801
    const/4 v0, 0x4

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 803
    :catch_0
    move-exception v0

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed numeric value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private final d(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    const/16 v0, 0x10

    .line 774
    if-ne p1, v0, :cond_0

    .line 775
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->p:Lcom/flurry/android/monolithic/sdk/impl/afy;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afy;->h()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->D:Ljava/math/BigDecimal;

    .line 776
    const/16 v0, 0x10

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    .line 786
    :goto_0
    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->p:Lcom/flurry/android/monolithic/sdk/impl/afy;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afy;->i()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->B:D

    .line 780
    const/16 v0, 0x8

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 782
    :catch_0
    move-exception v0

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed numeric value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->p:Lcom/flurry/android/monolithic/sdk/impl/afy;

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/afy;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final A()J
    .locals 2

    .prologue
    .line 402
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->k:J

    return-wide v0
.end method

.method public final B()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->l:I

    return v0
.end method

.method public final C()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->m:I

    .line 407
    if-gez v0, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected final D()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->E()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->S()V

    .line 422
    :cond_0
    return-void
.end method

.method protected abstract E()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract F()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected G()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->p:Lcom/flurry/android/monolithic/sdk/impl/afy;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afy;->a()V

    .line 451
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->q:[C

    .line 452
    if-eqz v0, :cond_0

    .line 453
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->q:[C

    .line 454
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->d:Lcom/flurry/android/monolithic/sdk/impl/pq;

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/pq;->c([C)V

    .line 456
    :cond_0
    return-void
.end method

.method protected H()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->n:Lcom/flurry/android/monolithic/sdk/impl/pk;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pk;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": expected close marker for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->n:Lcom/flurry/android/monolithic/sdk/impl/pk;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/pk;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->n:Lcom/flurry/android/monolithic/sdk/impl/pk;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->d:Lcom/flurry/android/monolithic/sdk/impl/pq;

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/pq;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/pk;->a(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/ot;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->c(Ljava/lang/String;)V

    .line 469
    :cond_0
    return-void
.end method

.method public I()Lcom/flurry/android/monolithic/sdk/impl/afq;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->s:Lcom/flurry/android/monolithic/sdk/impl/afq;

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afq;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/afq;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->s:Lcom/flurry/android/monolithic/sdk/impl/afq;

    .line 497
    :goto_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->s:Lcom/flurry/android/monolithic/sdk/impl/afq;

    return-object v0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->s:Lcom/flurry/android/monolithic/sdk/impl/afq;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afq;->a()V

    goto :goto_0
.end method

.method protected J()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 819
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 821
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->A:J

    long-to-int v0, v0

    .line 822
    int-to-long v2, v0

    iget-wide v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->A:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") out of range of int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ph;->d(Ljava/lang/String;)V

    .line 825
    :cond_0
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->z:I

    .line 845
    :goto_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    .line 846
    return-void

    .line 826
    :cond_1
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 828
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->C:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->z:I

    goto :goto_0

    .line 829
    :cond_2
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    .line 831
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->B:D

    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_3

    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->B:D

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v0, v0, v2

    if-lez v0, :cond_4

    .line 832
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->O()V

    .line 834
    :cond_4
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->B:D

    double-to-int v0, v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->z:I

    goto :goto_0

    .line 835
    :cond_5
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    .line 836
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ph;->w:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->D:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_6

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ph;->x:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->D:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_7

    .line 838
    :cond_6
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->O()V

    .line 840
    :cond_7
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->D:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->z:I

    goto :goto_0

    .line 842
    :cond_8
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->U()V

    goto :goto_0
.end method

.method protected K()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 851
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 852
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->z:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->A:J

    .line 872
    :goto_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    .line 873
    return-void

    .line 853
    :cond_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->C:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->A:J

    goto :goto_0

    .line 856
    :cond_1
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 858
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->B:D

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->B:D

    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, v0, v2

    if-lez v0, :cond_3

    .line 859
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->P()V

    .line 861
    :cond_3
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->B:D

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->A:J

    goto :goto_0

    .line 862
    :cond_4
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 863
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ph;->u:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->D:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_5

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ph;->v:Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->D:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_6

    .line 865
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->P()V

    .line 867
    :cond_6
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->D:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->A:J

    goto :goto_0

    .line 869
    :cond_7
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->U()V

    goto :goto_0
.end method

.method protected L()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 878
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->D:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->C:Ljava/math/BigInteger;

    .line 890
    :goto_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    .line 891
    return-void

    .line 881
    :cond_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 882
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->A:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->C:Ljava/math/BigInteger;

    goto :goto_0

    .line 883
    :cond_1
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 884
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->z:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->C:Ljava/math/BigInteger;

    goto :goto_0

    .line 885
    :cond_2
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 886
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->B:D

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->C:Ljava/math/BigInteger;

    goto :goto_0

    .line 888
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->U()V

    goto :goto_0
.end method

.method protected M()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 902
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->D:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->B:D

    .line 914
    :goto_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    .line 915
    return-void

    .line 904
    :cond_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->C:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->B:D

    goto :goto_0

    .line 906
    :cond_1
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 907
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->A:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->B:D

    goto :goto_0

    .line 908
    :cond_2
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 909
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->z:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->B:D

    goto :goto_0

    .line 911
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->U()V

    goto :goto_0
.end method

.method protected N()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 926
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 931
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->D:Ljava/math/BigDecimal;

    .line 941
    :goto_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    .line 942
    return-void

    .line 932
    :cond_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 933
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->C:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->D:Ljava/math/BigDecimal;

    goto :goto_0

    .line 934
    :cond_1
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 935
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->A:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->D:Ljava/math/BigDecimal;

    goto :goto_0

    .line 936
    :cond_2
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 937
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->z:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->D:Ljava/math/BigDecimal;

    goto :goto_0

    .line 939
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->U()V

    goto :goto_0
.end method

.method protected O()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of int ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->d(Ljava/lang/String;)V

    .line 970
    return-void
.end method

.method protected P()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Numeric value ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out of range of long ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->d(Ljava/lang/String;)V

    .line 976
    return-void
.end method

.method protected Q()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 991
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final a(Lcom/flurry/android/monolithic/sdk/impl/on;CI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 1020
    const/16 v0, 0x5c

    if-eq p2, v0, :cond_0

    .line 1021
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ph;->a(Lcom/flurry/android/monolithic/sdk/impl/on;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 1023
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->Q()C

    move-result v1

    .line 1025
    const/16 v0, 0x20

    if-gt v1, v0, :cond_2

    .line 1026
    if-nez p3, :cond_2

    .line 1027
    const/4 v0, -0x1

    .line 1035
    :cond_1
    return v0

    .line 1031
    :cond_2
    invoke-virtual {p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/on;->b(C)I

    move-result v0

    .line 1032
    if-gez v0, :cond_1

    .line 1033
    invoke-virtual {p0, p1, v1, p3}, Lcom/flurry/android/monolithic/sdk/impl/ph;->a(Lcom/flurry/android/monolithic/sdk/impl/on;II)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method protected final a(Ljava/lang/String;D)Lcom/flurry/android/monolithic/sdk/impl/pb;
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->p:Lcom/flurry/android/monolithic/sdk/impl/afy;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/afy;->a(Ljava/lang/String;)V

    .line 539
    iput-wide p2, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->B:D

    .line 540
    const/16 v0, 0x8

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    .line 541
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    return-object v0
.end method

.method protected final a(ZI)Lcom/flurry/android/monolithic/sdk/impl/pb;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 518
    iput-boolean p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->E:Z

    .line 519
    iput p2, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->F:I

    .line 520
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->G:I

    .line 521
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->H:I

    .line 522
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    .line 523
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    return-object v0
.end method

.method protected final a(ZIII)Lcom/flurry/android/monolithic/sdk/impl/pb;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 510
    if-ge p3, v0, :cond_0

    if-ge p4, v0, :cond_0

    .line 511
    invoke-virtual {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ph;->a(ZI)Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 513
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/ph;->b(ZIII)Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/on;II)Ljava/lang/IllegalArgumentException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1041
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->a(Lcom/flurry/android/monolithic/sdk/impl/on;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/on;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1052
    const/16 v0, 0x20

    if-gt p2, v0, :cond_1

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal white space character (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: can only used between units"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1062
    :goto_0
    if-eqz p4, :cond_0

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1065
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1054
    :cond_1
    invoke-virtual {p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/on;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected padding character (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/on;->b()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') as character #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1056
    :cond_2
    invoke-static {p2}, Ljava/lang/Character;->isDefined(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1058
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1060
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' (code 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in base64 content"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected a(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 715
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_7

    .line 716
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->p:Lcom/flurry/android/monolithic/sdk/impl/afy;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afy;->e()[C

    move-result-object v1

    .line 717
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->p:Lcom/flurry/android/monolithic/sdk/impl/afy;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/afy;->d()I

    move-result v0

    .line 718
    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->F:I

    .line 719
    iget-boolean v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->E:Z

    if-eqz v3, :cond_0

    .line 720
    add-int/lit8 v0, v0, 0x1

    .line 722
    :cond_0
    const/16 v3, 0x9

    if-gt v2, v3, :cond_2

    .line 723
    invoke-static {v1, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/pt;->a([CII)I

    move-result v0

    .line 724
    iget-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->E:Z

    if-eqz v1, :cond_1

    neg-int v0, v0

    :cond_1
    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->z:I

    .line 725
    iput v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    .line 761
    :goto_0
    return-void

    .line 728
    :cond_2
    const/16 v3, 0x12

    if-gt v2, v3, :cond_6

    .line 729
    invoke-static {v1, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/pt;->b([CII)J

    move-result-wide v0

    .line 730
    iget-boolean v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->E:Z

    if-eqz v3, :cond_3

    .line 731
    neg-long v0, v0

    .line 734
    :cond_3
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    .line 735
    iget-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->E:Z

    if-eqz v2, :cond_4

    .line 736
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    .line 737
    long-to-int v0, v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->z:I

    .line 738
    iput v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    goto :goto_0

    .line 742
    :cond_4
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_5

    .line 743
    long-to-int v0, v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->z:I

    .line 744
    iput v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    goto :goto_0

    .line 749
    :cond_5
    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->A:J

    .line 750
    const/4 v0, 0x2

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    goto :goto_0

    .line 753
    :cond_6
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ph;->a(I[CII)V

    goto :goto_0

    .line 756
    :cond_7
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_8

    .line 757
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ph;->d(I)V

    goto :goto_0

    .line 760
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(IC)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->n:Lcom/flurry/android/monolithic/sdk/impl/pk;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->d:Lcom/flurry/android/monolithic/sdk/impl/pq;

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/pq;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/pk;->a(Ljava/lang/Object;)Lcom/flurry/android/monolithic/sdk/impl/ot;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected close marker \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->n:Lcom/flurry/android/monolithic/sdk/impl/pk;

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/pk;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->d(Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected character ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/ph;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in numeric value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 954
    if-eqz p2, :cond_0

    .line 955
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 957
    :cond_0
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->d(Ljava/lang/String;)V

    .line 958
    return-void
.end method

.method protected final b(ZIII)Lcom/flurry/android/monolithic/sdk/impl/pb;
    .locals 1

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->E:Z

    .line 529
    iput p2, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->F:I

    .line 530
    iput p3, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->G:I

    .line 531
    iput p4, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->H:I

    .line 532
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    .line 533
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/pb;->j:Lcom/flurry/android/monolithic/sdk/impl/pb;

    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid numeric value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->d(Ljava/lang/String;)V

    .line 964
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->e:Z

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->e:Z

    .line 333
    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->F()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->G()V

    .line 340
    :cond_0
    return-void

    .line 337
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->G()V

    throw v0
.end method

.method public g()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->d:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_1

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->n:Lcom/flurry/android/monolithic/sdk/impl/pk;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pk;->i()Lcom/flurry/android/monolithic/sdk/impl/pk;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pk;->h()Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->n:Lcom/flurry/android/monolithic/sdk/impl/pk;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pk;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public h()Lcom/flurry/android/monolithic/sdk/impl/ot;
    .locals 6

    .prologue
    .line 359
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ot;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->d:Lcom/flurry/android/monolithic/sdk/impl/pq;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/pq;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->A()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->B()I

    move-result v4

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->C()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/ot;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public i()Lcom/flurry/android/monolithic/sdk/impl/ot;
    .locals 8

    .prologue
    .line 372
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->f:I

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->j:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    .line 373
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ot;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->d:Lcom/flurry/android/monolithic/sdk/impl/pq;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/pq;->a()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->h:J

    iget v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->f:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iget v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->i:I

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/ot;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->h:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_0

    .line 388
    const/4 v0, 0x1

    .line 393
    :goto_0
    return v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->f:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_1

    .line 391
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->r:Z

    goto :goto_0

    .line 393
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Ljava/lang/Number;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 553
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    if-nez v0, :cond_0

    .line 554
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->a(I)V

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_4

    .line 558
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 559
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->z:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 580
    :goto_0
    return-object v0

    .line 561
    :cond_1
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 562
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->A:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 564
    :cond_2
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 565
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->C:Ljava/math/BigInteger;

    goto :goto_0

    .line 568
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->D:Ljava/math/BigDecimal;

    goto :goto_0

    .line 574
    :cond_4
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 575
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->D:Ljava/math/BigDecimal;

    goto :goto_0

    .line 577
    :cond_5
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_6

    .line 578
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->U()V

    .line 580
    :cond_6
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->B:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public q()Lcom/flurry/android/monolithic/sdk/impl/oy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 586
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    if-nez v0, :cond_0

    .line 587
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->a(I)V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->i:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_3

    .line 590
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 591
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->a:Lcom/flurry/android/monolithic/sdk/impl/oy;

    .line 608
    :goto_0
    return-object v0

    .line 593
    :cond_1
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 594
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->b:Lcom/flurry/android/monolithic/sdk/impl/oy;

    goto :goto_0

    .line 596
    :cond_2
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->c:Lcom/flurry/android/monolithic/sdk/impl/oy;

    goto :goto_0

    .line 605
    :cond_3
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 606
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->f:Lcom/flurry/android/monolithic/sdk/impl/oy;

    goto :goto_0

    .line 608
    :cond_4
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/oy;->e:Lcom/flurry/android/monolithic/sdk/impl/oy;

    goto :goto_0
.end method

.method public t()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 614
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 615
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    if-nez v0, :cond_0

    .line 616
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->a(I)V

    .line 618
    :cond_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 619
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->J()V

    .line 622
    :cond_1
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->z:I

    return v0
.end method

.method public u()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 628
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 629
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    if-nez v0, :cond_0

    .line 630
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->a(I)V

    .line 632
    :cond_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 633
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->K()V

    .line 636
    :cond_1
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->A:J

    return-wide v0
.end method

.method public v()Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 642
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 643
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    if-nez v0, :cond_0

    .line 644
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->a(I)V

    .line 646
    :cond_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    .line 647
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->L()V

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->C:Ljava/math/BigInteger;

    return-object v0
.end method

.method public w()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->x()D

    move-result-wide v0

    .line 665
    double-to-float v0, v0

    return v0
.end method

.method public x()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 671
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 672
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    if-nez v0, :cond_0

    .line 673
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->a(I)V

    .line 675
    :cond_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 676
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->M()V

    .line 679
    :cond_1
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->B:D

    return-wide v0
.end method

.method public y()Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 685
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 686
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    if-nez v0, :cond_0

    .line 687
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->a(I)V

    .line 689
    :cond_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->y:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 690
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ph;->N()V

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ph;->D:Ljava/math/BigDecimal;

    return-object v0
.end method
