.class public Lcom/flurry/android/monolithic/sdk/impl/br;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/android/impl/ads/FlurryAdModule;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/view/ViewGroup;

.field private final d:Z

.field private final e:Lcom/flurry/android/FlurryAdSize;

.field private final f:Ljava/lang/Runnable;

.field private g:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Ljava/lang/String;Landroid/view/ViewGroup;ZLcom/flurry/android/FlurryAdSize;Lcom/flurry/android/monolithic/sdk/impl/jf;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/br;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/br;->b:Ljava/lang/String;

    .line 593
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/br;->c:Landroid/view/ViewGroup;

    .line 594
    iput-boolean p4, p0, Lcom/flurry/android/monolithic/sdk/impl/br;->d:Z

    .line 595
    iput-object p5, p0, Lcom/flurry/android/monolithic/sdk/impl/br;->e:Lcom/flurry/android/FlurryAdSize;

    .line 596
    iput-object p6, p0, Lcom/flurry/android/monolithic/sdk/impl/br;->f:Ljava/lang/Runnable;

    .line 597
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/br;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/br;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/android/monolithic/sdk/impl/br;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/br;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/android/monolithic/sdk/impl/br;)Z
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/br;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/flurry/android/monolithic/sdk/impl/br;)Lcom/flurry/android/FlurryAdSize;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/br;->e:Lcom/flurry/android/FlurryAdSize;

    return-object v0
.end method

.method static synthetic e(Lcom/flurry/android/monolithic/sdk/impl/br;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/br;->f:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/flurry/android/monolithic/sdk/impl/br;
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/br;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/bs;

    invoke-direct {v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/bs;-><init>(Lcom/flurry/android/monolithic/sdk/impl/br;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/android/monolithic/sdk/impl/jf;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/br;->g:Ljava/util/concurrent/Future;

    .line 619
    return-object p0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/br;->g:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/br;->g:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 627
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/br;->g:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/br;->g:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 633
    :cond_0
    return-void
.end method
