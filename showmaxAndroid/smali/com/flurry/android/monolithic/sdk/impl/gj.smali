.class public Lcom/flurry/android/monolithic/sdk/impl/gj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gj;->a:Ljava/util/concurrent/ExecutorService;

    .line 15
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gj;->a:Ljava/util/concurrent/ExecutorService;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 20
    iget-object v6, p0, Lcom/flurry/android/monolithic/sdk/impl/gj;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/gk;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/gk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/gj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 21
    return-void
.end method
