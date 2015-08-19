.class public Lcom/flurry/android/monolithic/sdk/impl/op;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I

.field static final b:I

.field protected static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/afn;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected d:Lcom/flurry/android/monolithic/sdk/impl/afj;

.field protected e:Lcom/flurry/android/monolithic/sdk/impl/afh;

.field protected f:Lcom/flurry/android/monolithic/sdk/impl/pc;

.field protected g:I

.field protected h:I

.field protected i:Lcom/flurry/android/monolithic/sdk/impl/pp;

.field protected j:Lcom/flurry/android/monolithic/sdk/impl/pr;

.field protected k:Lcom/flurry/android/monolithic/sdk/impl/pv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ox;->a()I

    move-result v0

    sput v0, Lcom/flurry/android/monolithic/sdk/impl/op;->a:I

    .line 71
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/os;->a()I

    move-result v0

    sput v0, Lcom/flurry/android/monolithic/sdk/impl/op;->b:I

    .line 84
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/op;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/op;-><init>(Lcom/flurry/android/monolithic/sdk/impl/pc;)V

    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/pc;)V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/afj;->a()Lcom/flurry/android/monolithic/sdk/impl/afj;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->d:Lcom/flurry/android/monolithic/sdk/impl/afj;

    .line 101
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/afh;->a()Lcom/flurry/android/monolithic/sdk/impl/afh;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->e:Lcom/flurry/android/monolithic/sdk/impl/afh;

    .line 121
    sget v0, Lcom/flurry/android/monolithic/sdk/impl/op;->a:I

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->g:I

    .line 126
    sget v0, Lcom/flurry/android/monolithic/sdk/impl/op;->b:I

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->h:I

    .line 171
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->f:Lcom/flurry/android/monolithic/sdk/impl/pc;

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/ox;)Lcom/flurry/android/monolithic/sdk/impl/op;
    .locals 2

    .prologue
    .line 255
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->g:I

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ox;->c()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->g:I

    .line 256
    return-object p0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/pc;)Lcom/flurry/android/monolithic/sdk/impl/op;
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->f:Lcom/flurry/android/monolithic/sdk/impl/pc;

    .line 476
    return-object p0
.end method

.method public a(Ljava/io/Writer;)Lcom/flurry/android/monolithic/sdk/impl/or;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 709
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/op;->a(Ljava/lang/Object;Z)Lcom/flurry/android/monolithic/sdk/impl/pq;

    move-result-object v0

    .line 711
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->k:Lcom/flurry/android/monolithic/sdk/impl/pv;

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->k:Lcom/flurry/android/monolithic/sdk/impl/pv;

    invoke-virtual {v1, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/pv;->a(Lcom/flurry/android/monolithic/sdk/impl/pq;Ljava/io/Writer;)Ljava/io/Writer;

    move-result-object p1

    .line 714
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/op;->a(Ljava/io/Writer;Lcom/flurry/android/monolithic/sdk/impl/pq;)Lcom/flurry/android/monolithic/sdk/impl/or;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/Writer;Lcom/flurry/android/monolithic/sdk/impl/pq;)Lcom/flurry/android/monolithic/sdk/impl/or;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/po;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->h:I

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->f:Lcom/flurry/android/monolithic/sdk/impl/pc;

    invoke-direct {v0, p2, v1, v2, p1}, Lcom/flurry/android/monolithic/sdk/impl/po;-><init>(Lcom/flurry/android/monolithic/sdk/impl/pq;ILcom/flurry/android/monolithic/sdk/impl/pc;Ljava/io/Writer;)V

    .line 846
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->i:Lcom/flurry/android/monolithic/sdk/impl/pp;

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->i:Lcom/flurry/android/monolithic/sdk/impl/pp;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/po;->a(Lcom/flurry/android/monolithic/sdk/impl/pp;)Lcom/flurry/android/monolithic/sdk/impl/or;

    .line 849
    :cond_0
    return-object v0
.end method

.method public a(Ljava/io/Reader;)Lcom/flurry/android/monolithic/sdk/impl/ow;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 581
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/op;->a(Ljava/lang/Object;Z)Lcom/flurry/android/monolithic/sdk/impl/pq;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->j:Lcom/flurry/android/monolithic/sdk/impl/pr;

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->j:Lcom/flurry/android/monolithic/sdk/impl/pr;

    invoke-virtual {v1, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/pr;->a(Lcom/flurry/android/monolithic/sdk/impl/pq;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object p1

    .line 586
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/op;->a(Ljava/io/Reader;Lcom/flurry/android/monolithic/sdk/impl/pq;)Lcom/flurry/android/monolithic/sdk/impl/ow;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/Reader;Lcom/flurry/android/monolithic/sdk/impl/pq;)Lcom/flurry/android/monolithic/sdk/impl/ow;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;
        }
    .end annotation

    .prologue
    .line 802
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/pm;

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->g:I

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->f:Lcom/flurry/android/monolithic/sdk/impl/pc;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->d:Lcom/flurry/android/monolithic/sdk/impl/afj;

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/ox;->j:Lcom/flurry/android/monolithic/sdk/impl/ox;

    invoke-virtual {p0, v3}, Lcom/flurry/android/monolithic/sdk/impl/op;->b(Lcom/flurry/android/monolithic/sdk/impl/ox;)Z

    move-result v3

    sget-object v5, Lcom/flurry/android/monolithic/sdk/impl/ox;->i:Lcom/flurry/android/monolithic/sdk/impl/ox;

    invoke-virtual {p0, v5}, Lcom/flurry/android/monolithic/sdk/impl/op;->b(Lcom/flurry/android/monolithic/sdk/impl/ox;)Z

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcom/flurry/android/monolithic/sdk/impl/afj;->a(ZZ)Lcom/flurry/android/monolithic/sdk/impl/afj;

    move-result-object v5

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/pm;-><init>(Lcom/flurry/android/monolithic/sdk/impl/pq;ILjava/io/Reader;Lcom/flurry/android/monolithic/sdk/impl/pc;Lcom/flurry/android/monolithic/sdk/impl/afj;)V

    return-object v0
.end method

.method public a()Lcom/flurry/android/monolithic/sdk/impl/pc;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->f:Lcom/flurry/android/monolithic/sdk/impl/pc;

    return-object v0
.end method

.method protected a(Ljava/lang/Object;Z)Lcom/flurry/android/monolithic/sdk/impl/pq;
    .locals 2

    .prologue
    .line 894
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/pq;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/op;->b()Lcom/flurry/android/monolithic/sdk/impl/afn;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/pq;-><init>(Lcom/flurry/android/monolithic/sdk/impl/afn;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/afn;
    .locals 3

    .prologue
    .line 905
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/op;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 906
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 908
    :goto_0
    if-nez v0, :cond_0

    .line 909
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/afn;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/afn;-><init>()V

    .line 910
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/op;->c:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 912
    :cond_0
    return-object v0

    .line 906
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/afn;

    goto :goto_0
.end method

.method public final b(Lcom/flurry/android/monolithic/sdk/impl/ox;)Z
    .locals 2

    .prologue
    .line 276
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/op;->g:I

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ox;->c()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
