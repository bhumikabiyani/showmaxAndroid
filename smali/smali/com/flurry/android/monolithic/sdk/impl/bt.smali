.class public Lcom/flurry/android/monolithic/sdk/impl/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/ih;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/flurry/android/monolithic/sdk/impl/bt;


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:J

.field private f:J

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ie;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Z

.field private volatile i:Z

.field private j:Lcom/flurry/android/impl/ads/FlurryAdModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/bt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/bt;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->a:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->g:Ljava/util/Map;

    .line 42
    iput-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->h:Z

    .line 43
    iput-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->i:Z

    .line 47
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/is;->a()Lcom/flurry/android/monolithic/sdk/impl/is;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/is;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 48
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->j:Lcom/flurry/android/impl/ads/FlurryAdModule;

    .line 49
    return-void
.end method

.method public static a()Lcom/flurry/android/monolithic/sdk/impl/bt;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/bt;->c:Lcom/flurry/android/monolithic/sdk/impl/bt;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bt;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/bt;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/bt;->c:Lcom/flurry/android/monolithic/sdk/impl/bt;

    .line 56
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/bt;->c:Lcom/flurry/android/monolithic/sdk/impl/bt;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/bt;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/bt;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->i:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/bt;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/android/monolithic/sdk/impl/bt;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/flurry/android/monolithic/sdk/impl/bt;)Lcom/flurry/android/impl/ads/FlurryAdModule;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->j:Lcom/flurry/android/impl/ads/FlurryAdModule;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 153
    return-void
.end method


# virtual methods
.method public f(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 61
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a()Lcom/flurry/android/monolithic/sdk/impl/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/jc;->b()V

    .line 62
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/in;->a()Lcom/flurry/android/monolithic/sdk/impl/in;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/in;->b()V

    .line 63
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/in;->a()Lcom/flurry/android/monolithic/sdk/impl/in;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/in;->c()V

    .line 64
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 65
    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bt;->b:Ljava/lang/String;

    const-string v2, "onStartSession called with duplicate context, use a specific Activity or Service as context instead of using a global context"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->h:Z

    if-nez v0, :cond_1

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 73
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ib;->a()Lcom/flurry/android/monolithic/sdk/impl/ic;

    move-result-object v0

    const-string v1, "ContinueSessionMillis"

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 75
    iget-wide v4, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->f:J

    sub-long v4, v2, v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    .line 77
    iput-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->e:J

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->d:J

    .line 80
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->j:Lcom/flurry/android/impl/ads/FlurryAdModule;

    iget-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->d:J

    iget-wide v4, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->e:J

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/content/Context;JJ)V

    .line 83
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->j:Lcom/flurry/android/impl/ads/FlurryAdModule;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/bu;

    invoke-direct {v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/bu;-><init>(Lcom/flurry/android/monolithic/sdk/impl/bt;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/monolithic/sdk/impl/jf;)V

    .line 110
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->h:Z

    .line 112
    :cond_1
    return-void

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->j:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public g(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 117
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/in;->a()Lcom/flurry/android/monolithic/sdk/impl/in;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/in;->d()V

    .line 119
    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 121
    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bt;->b:Ljava/lang/String;

    const-string v2, "onEndSession called without context from corresponding onStartSession"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->h:Z

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->j:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->d(Landroid/content/Context;)V

    .line 131
    :cond_1
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 133
    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->f:J

    .line 135
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->j:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->c(Landroid/content/Context;)V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bt;->h:Z

    .line 140
    :cond_2
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/bt;->c()V

    .line 149
    return-void
.end method
