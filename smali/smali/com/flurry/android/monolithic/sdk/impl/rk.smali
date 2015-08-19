.class public Lcom/flurry/android/monolithic/sdk/impl/rk;
.super Lcom/flurry/android/monolithic/sdk/impl/pc;
.source "SourceFile"


# static fields
.field protected static final a:Lcom/flurry/android/monolithic/sdk/impl/qf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/qf",
            "<+",
            "Lcom/flurry/android/monolithic/sdk/impl/qb;",
            ">;"
        }
    .end annotation
.end field

.field protected static final b:Lcom/flurry/android/monolithic/sdk/impl/py;

.field protected static final c:Lcom/flurry/android/monolithic/sdk/impl/ye;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/ye",
            "<*>;"
        }
    .end annotation
.end field

.field private static final n:Lcom/flurry/android/monolithic/sdk/impl/afm;


# instance fields
.field protected final d:Lcom/flurry/android/monolithic/sdk/impl/op;

.field protected e:Lcom/flurry/android/monolithic/sdk/impl/yh;

.field protected f:Lcom/flurry/android/monolithic/sdk/impl/adk;

.field protected g:Lcom/flurry/android/monolithic/sdk/impl/qt;

.field protected h:Lcom/flurry/android/monolithic/sdk/impl/rq;

.field protected i:Lcom/flurry/android/monolithic/sdk/impl/ru;

.field protected j:Lcom/flurry/android/monolithic/sdk/impl/rs;

.field protected k:Lcom/flurry/android/monolithic/sdk/impl/qk;

.field protected l:Lcom/flurry/android/monolithic/sdk/impl/qq;

