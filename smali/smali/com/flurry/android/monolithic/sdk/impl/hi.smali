.class public Lcom/flurry/android/monolithic/sdk/impl/hi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/flurry/android/monolithic/sdk/impl/hs;

.field private b:Lcom/flurry/android/monolithic/sdk/impl/ht;

.field private c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hs;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/hs;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hi;->a:Lcom/flurry/android/monolithic/sdk/impl/hs;

    .line 23
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ht;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/ht;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hi;->b:Lcom/flurry/android/monolithic/sdk/impl/ht;

    .line 24
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hi;->c:Ljava/util/concurrent/ExecutorService;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/hi;)Lcom/flurry/android/monolithic/sdk/impl/hs;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hi;->a:Lcom/flurry/android/monolithic/sdk/impl/hs;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/android/monolithic/sdk/impl/hi;)Lcom/flurry/android/monolithic/sdk/impl/ht;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hi;->b:Lcom/flurry/android/monolithic/sdk/impl/ht;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/hm;Lcom/flurry/android/monolithic/sdk/impl/fr;)V
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/hm;->a(I)V

    .line 30
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hi;->a:Lcom/flurry/android/monolithic/sdk/impl/hs;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/hs;->a(Lcom/flurry/android/monolithic/sdk/impl/hm;)V

    .line 31
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hi;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/hj;

    invoke-direct {v1, p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/hj;-><init>(Lcom/flurry/android/monolithic/sdk/impl/hi;Lcom/flurry/android/monolithic/sdk/impl/fr;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 32
    return-void
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/hm;Lcom/flurry/android/monolithic/sdk/impl/fr;)V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/hm;->a(I)V

    .line 37
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hi;->a:Lcom/flurry/android/monolithic/sdk/impl/hs;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/hs;->a(Lcom/flurry/android/monolithic/sdk/impl/hm;)V

    .line 38
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hi;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/hj;

    invoke-direct {v1, p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/hj;-><init>(Lcom/flurry/android/monolithic/sdk/impl/hi;Lcom/flurry/android/monolithic/sdk/impl/fr;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 39
    return-void
.end method

.method public c(Lcom/flurry/android/monolithic/sdk/impl/hm;Lcom/flurry/android/monolithic/sdk/impl/fr;)V
    .locals 2

    .prologue
    .line 43
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/hm;->a(I)V

    .line 44
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hi;->a:Lcom/flurry/android/monolithic/sdk/impl/hs;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/hs;->a(Lcom/flurry/android/monolithic/sdk/impl/hm;)V

    .line 45
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hi;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/hj;

    invoke-direct {v1, p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/hj;-><init>(Lcom/flurry/android/monolithic/sdk/impl/hi;Lcom/flurry/android/monolithic/sdk/impl/fr;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 46
    return-void
.end method
