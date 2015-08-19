.class public Lcom/showmax/lib/api/io/eventbus/EventBus;
.super Lcom/squareup/otto/Bus;
.source "EventBus.java"


# static fields
.field private static sInstance:Lcom/showmax/lib/api/io/eventbus/EventBus;


# instance fields
.field private final mainThread:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/squareup/otto/Bus;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/showmax/lib/api/io/eventbus/EventBus;->mainThread:Landroid/os/Handler;

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/showmax/lib/api/io/eventbus/EventBus;->sInstance:Lcom/showmax/lib/api/io/eventbus/EventBus;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/showmax/lib/api/io/eventbus/EventBus;

    invoke-direct {v0}, Lcom/showmax/lib/api/io/eventbus/EventBus;-><init>()V

    sput-object v0, Lcom/showmax/lib/api/io/eventbus/EventBus;->sInstance:Lcom/showmax/lib/api/io/eventbus/EventBus;

    .line 30
    :cond_0
    sget-object v0, Lcom/showmax/lib/api/io/eventbus/EventBus;->sInstance:Lcom/showmax/lib/api/io/eventbus/EventBus;

    return-object v0
.end method


# virtual methods
.method public post(Ljava/lang/Object;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    .line 36
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 39
    invoke-super {p0, p1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 53
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/showmax/lib/api/io/eventbus/EventBus;->mainThread:Landroid/os/Handler;

    new-instance v1, Lcom/showmax/lib/api/io/eventbus/EventBus$1;

    invoke-direct {v1, p0, p1}, Lcom/showmax/lib/api/io/eventbus/EventBus$1;-><init>(Lcom/showmax/lib/api/io/eventbus/EventBus;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public post(Ljava/lang/Object;J)V
    .locals 2
    .param p1, "event"    # Ljava/lang/Object;
    .param p2, "delayMs"    # J

    .prologue
    .line 57
    iget-object v0, p0, Lcom/showmax/lib/api/io/eventbus/EventBus;->mainThread:Landroid/os/Handler;

    new-instance v1, Lcom/showmax/lib/api/io/eventbus/EventBus$2;

    invoke-direct {v1, p0, p1}, Lcom/showmax/lib/api/io/eventbus/EventBus$2;-><init>(Lcom/showmax/lib/api/io/eventbus/EventBus;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    return-void
.end method
