.class public Lcom/flurry/android/monolithic/sdk/impl/em;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/id;
.implements Lcom/flurry/android/monolithic/sdk/impl/jb;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field private static final f:Ljava/lang/String;


# instance fields
.field d:Lcom/flurry/android/monolithic/sdk/impl/ey;

.field e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Ljava/util/concurrent/ExecutorService;

.field private i:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/em;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/em;->f:Ljava/lang/String;

    .line 41
    const-string v0, "http://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/em;->b:Ljava/lang/String;

    .line 42
    const-string v0, "https://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/em;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/em;-><init>(Lcom/flurry/android/monolithic/sdk/impl/eu;)V

    .line 64
    return-void
.end method

.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/eu;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->e:Ljava/util/Set;

    .line 67
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a()Lcom/flurry/android/monolithic/sdk/impl/jc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a(Lcom/flurry/android/monolithic/sdk/impl/jb;)V

    .line 68
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->h:Ljava/util/concurrent/ExecutorService;

    .line 69
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->i:Ljava/util/concurrent/ExecutorService;

    .line 71
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/em;->e()V

    .line 72
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/em;->f()V

    .line 73
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/em;->a(Lcom/flurry/android/monolithic/sdk/impl/eu;)V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/em;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/em;->i()V

    return-void
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/em;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/em;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/em;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/em;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Lcom/flurry/android/monolithic/sdk/impl/eu;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/eo;

    invoke-direct {v1, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/eo;-><init>(Lcom/flurry/android/monolithic/sdk/impl/em;Lcom/flurry/android/monolithic/sdk/impl/eu;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 150
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 210
    if-eqz p1, :cond_0

    const-string v0, ".do"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/em;->f:Ljava/lang/String;

    const-string v2, "overriding analytics agent report URL without an endpoint, are you sure?"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_0
    sput-object p1, Lcom/flurry/android/monolithic/sdk/impl/em;->a:Ljava/lang/String;

    .line 215
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/es;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/es;-><init>(Lcom/flurry/android/monolithic/sdk/impl/em;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 431
    return-void
.end method

.method static synthetic b(Lcom/flurry/android/monolithic/sdk/impl/em;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/em;->h()V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/et;

    invoke-direct {v1, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/et;-><init>(Lcom/flurry/android/monolithic/sdk/impl/em;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 448
    return-void
.end method

.method static synthetic c(Lcom/flurry/android/monolithic/sdk/impl/em;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/em;->g()V

    return-void
.end method

.method private c([BLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/ep;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ep;-><init>(Lcom/flurry/android/monolithic/sdk/impl/em;[BLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 272
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/em;->f:Ljava/lang/String;

    return-object v0
.end method

.method private d([BLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/em;->b()Ljava/lang/String;

    move-result-object v1

    .line 357
    const/4 v0, 0x4

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/em;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FlurryDataSender: start upload data with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance v5, Lcom/flurry/android/monolithic/sdk/impl/eq;

    invoke-direct {v5, p0}, Lcom/flurry/android/monolithic/sdk/impl/eq;-><init>(Lcom/flurry/android/monolithic/sdk/impl/em;)V

    .line 393
    iget-object v6, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ev;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/ev;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/flurry/android/monolithic/sdk/impl/ex;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 395
    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 77
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ib;->a()Lcom/flurry/android/monolithic/sdk/impl/ic;

    move-result-object v1

    .line 79
    const-string v0, "UseHttps"

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->g:Z

    .line 80
    const-string v0, "UseHttps"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/id;)V

    .line 81
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/em;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, UseHttps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "ReportUrl"

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    const-string v2, "ReportUrl"

    invoke-virtual {v1, v2, p0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/id;)V

    .line 85
    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/em;->a(Ljava/lang/String;)V

    .line 86
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/em;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, ReportUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/en;

    invoke-direct {v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/en;-><init>(Lcom/flurry/android/monolithic/sdk/impl/em;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 126
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/em;->a(Lcom/flurry/android/monolithic/sdk/impl/eu;)V

    .line 130
    return-void
.end method

.method private h()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 297
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a()Lcom/flurry/android/monolithic/sdk/impl/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/jc;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/em;->f:Ljava/lang/String;

    const-string v2, "Reports were not sent! No Internet connection!"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->d:Lcom/flurry/android/monolithic/sdk/impl/ey;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ey;->b()Ljava/util/List;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    :cond_2
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/em;->f:Ljava/lang/String;

    const-string v1, "No more reports to send."

    invoke-static {v8, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 310
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/em;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->d:Lcom/flurry/android/monolithic/sdk/impl/ey;

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ey;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 316
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/em;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of not sent blocks = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 320
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 322
    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->e:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 318
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 327
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/em;->c()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 331
    new-instance v5, Lcom/flurry/android/monolithic/sdk/impl/ew;

    invoke-direct {v5, v1}, Lcom/flurry/android/monolithic/sdk/impl/ew;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v5}, Lcom/flurry/android/monolithic/sdk/impl/ew;->b()[B

    move-result-object v5

    .line 334
    if-eqz v5, :cond_6

    array-length v6, v5

    if-nez v6, :cond_7

    .line 335
    :cond_6
    const/4 v5, 0x6

    sget-object v6, Lcom/flurry/android/monolithic/sdk/impl/em;->f:Ljava/lang/String;

    const-string v7, "Internal ERROR! Report is empty!"

    invoke-static {v5, v6, v7}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->d:Lcom/flurry/android/monolithic/sdk/impl/ey;

    invoke-virtual {v5, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ey;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 340
    :cond_7
    iget-object v6, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->e:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-direct {p0, v5, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/em;->d([BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private i()V
    .locals 5

    .prologue
    .line 451
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 452
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataSender Main Single Thread , id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 453
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 96
    const-string v0, "UseHttps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->g:Z

    .line 98
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/em;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, UseHttps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string v0, "ReportUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    check-cast p2, Ljava/lang/String;

    .line 101
    invoke-direct {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/em;->a(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/em;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, ReportUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/em;->f:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/em;->a([BLjava/lang/String;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/eu;)V

    .line 242
    return-void
.end method

.method a([BLjava/lang/String;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/eu;)V
    .locals 3

    .prologue
    .line 246
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 248
    :cond_0
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/em;->f:Ljava/lang/String;

    const-string v2, "Report that has to be sent is EMPTY or NULL"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/em;->c([BLjava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0, p4}, Lcom/flurry/android/monolithic/sdk/impl/em;->a(Lcom/flurry/android/monolithic/sdk/impl/eu;)V

    goto :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/em;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/em;->a:Ljava/lang/String;

    .line 226
    :goto_0
    return-object v0

    .line 223
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->g:Z

    if-eqz v0, :cond_1

    .line 224
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/em;->c:Ljava/lang/String;

    goto :goto_0

    .line 226
    :cond_1
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/em;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method b([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 276
    invoke-virtual {p0, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/em;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/ew;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/ew;-><init>()V

    .line 279
    invoke-virtual {v1, p1}, Lcom/flurry/android/monolithic/sdk/impl/ew;->a([B)Z

    .line 281
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ew;->a()Ljava/lang/String;

    move-result-object v2

    .line 283
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/em;->d:Lcom/flurry/android/monolithic/sdk/impl/ey;

    invoke-virtual {v3, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ey;->a(Lcom/flurry/android/monolithic/sdk/impl/ew;Ljava/lang/String;)V

    .line 285
    return-object v2
.end method

.method public b(Z)V
    .locals 4

    .prologue
    .line 158
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/em;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkStateChanged : isNetworkEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    if-eqz p1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/em;->g()V

    .line 162
    :cond_0
    return-void
.end method

.method c()Z
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/em;->a()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    .line 289
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