.field protected final m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/ou;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/adh;->d(Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/adh;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/rk;->n:Lcom/flurry/android/monolithic/sdk/impl/afm;

    .line 188
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/xr;->i:Lcom/flurry/android/monolithic/sdk/impl/xr;

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/rk;->a:Lcom/flurry/android/monolithic/sdk/impl/qf;

    .line 191
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/xx;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/xx;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/rk;->b:Lcom/flurry/android/monolithic/sdk/impl/py;

    .line 196
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/yf;->a()Lcom/flurry/android/monolithic/sdk/impl/yf;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/rk;->c:Lcom/flurry/android/monolithic/sdk/impl/ye;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 328
    invoke-direct {p0, v0, v0, v0}, Lcom/flurry/android/monolithic/sdk/impl/rk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/op;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/qq;)V

    .line 329
    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/op;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 338
    invoke-direct {p0, p1, v0, v0}, Lcom/flurry/android/monolithic/sdk/impl/rk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/op;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/qq;)V

    .line 339
    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/op;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/qq;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 358
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/rk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/op;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/qq;Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/qk;)V

    .line 359
    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/op;Lcom/flurry/android/monolithic/sdk/impl/ru;Lcom/flurry/android/monolithic/sdk/impl/qq;Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/qk;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 374
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/pc;-><init>()V

    .line 305
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 381
    if-nez p1, :cond_3

    .line 382
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/rj;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/rj;-><init>(Lcom/flurry/android/monolithic/sdk/impl/rk;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->d:Lcom/flurry/android/monolithic/sdk/impl/op;

    .line 390
    :cond_0
    :goto_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/adk;->a()Lcom/flurry/android/monolithic/sdk/impl/adk;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->f:Lcom/flurry/android/monolithic/sdk/impl/adk;

    .line 391
    if-eqz p4, :cond_4

    :goto_1
    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->h:Lcom/flurry/android/monolithic/sdk/impl/rq;

    .line 394
    if-eqz p5, :cond_5

    :goto_2
    iput-object p5, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->k:Lcom/flurry/android/monolithic/sdk/impl/qk;

    .line 397
    if-nez p2, :cond_1

    new-instance p2, Lcom/flurry/android/monolithic/sdk/impl/zw;

    invoke-direct {p2}, Lcom/flurry/android/monolithic/sdk/impl/zw;-><init>()V

    :cond_1
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->i:Lcom/flurry/android/monolithic/sdk/impl/ru;

    .line 398
    if-nez p3, :cond_2

    new-instance p3, Lcom/flurry/android/monolithic/sdk/impl/te;

    invoke-direct {p3}, Lcom/flurry/android/monolithic/sdk/impl/te;-><init>()V

    :cond_2
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->l:Lcom/flurry/android/monolithic/sdk/impl/qq;

    .line 401
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/zi;->e:Lcom/flurry/android/monolithic/sdk/impl/zi;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->j:Lcom/flurry/android/monolithic/sdk/impl/rs;

    .line 402
    return-void

    .line 384
    :cond_3
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->d:Lcom/flurry/android/monolithic/sdk/impl/op;

    .line 385
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/op;->a()Lcom/flurry/android/monolithic/sdk/impl/pc;

    move-result-object v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->d:Lcom/flurry/android/monolithic/sdk/impl/op;

    invoke-virtual {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/op;->a(Lcom/flurry/android/monolithic/sdk/impl/pc;)Lcom/flurry/android/monolithic/sdk/impl/op;

    goto :goto_0

    .line 391
    :cond_4
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/rq;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/rk;->a:Lcom/flurry/android/monolithic/sdk/impl/qf;

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/rk;->b:Lcom/flurry/android/monolithic/sdk/impl/py;

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/rk;->c:Lcom/flurry/android/monolithic/sdk/impl/ye;

    iget-object v6, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->f:Lcom/flurry/android/monolithic/sdk/impl/adk;

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/android/monolithic/sdk/impl/rq;-><init>(Lcom/flurry/android/monolithic/sdk/impl/qf;Lcom/flurry/android/monolithic/sdk/impl/py;Lcom/flurry/android/monolithic/sdk/impl/ye;Lcom/flurry/android/monolithic/sdk/impl/yh;Lcom/flurry/android/monolithic/sdk/impl/rl;Lcom/flurry/android/monolithic/sdk/impl/adk;Lcom/flurry/android/monolithic/sdk/impl/qs;)V

    move-object p4, v0

    goto :goto_1

    .line 394
    :cond_5
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qk;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/rk;->a:Lcom/flurry/android/monolithic/sdk/impl/qf;

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/rk;->b:Lcom/flurry/android/monolithic/sdk/impl/py;

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/rk;->c:Lcom/flurry/android/monolithic/sdk/impl/ye;

    iget-object v6, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->f:Lcom/flurry/android/monolithic/sdk/impl/adk;

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/android/monolithic/sdk/impl/qk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/qf;Lcom/flurry/android/monolithic/sdk/impl/py;Lcom/flurry/android/monolithic/sdk/impl/ye;Lcom/flurry/android/monolithic/sdk/impl/yh;Lcom/flurry/android/monolithic/sdk/impl/rl;Lcom/flurry/android/monolithic/sdk/impl/adk;Lcom/flurry/android/monolithic/sdk/impl/qs;)V

    move-object p5, v0

    goto :goto_2
.end method

.method private final a(Lcom/flurry/android/monolithic/sdk/impl/or;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/rq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;,
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 2656
    move-object v0, p2

    check-cast v0, Ljava/io/Closeable;

    .line 2658
    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->i:Lcom/flurry/android/monolithic/sdk/impl/ru;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->j:Lcom/flurry/android/monolithic/sdk/impl/rs;

    invoke-virtual {v1, p3, p1, p2, v2}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/or;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/rs;)V

    .line 2659
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/rr;->p:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {p3, v1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2660
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/or;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2663
    :cond_0
    const/4 v1, 0x0

    .line 2664
    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2666
    if-eqz v1, :cond_1

    .line 2668
    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2672
    :cond_1
    :goto_0
    return-void

    .line 2666
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 2668
    :try_start_3
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2669
    :cond_2
    :goto_2
    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    .line 2666
    :catchall_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/ow;)Lcom/flurry/android/monolithic/sdk/impl/ou;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 1336
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/rk;->b()Lcom/flurry/android/monolithic/sdk/impl/qk;

    move-result-object v0

    .line 1337
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    .line 1338
    if-nez v1, :cond_1

    .line 1339
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    .line 1340
    if-nez v1, :cond_1

    .line 1341
    const/4 v0, 0x0

    .line 1345
    :cond_0
    :goto_0
    return-object v0

    .line 1344
    :cond_1
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/rk;->n:Lcom/flurry/android/monolithic/sdk/impl/afm;

    invoke-virtual {p0, v0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/rk;->a(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/afm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ou;

    .line 1345
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/rk;->c()Lcom/flurry/android/monolithic/sdk/impl/aez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/aez;->a()Lcom/flurry/android/monolithic/sdk/impl/afb;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qk;)Lcom/flurry/android/monolithic/sdk/impl/qm;
    .locals 3

    .prologue
    .line 2839
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/td;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->l:Lcom/flurry/android/monolithic/sdk/impl/qq;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->g:Lcom/flurry/android/monolithic/sdk/impl/qt;

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/td;-><init>(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qq;Lcom/flurry/android/monolithic/sdk/impl/qt;)V

    return-object v0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/qu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/qk;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            ")",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
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
    .line 2824
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/qu;

    .line 2825
    if-eqz v0, :cond_0

    .line 2834
    :goto_0
    return-object v0

    .line 2829
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->l:Lcom/flurry/android/monolithic/sdk/impl/qq;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/flurry/android/monolithic/sdk/impl/qq;->b(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qc;)Lcom/flurry/android/monolithic/sdk/impl/qu;

    move-result-object v0

    .line 2830
    if-nez v0, :cond_1

    .line 2831
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/qw;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a deserializer for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qw;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2833
    :cond_1
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a()Lcom/flurry/android/monolithic/sdk/impl/rq;
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->h:Lcom/flurry/android/monolithic/sdk/impl/rq;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->e:Lcom/flurry/android/monolithic/sdk/impl/yh;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/yh;)Lcom/flurry/android/monolithic/sdk/impl/rq;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/qu;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/ow;",
            "Lcom/flurry/android/monolithic/sdk/impl/afm;",
            "Lcom/flurry/android/monolithic/sdk/impl/qm;",
            "Lcom/flurry/android/monolithic/sdk/impl/qu",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;,
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 2785
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->l:Lcom/flurry/android/monolithic/sdk/impl/qq;

    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/qm;->a()Lcom/flurry/android/monolithic/sdk/impl/qk;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/flurry/android/monolithic/sdk/impl/qq;->a(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/pw;

    move-result-object v0

    .line 2786
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->b:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v1, v2, :cond_0

    .line 2787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current token not START_OBJECT (needed to unwrap root name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'), but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qw;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 2790
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/pb;->f:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v1, v2, :cond_1

    .line 2791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current token not FIELD_NAME (to contain expected root name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'), but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qw;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 2794
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->g()Ljava/lang/String;

    move-result-object v1

    .line 2795
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/pw;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not match expected (\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') for type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qw;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 2800
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    .line 2802
    invoke-virtual {p4, p1, p3}, Lcom/flurry/android/monolithic/sdk/impl/qu;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v1

    .line 2804
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/pb;->c:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v2, v3, :cond_3

    .line 2805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current token not END_OBJECT (to match wrapper object with root name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'), but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/qw;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/qw;

    move-result-object v0

    throw v0

    .line 2808
    :cond_3
    return-object v1
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/afm;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;,
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 2691
    invoke-virtual {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/rk;->b(Lcom/flurry/android/monolithic/sdk/impl/ow;)Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 2692
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->m:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_0

    .line 2694
    invoke-virtual {p0, p1, p3}, Lcom/flurry/android/monolithic/sdk/impl/rk;->a(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/qu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/qu;->b()Ljava/lang/Object;

    move-result-object v0

    .line 2708
    :goto_0
    invoke-virtual {p2}, Lcom/flurry/android/monolithic/sdk/impl/ow;->f()V

    .line 2709
    return-object v0

    .line 2695
    :cond_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->e:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/pb;->c:Lcom/flurry/android/monolithic/sdk/impl/pb;

    if-ne v0, v1, :cond_2

    .line 2696
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2698
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/flurry/android/monolithic/sdk/impl/rk;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qk;)Lcom/flurry/android/monolithic/sdk/impl/qm;

    move-result-object v0

    .line 2699
    invoke-virtual {p0, p1, p3}, Lcom/flurry/android/monolithic/sdk/impl/rk;->a(Lcom/flurry/android/monolithic/sdk/impl/qk;Lcom/flurry/android/monolithic/sdk/impl/afm;)Lcom/flurry/android/monolithic/sdk/impl/qu;

    move-result-object v1

    .line 2701
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ql;->p:Lcom/flurry/android/monolithic/sdk/impl/ql;

    invoke-virtual {p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/qk;->a(Lcom/flurry/android/monolithic/sdk/impl/ql;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2702
    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/rk;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/afm;Lcom/flurry/android/monolithic/sdk/impl/qm;Lcom/flurry/android/monolithic/sdk/impl/qu;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 2704
    :cond_3
    invoke-virtual {v1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/qu;->a(Lcom/flurry/android/monolithic/sdk/impl/ow;Lcom/flurry/android/monolithic/sdk/impl/qm;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/or;Lcom/flurry/android/monolithic/sdk/impl/ou;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oz;
        }
    .end annotation

    .prologue
    .line 1649
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/rk;->a()Lcom/flurry/android/monolithic/sdk/impl/rq;

    move-result-object v0

    .line 1650
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->i:Lcom/flurry/android/monolithic/sdk/impl/ru;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->j:Lcom/flurry/android/monolithic/sdk/impl/rs;

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/or;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/rs;)V

    .line 1651
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/rr;->p:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1652
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/or;->g()V

    .line 1654
    :cond_0
    return-void
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/or;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/oq;,
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 1609
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/rk;->a()Lcom/flurry/android/monolithic/sdk/impl/rq;

    move-result-object v0

    .line 1610
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/rr;->o:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p2, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 1611
    invoke-direct {p0, p1, p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/rk;->a(Lcom/flurry/android/monolithic/sdk/impl/or;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/rq;)V

    .line 1618
    :cond_0
    :goto_0
    return-void

    .line 1613
    :cond_1
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->i:Lcom/flurry/android/monolithic/sdk/impl/ru;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->j:Lcom/flurry/android/monolithic/sdk/impl/rs;

    invoke-virtual {v1, v0, p1, p2, v2}, Lcom/flurry/android/monolithic/sdk/impl/ru;->a(Lcom/flurry/android/monolithic/sdk/impl/rq;Lcom/flurry/android/monolithic/sdk/impl/or;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/rs;)V

    .line 1614
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/rr;->p:Lcom/flurry/android/monolithic/sdk/impl/rr;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/rq;->a(Lcom/flurry/android/monolithic/sdk/impl/rr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1615
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/or;->g()V

    goto :goto_0
.end method

.method protected b(Lcom/flurry/android/monolithic/sdk/impl/ow;)Lcom/flurry/android/monolithic/sdk/impl/pb;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/android/monolithic/sdk/impl/ov;,
            Lcom/flurry/android/monolithic/sdk/impl/qw;
        }
    .end annotation

    .prologue
    .line 2767
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->e()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 2768
    if-nez v0, :cond_0

    .line 2770
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ow;->b()Lcom/flurry/android/monolithic/sdk/impl/pb;

    move-result-object v0

    .line 2771
    if-nez v0, :cond_0

    .line 2775
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "No content to map to Object due to end of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2778
    :cond_0
    return-object v0
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/qk;
    .locals 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->k:Lcom/flurry/android/monolithic/sdk/impl/qk;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->e:Lcom/flurry/android/monolithic/sdk/impl/yh;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qk;->a(Lcom/flurry/android/monolithic/sdk/impl/yh;)Lcom/flurry/android/monolithic/sdk/impl/qk;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->h:Lcom/flurry/android/monolithic/sdk/impl/rq;

    iget v1, v1, Lcom/flurry/android/monolithic/sdk/impl/rq;->i:I

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/qk;->a(I)Lcom/flurry/android/monolithic/sdk/impl/qk;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/flurry/android/monolithic/sdk/impl/aez;
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rk;->k:Lcom/flurry/android/monolithic/sdk/impl/qk;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/qk;->h()Lcom/flurry/android/monolithic/sdk/impl/aez;

    move-result-object v0

    return-object v0
.end method
