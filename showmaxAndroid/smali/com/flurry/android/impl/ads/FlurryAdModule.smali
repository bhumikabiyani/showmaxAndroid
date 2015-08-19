.class public Lcom/flurry/android/impl/ads/FlurryAdModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/cj;
.implements Lcom/flurry/android/monolithic/sdk/impl/ih;
.implements Lcom/flurry/android/monolithic/sdk/impl/jb;


# static fields
.field private static P:Lcom/flurry/android/impl/ads/FlurryAdModule;

.field private static r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static s:Lcom/flurry/android/monolithic/sdk/impl/ae;

.field private static final t:Ljava/lang/String;


# instance fields
.field private A:[B

.field private B:Z

.field private volatile C:Ljava/lang/String;

.field private volatile D:Ljava/lang/String;

.field private E:Lcom/flurry/android/monolithic/sdk/impl/m;

.field private F:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

.field private final G:Lcom/flurry/android/monolithic/sdk/impl/am;

.field private final H:Lcom/flurry/android/monolithic/sdk/impl/co;

.field private I:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/flurry/android/FlurryAdListener;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ljava/lang/CharSequence;

.field private final K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private L:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

.field private M:Lcom/flurry/android/monolithic/sdk/impl/cl;

.field private final N:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final O:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Z

.field private R:Lcom/flurry/android/monolithic/sdk/impl/ch;

.field private S:Ljava/util/Map;
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

.field private T:Lcom/flurry/android/monolithic/sdk/impl/bv;

.field private U:Lcom/flurry/android/monolithic/sdk/impl/bi;

.field private V:Lcom/flurry/android/monolithic/sdk/impl/bw;

.field public volatile a:Lcom/flurry/android/impl/ads/avro/protocol/v6/Location;

.field volatile b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:J

.field d:J

.field e:J

.field public f:Ljava/lang/String;

.field g:Landroid/os/Handler;

.field h:Ljava/util/concurrent/ExecutorService;

.field i:Lcom/flurry/android/monolithic/sdk/impl/ce;

.field public j:Lcom/flurry/android/ICustomAdNetworkHandler;

.field k:I

.field volatile l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/m;",
            ">;"
        }
    .end annotation
.end field

.field volatile m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/m;",
            ">;"
        }
    .end annotation
.end field

.field volatile n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/m;",
            ">;"
        }
    .end annotation
.end field

.field volatile o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field volatile p:Z

.field q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Z

.field private w:Ljava/io/File;

.field private x:Ljava/io/File;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean v4, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->u:Z

    .line 98
    iput-boolean v4, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->v:Z

    .line 99
    iput-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->w:Ljava/io/File;

    .line 100
    iput-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->x:Ljava/io/File;

    .line 103
    iput-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->A:[B

    .line 104
    iput-boolean v4, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->B:Z

    .line 107
    iput-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->C:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->D:Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->I:Ljava/lang/ref/WeakReference;

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->S:Ljava/util/Map;

    .line 180
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a()Lcom/flurry/android/monolithic/sdk/impl/jc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a(Lcom/flurry/android/monolithic/sdk/impl/jb;)V

    .line 181
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ce;->a()Lcom/flurry/android/monolithic/sdk/impl/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->i:Lcom/flurry/android/monolithic/sdk/impl/ce;

    .line 182
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bv;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/bv;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->T:Lcom/flurry/android/monolithic/sdk/impl/bv;

    .line 183
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bw;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/bw;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->V:Lcom/flurry/android/monolithic/sdk/impl/bw;

    .line 185
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->l:Ljava/util/List;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->m:Ljava/util/Map;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->n:Ljava/util/List;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->o:Ljava/util/List;

    .line 189
    iput-boolean v4, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->p:Z

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 193
    const-string v1, "open"

    const-string v2, "directOpen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v1, "expand"

    const-string v2, "doExpand"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "collapse"

    const-string v2, "doCollapse"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->N:Ljava/util/Map;

    .line 199
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 200
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "notifyUser"

    aput-object v2, v1, v4

    const-string v2, "nextFrame"

    aput-object v2, v1, v5

    const-string v2, "closeAd"

    aput-object v2, v1, v6

    const-string v2, "expandAd"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string v3, "collapseAd"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "verifyURL"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 201
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->O:Ljava/util/Set;

    .line 204
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlurryAdThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 206
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->g:Landroid/os/Handler;

    .line 207
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->h:Ljava/util/concurrent/ExecutorService;

    .line 209
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bi;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/bi;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->U:Lcom/flurry/android/monolithic/sdk/impl/bi;

    .line 210
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->r:Ljava/util/List;

    .line 212
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ae;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/ae;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    sput-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->s:Lcom/flurry/android/monolithic/sdk/impl/ae;

    .line 215
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->y:Ljava/lang/String;

    .line 216
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->z:Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->b:Ljava/util/Map;

    .line 220
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bb;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/bb;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->G:Lcom/flurry/android/monolithic/sdk/impl/am;

    .line 221
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/be;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/be;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->H:Lcom/flurry/android/monolithic/sdk/impl/co;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->K:Ljava/util/List;

    .line 224
    return-void
.end method

.method public static synthetic L()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    return-object v0
.end method

.method private M()Lcom/flurry/android/impl/ads/avro/protocol/v6/Location;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 460
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->a:Lcom/flurry/android/impl/ads/avro/protocol/v6/Location;

    .line 461
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 473
    :goto_0
    return-object v0

    .line 467
    :cond_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/in;->a()Lcom/flurry/android/monolithic/sdk/impl/in;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/in;->e()Landroid/location/Location;

    move-result-object v2

    .line 468
    if-eqz v2, :cond_1

    .line 469
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-float v1, v0

    .line 470
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v0, v2

    .line 473
    :goto_1
    invoke-static {}, Lcom/flurry/android/impl/ads/avro/protocol/v6/Location;->b()Lcom/flurry/android/impl/ads/avro/protocol/v6/Location$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/Location$Builder;->a(F)Lcom/flurry/android/impl/ads/avro/protocol/v6/Location$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/Location$Builder;->b(F)Lcom/flurry/android/impl/ads/avro/protocol/v6/Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/Location$Builder;->a()Lcom/flurry/android/impl/ads/avro/protocol/v6/Location;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method private N()Lcom/flurry/android/monolithic/sdk/impl/jd;
    .locals 1

    .prologue
    .line 1623
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a()Lcom/flurry/android/monolithic/sdk/impl/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/jc;->e()Lcom/flurry/android/monolithic/sdk/impl/jd;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/flurry/android/impl/ads/FlurryAdModule;)Lcom/flurry/android/monolithic/sdk/impl/bw;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->V:Lcom/flurry/android/monolithic/sdk/impl/bw;

    return-object v0
.end method

.method public static synthetic a(Lcom/flurry/android/impl/ads/FlurryAdModule;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1627
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 1628
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1629
    return-void
.end method

.method public static e()Z
    .locals 2

    .prologue
    .line 439
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 440
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 441
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;
    .locals 2

    .prologue
    .line 253
    const-class v1, Lcom/flurry/android/impl/ads/FlurryAdModule;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->P:Lcom/flurry/android/impl/ads/FlurryAdModule;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-direct {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;-><init>()V

    sput-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->P:Lcom/flurry/android/impl/ads/FlurryAdModule;

    .line 257
    :cond_0
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->P:Lcom/flurry/android/impl/ads/FlurryAdModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method A()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 958
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 960
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->i:Lcom/flurry/android/monolithic/sdk/impl/ce;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ce;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/cd;

    .line 962
    invoke-static {}, Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo;->b()Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo$Builder;->a(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo$Builder;->b(J)Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo$Builder;->b(I)Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo$Builder;->c(I)Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo$Builder;->d(I)Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->i()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo$Builder;->a(J)Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->c()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo$Builder;->a(I)Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo$Builder;->a()Lcom/flurry/android/impl/ads/avro/protocol/v6/FrequencyCapInfo;

    move-result-object v0

    .line 972
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 975
    :cond_0
    return-object v1
.end method

.method public declared-synchronized B()V
    .locals 4

    .prologue
    .line 1064
    monitor-enter p0

    const/4 v2, 0x0

    .line 1067
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->w:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/iw;->a(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v0

    .line 1068
    if-nez v0, :cond_0

    .line 1085
    :try_start_1
    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1087
    :goto_0
    monitor-exit p0

    return-void

    .line 1073
    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->w:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1074
    :try_start_3
    iget-object v2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->l:Ljava/util/List;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1076
    :try_start_4
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->l:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/l;->a(Ljava/util/List;Ljava/io/DataOutput;)V

    .line 1077
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1085
    :try_start_5
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1064
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1077
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1079
    :catch_0
    move-exception v0

    .line 1081
    :goto_1
    :try_start_8
    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v3, "Error when saving ad log data: "

    invoke-static {v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1085
    :try_start_9
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_2
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 1079
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public declared-synchronized C()V
    .locals 4

    .prologue
    .line 1093
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->w:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    .line 1095
    const/4 v2, 0x0

    .line 1098
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->w:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1099
    :try_start_2
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/l;->a(Ljava/io/DataInput;)Ljava/util/List;

    move-result-object v0

    .line 1100
    iget-object v2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->l:Ljava/util/List;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1102
    :try_start_3
    iget-object v3, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->l:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1103
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1104
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->u:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1112
    :try_start_5
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1117
    :goto_0
    :try_start_6
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->u:Z

    if-nez v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->w:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1120
    if-eqz v0, :cond_1

    .line 1122
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v2, "Deleted persistence adLogs file"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1143
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 1103
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1106
    :catch_0
    move-exception v0

    .line 1108
    :goto_2
    :try_start_9
    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v3, "Error when loading ad log data: "

    invoke-static {v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1112
    :try_start_a
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    .line 1140
    :catch_1
    move-exception v0

    .line 1141
    const/4 v1, 0x6

    :try_start_b
    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v3, "Failed to load AdLogs cache file with exception:"

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    .line 1093
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1112
    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_c
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1126
    :cond_1
    const/4 v0, 0x6

    :try_start_d
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v2, "Cannot delete persistence adLogs file"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_1

    .line 1130
    :catch_2
    move-exception v0

    .line 1132
    :try_start_e
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1137
    :cond_2
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v2, "AdLogs cache file doesn\'t exist."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_1

    .line 1112
    :catchall_3
    move-exception v0

    goto :goto_3

    .line 1106
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public declared-synchronized D()V
    .locals 4

    .prologue
    .line 1147
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->i:Lcom/flurry/android/monolithic/sdk/impl/ce;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ce;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    const/4 v2, 0x0

    .line 1153
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->x:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/iw;->a(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    .line 1154
    if-nez v0, :cond_0

    .line 1174
    :try_start_2
    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1176
    :goto_0
    monitor-exit p0

    return-void

    .line 1159
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->x:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1160
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1162
    :try_start_4
    iget-object v2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->i:Lcom/flurry/android/monolithic/sdk/impl/ce;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1164
    :try_start_5
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->i:Lcom/flurry/android/monolithic/sdk/impl/ce;

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/monolithic/sdk/impl/ce;Ljava/io/DataOutputStream;)V

    .line 1165
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1166
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1174
    :try_start_7
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 1147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1165
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1168
    :catch_0
    move-exception v0

    .line 1170
    :goto_1
    :try_start_a
    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1174
    :try_start_b
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 1168
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public declared-synchronized E()V
    .locals 4

    .prologue
    .line 1180
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v1, "Attempting to load FreqCap data"

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->x:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1185
    const/4 v2, 0x0

    .line 1188
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->x:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1189
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1190
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/io/DataInputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1198
    :try_start_4
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1203
    :goto_0
    :try_start_5
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->v:Z

    if-nez v0, :cond_1

    .line 1205
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->x:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1206
    if-eqz v0, :cond_0

    .line 1208
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v2, "Deleted persistence freqCap file"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1232
    :goto_1
    monitor-exit p0

    return-void

    .line 1192
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1194
    :goto_2
    :try_start_6
    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v3, "Error when loading persistent freqCap file"

    invoke-static {v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1198
    :try_start_7
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 1229
    :catch_1
    move-exception v0

    .line 1230
    const/4 v1, 0x6

    :try_start_8
    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v3, "Failed to load freqCap cache file with exception:"

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 1180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1198
    :catchall_1
    move-exception v0

    :goto_3
    :try_start_9
    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1212
    :cond_0
    const/4 v0, 0x6

    :try_start_a
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v2, "Cannot delete persistence freqCap file"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 1220
    :catch_2
    move-exception v0

    .line 1222
    :try_start_b
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    .line 1217
    :cond_1
    :try_start_c
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->i:Lcom/flurry/android/monolithic/sdk/impl/ce;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ce;->d()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    .line 1227
    :cond_2
    const/4 v0, 0x3

    :try_start_d
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v2, "freqCap file doesn\'t exist."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_1

    .line 1198
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 1192
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public F()Lcom/flurry/android/monolithic/sdk/impl/m;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1284
    invoke-static {p0, v3}, Lcom/flurry/android/monolithic/sdk/impl/ab;->a(Lcom/flurry/android/impl/ads/FlurryAdModule;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/m;

    move-result-object v0

    .line 1285
    const-string v1, "unfilled"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/monolithic/sdk/impl/m;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/m;

    move-result-object v0

    return-object v0
.end method

.method public G()Lcom/flurry/android/monolithic/sdk/impl/m;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->E:Lcom/flurry/android/monolithic/sdk/impl/m;

    return-object v0
.end method

.method public H()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;
    .locals 1

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->F:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    return-object v0
.end method

.method public I()Z
    .locals 1

    .prologue
    .line 1619
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/jc;->a()Lcom/flurry/android/monolithic/sdk/impl/jc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/jc;->c()Z

    move-result v0

    return v0
.end method

.method public J()V
    .locals 1

    .prologue
    .line 1642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->M:Lcom/flurry/android/monolithic/sdk/impl/cl;

    .line 1643
    return-void
.end method

.method public K()Lcom/flurry/android/FlurryAdListener;
    .locals 1

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/FlurryAdListener;

    return-object v0
.end method

.method a(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 649
    if-nez p1, :cond_0

    .line 650
    const/4 v0, 0x0

    .line 653
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "targetIntent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    goto :goto_0
.end method

.method a(Ljava/lang/String;IIIIZLcom/flurry/android/FlurryAdSize;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest;
    .locals 6

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->z()Ljava/util/List;

    move-result-object v0

    .line 982
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->A()Ljava/util/List;

    move-result-object v1

    .line 985
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 986
    iget-object v3, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->J:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->J:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 987
    const-string v3, "FLURRY_VIEWER"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    iget-object v3, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->J:Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 992
    :cond_0
    invoke-static {}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest;->b()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->a(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->c(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v3

    sget-object v4, Lcom/flurry/android/impl/ads/FlurryAdModule;->r:Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->b(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->a(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->M()Lcom/flurry/android/impl/ads/avro/protocol/v6/Location;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->a(Lcom/flurry/android/impl/ads/avro/protocol/v6/Location;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->p:Z

    invoke-virtual {v0, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->a(Z)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getAgentVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->b(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v0

    iget-wide v4, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->c:J

    invoke-virtual {v0, v4, v5}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->a(J)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdViewContainer;->b()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdViewContainer$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdViewContainer$Builder;->d(I)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdViewContainer$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdViewContainer$Builder;->c(I)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdViewContainer$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdViewContainer$Builder;->b(I)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdViewContainer$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdViewContainer$Builder;->a(I)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdViewContainer$Builder;

    move-result-object v3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/je;->a()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdViewContainer$Builder;->a(F)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdViewContainer$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdViewContainer$Builder;->a()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdViewContainer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdViewContainer;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->d(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->e(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->y:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->f(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->z:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->g(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->b(Z)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->N()Lcom/flurry/android/monolithic/sdk/impl/jd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/jd;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->a(I)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->c(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->h(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->d(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest$Builder;->a()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest;

    move-result-object v0

    .line 1020
    if-eqz p6, :cond_3

    .line 1022
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest;->a(Ljava/lang/Boolean;)V

    .line 1029
    :goto_0
    if-eqz p7, :cond_1

    .line 1031
    invoke-static {}, Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds;->b()Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds$Builder;

    move-result-object v1

    invoke-virtual {p7}, Lcom/flurry/android/FlurryAdSize;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds$Builder;->a(I)Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds$Builder;->a()Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest;->a(Lcom/flurry/android/impl/ads/avro/protocol/v6/TestAds;)V

    .line 1034
    :cond_1
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 1036
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->n()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest;->a(Ljava/util/Map;)V

    .line 1039
    :cond_2
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got ad request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1041
    return-object v0

    .line 1026
    :cond_3
    invoke-virtual {v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/an;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->V:Lcom/flurry/android/monolithic/sdk/impl/bw;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/bw;->a(Lcom/flurry/android/impl/ads/FlurryAdModule;Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/an;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/flurry/android/monolithic/sdk/impl/bi;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->U:Lcom/flurry/android/monolithic/sdk/impl/bi;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Lcom/flurry/android/monolithic/sdk/impl/cl;
    .locals 15

    .prologue
    .line 1462
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->L:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 1464
    if-nez p2, :cond_0

    .line 1466
    const/4 v1, 0x0

    .line 1487
    :goto_0
    return-object v1

    .line 1469
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v1

    .line 1470
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1471
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1474
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    .line 1475
    invoke-virtual {v14}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1476
    invoke-virtual {v14}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->d()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1477
    invoke-virtual {v14}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1478
    invoke-virtual {v14}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1479
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->m:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 1480
    if-nez v1, :cond_3

    .line 1481
    invoke-static {p0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ab;->a(Lcom/flurry/android/impl/ads/FlurryAdModule;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/m;

    move-result-object v6

    .line 1484
    :goto_1
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/bh;

    const-string v2, "filled"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/flurry/android/monolithic/sdk/impl/bh;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;I)V

    iget-object v2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->U:Lcom/flurry/android/monolithic/sdk/impl/bi;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/monolithic/sdk/impl/bh;Lcom/flurry/android/monolithic/sdk/impl/ci;I)V

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object v13, v6

    .line 1486
    invoke-virtual/range {v7 .. v14}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;ILjava/lang/String;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;)Lcom/flurry/android/monolithic/sdk/impl/cl;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v6, v1

    goto :goto_1
.end method

.method a(Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;ILjava/lang/String;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;)Lcom/flurry/android/monolithic/sdk/impl/cl;
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x0

    .line 1492
    .line 1493
    invoke-virtual {p7}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->e()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;

    move-result-object v0

    .line 1494
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ab;->a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdSpaceLayout;)Lcom/flurry/android/AdCreative;

    move-result-object v0

    .line 1496
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->L:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->L:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    if-eq v1, p2, :cond_1

    .line 1498
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->M:Lcom/flurry/android/monolithic/sdk/impl/cl;

    .line 1538
    :goto_0
    return-object v0

    .line 1500
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->M:Lcom/flurry/android/monolithic/sdk/impl/cl;

    .line 1502
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->k()Lcom/flurry/android/ICustomAdNetworkHandler;

    move-result-object v1

    .line 1503
    const/4 v2, 0x4

    if-ne p3, v2, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v1, p1, v0, p4}, Lcom/flurry/android/ICustomAdNetworkHandler;->getAdFromNetwork(Landroid/content/Context;Lcom/flurry/android/AdCreative;Ljava/lang/String;)Lcom/flurry/android/AdNetworkView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1505
    invoke-virtual {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/ac;->setPlatformModule(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    .line 1506
    invoke-virtual {v0, p6}, Lcom/flurry/android/monolithic/sdk/impl/ac;->setAdLog(Lcom/flurry/android/monolithic/sdk/impl/m;)V

    .line 1507
    invoke-virtual {v0, v6}, Lcom/flurry/android/monolithic/sdk/impl/ac;->setAdFrameIndex(I)V

    .line 1508
    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/ac;->setAdUnit(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    .line 1509
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/af;

    invoke-direct {v1, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/af;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ac;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    iput-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->M:Lcom/flurry/android/monolithic/sdk/impl/cl;

    .line 1538
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->M:Lcom/flurry/android/monolithic/sdk/impl/cl;

    goto :goto_0

    .line 1511
    :cond_3
    const-string v0, "takeover"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1513
    invoke-virtual {p0, p6}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/android/monolithic/sdk/impl/m;)V

    .line 1514
    invoke-virtual {p0, p2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    .line 1515
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->H:Lcom/flurry/android/monolithic/sdk/impl/co;

    invoke-interface {v0, p1, p0, p6, p2}, Lcom/flurry/android/monolithic/sdk/impl/co;->a_(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Lcom/flurry/android/monolithic/sdk/impl/cn;

    move-result-object v0

    .line 1516
    if-eqz v0, :cond_2

    .line 1518
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v2, "prepareAd:first frame of AdUnit is a takeover"

    invoke-static {v3, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1519
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/cm;

    invoke-direct {v1, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/cm;-><init>(Lcom/flurry/android/monolithic/sdk/impl/cn;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    iput-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->M:Lcom/flurry/android/monolithic/sdk/impl/cl;

    goto :goto_1

    .line 1524
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->G:Lcom/flurry/android/monolithic/sdk/impl/am;

    invoke-interface {v0, p1, p0, p6, p2}, Lcom/flurry/android/monolithic/sdk/impl/am;->a(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Lcom/flurry/android/monolithic/sdk/impl/ac;

    move-result-object v0

    .line 1525
    if-eqz v0, :cond_5

    .line 1527
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v2, "prepareAd: first frame of AdUnit is a banner"

    invoke-static {v3, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1528
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/af;

    invoke-direct {v1, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/af;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ac;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    iput-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->M:Lcom/flurry/android/monolithic/sdk/impl/cl;

    goto :goto_1

    .line 1532
    :cond_5
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create view for ad network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", network is unsupported on Android, or no ICustomAdNetworkHandler was registered or it failed to return a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1534
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bh;

    const-string v1, "renderFailed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/bh;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;I)V

    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->U:Lcom/flurry/android/monolithic/sdk/impl/bi;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/monolithic/sdk/impl/bh;Lcom/flurry/android/monolithic/sdk/impl/ci;I)V

    goto :goto_1
.end method

.method declared-synchronized a(Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/k;"
        }
    .end annotation

    .prologue
    .line 1290
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/k;

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->i()J

    move-result-wide v4

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/k;-><init>(Ljava/lang/String;ZJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/flurry/android/monolithic/sdk/impl/m;Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/m;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/m;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/m;"
        }
    .end annotation

    .prologue
    .line 1268
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeAdState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1269
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1271
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1274
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeAdState added adLog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1276
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;ZLjava/util/Map;)Lcom/flurry/android/monolithic/sdk/impl/k;

    move-result-object v0

    .line 1277
    invoke-virtual {p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/m;->a(Lcom/flurry/android/monolithic/sdk/impl/k;)V

    .line 1278
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1279
    monitor-exit p0

    return-object p1

    .line 1278
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1268
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;Lcom/flurry/android/monolithic/sdk/impl/bh;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;",
            "Lcom/flurry/android/monolithic/sdk/impl/bh;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1315
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1316
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->f()Ljava/util/List;

    move-result-object v0

    .line 1317
    iget-object v3, p2, Lcom/flurry/android/monolithic/sdk/impl/bh;->a:Ljava/lang/String;

    .line 1320
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/Callback;

    .line 1322
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/Callback;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1323
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1326
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/Callback;->c()Ljava/util/List;

    move-result-object v0

    .line 1327
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1329
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1330
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1331
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 1333
    const/4 v1, -0x1

    if-eq v7, v1, :cond_2

    .line 1335
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1336
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1338
    const-string v7, "%{eventParams}"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1340
    const-string v7, "%{eventParams}"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1341
    iget-object v7, p2, Lcom/flurry/android/monolithic/sdk/impl/bh;->b:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1344
    :cond_1
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/je;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v0, v1

    .line 1350
    :cond_2
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/i;

    invoke-direct {v1, v0, v6, p2}, Lcom/flurry/android/monolithic/sdk/impl/i;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/monolithic/sdk/impl/bh;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1355
    :cond_3
    return-object v2
.end method

.method public a(Ljava/lang/String;Landroid/view/ViewGroup;ZLcom/flurry/android/FlurryAdSize;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/ViewGroup;",
            "Z",
            "Lcom/flurry/android/FlurryAdSize;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->i:Lcom/flurry/android/monolithic/sdk/impl/ce;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ce;->d()V

    .line 1556
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_8

    .line 1558
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/je;->h()Landroid/util/Pair;

    move-result-object v1

    .line 1559
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1560
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1562
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/je;->g()Landroid/util/Pair;

    move-result-object v1

    .line 1564
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1565
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1567
    sget-object v0, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    invoke-virtual {p4, v0}, Lcom/flurry/android/FlurryAdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/android/FlurryAdSize;->BANNER_TOP:Lcom/flurry/android/FlurryAdSize;

    invoke-virtual {p4, v0}, Lcom/flurry/android/FlurryAdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1569
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 1571
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(I)I

    move-result v3

    .line 1573
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    .line 1575
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(I)I

    move-result v2

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move v6, p3

    move-object v7, p4

    .line 1580
    invoke-virtual/range {v0 .. v7}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;IIIIZLcom/flurry/android/FlurryAdSize;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest;

    move-result-object v0

    .line 1581
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->T:Lcom/flurry/android/monolithic/sdk/impl/bv;

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/bv;->a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest;Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdResponse;

    move-result-object v0

    .line 1583
    if-nez v0, :cond_3

    .line 1585
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1608
    :goto_0
    return-object v0

    .line 1588
    :cond_3
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got ad response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1590
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdResponse;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1592
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v2, "Ad server responded with the following error(s):"

    invoke-static {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdResponse;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1595
    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1597
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1599
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdResponse;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdResponse;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 1601
    :cond_6
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v1, "Ad server responded but sent no ad units."

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1604
    :cond_7
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdResponse;->b()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1608
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public a(FF)V
    .locals 1

    .prologue
    .line 511
    invoke-static {}, Lcom/flurry/android/impl/ads/avro/protocol/v6/Location;->b()Lcom/flurry/android/impl/ads/avro/protocol/v6/Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/Location$Builder;->a(F)Lcom/flurry/android/impl/ads/avro/protocol/v6/Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flurry/android/impl/ads/avro/protocol/v6/Location$Builder;->b(F)Lcom/flurry/android/impl/ads/avro/protocol/v6/Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/Location$Builder;->a()Lcom/flurry/android/impl/ads/avro/protocol/v6/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->a:Lcom/flurry/android/impl/ads/avro/protocol/v6/Location;

    .line 512
    return-void
.end method

.method a(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 361
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->K:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 364
    const/4 v1, 0x0

    .line 366
    instance-of v4, v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    if-eqz v4, :cond_5

    move-object v1, v0

    .line 368
    check-cast v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    .line 369
    invoke-virtual {v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-result-object v4

    .line 370
    invoke-virtual {v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getAdUnityView()Lcom/flurry/android/monolithic/sdk/impl/o;

    move-result-object v1

    .line 371
    if-eqz v1, :cond_4

    .line 373
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->getAdFrameIndex()I

    move-result v1

    .line 376
    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->e()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_0

    if-lez v1, :cond_2

    .line 382
    :cond_0
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    if-eqz v1, :cond_1

    .line 384
    check-cast p1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    .line 385
    invoke-virtual {p1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getResult()Lcom/flurry/android/monolithic/sdk/impl/ay;

    move-result-object v1

    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/ay;->b:Lcom/flurry/android/monolithic/sdk/impl/ay;

    if-eq v1, v4, :cond_3

    move v1, v2

    :goto_1
    move v2, v1

    .line 388
    :cond_1
    if-eqz v2, :cond_2

    .line 390
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 394
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 385
    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_0

    :cond_5
    move-object v4, v1

    move v1, v3

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 397
    if-nez p1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->K:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 404
    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 405
    invoke-virtual {p0, p1, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/FlurryAdListener;

    .line 410
    if-eqz v0, :cond_0

    .line 412
    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->onApplicationExit(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->Q:Z

    if-nez v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->w:Ljava/io/File;

    .line 272
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->x:Ljava/io/File;

    .line 274
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->U:Lcom/flurry/android/monolithic/sdk/impl/bi;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a()V

    .line 277
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/im;->a()[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->A:[B

    .line 279
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bn;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/bn;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/android/monolithic/sdk/impl/jf;)Ljava/util/concurrent/Future;

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->Q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_0
    monitor-exit p0

    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;JJ)V
    .locals 2

    .prologue
    .line 296
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ch;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/ch;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->R:Lcom/flurry/android/monolithic/sdk/impl/ch;

    .line 297
    iput-wide p2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->c:J

    .line 298
    iput-wide p4, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->d:J

    .line 299
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->e:J

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->B:Z

    .line 301
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/cl;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1637
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->m:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 1638
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bh;

    const-string v1, "requested"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p3}, Lcom/flurry/android/monolithic/sdk/impl/cl;->b()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-result-object v4

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/bh;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;I)V

    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->U:Lcom/flurry/android/monolithic/sdk/impl/bi;

    invoke-virtual {p0, v0, v1, v6}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/monolithic/sdk/impl/bh;Lcom/flurry/android/monolithic/sdk/impl/ci;I)V

    .line 1639
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:I

    .line 331
    const/4 v0, 0x1

    iget v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:I

    if-ne v0, v1, :cond_0

    .line 332
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/FlurryAdListener;

    .line 333
    if-eqz v0, :cond_0

    .line 335
    invoke-interface {v0, p2}, Lcom/flurry/android/FlurryAdListener;->onAdOpened(Ljava/lang/String;)V

    .line 338
    :cond_0
    return-void
.end method

.method public a(Lcom/flurry/android/FlurryAdListener;)V
    .locals 1

    .prologue
    .line 507
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->I:Ljava/lang/ref/WeakReference;

    .line 508
    return-void
.end method

.method public a(Lcom/flurry/android/ICustomAdNetworkHandler;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->j:Lcom/flurry/android/ICustomAdNetworkHandler;

    .line 520
    return-void
.end method

.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V
    .locals 0

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->F:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 1306
    return-void
.end method

.method declared-synchronized a(Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogResponse;)V
    .locals 3

    .prologue
    .line 839
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogResponse;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->l:Ljava/util/List;

    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 842
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v2, "removed reported AdLogs"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 844
    :cond_0
    monitor-exit p0

    return-void

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/bh;Lcom/flurry/android/monolithic/sdk/impl/ci;I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1361
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEvent:event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/flurry/android/monolithic/sdk/impl/bh;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",params="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/flurry/android/monolithic/sdk/impl/bh;->b:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1363
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/bh;->a()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdFrame;Lcom/flurry/android/monolithic/sdk/impl/bh;)Ljava/util/List;

    move-result-object v3

    .line 1366
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1367
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->N:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1369
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p1, Lcom/flurry/android/monolithic/sdk/impl/bh;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1371
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/i;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p1, Lcom/flurry/android/monolithic/sdk/impl/bh;->b:Ljava/util/Map;

    invoke-direct {v1, v0, v5, p1}, Lcom/flurry/android/monolithic/sdk/impl/i;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/monolithic/sdk/impl/bh;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1378
    :cond_1
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/bh;->a:Ljava/lang/String;

    const-string v1, "adWillClose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1381
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/i;

    .line 1383
    iget-object v4, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->O:Ljava/util/Set;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/i;->a:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1385
    const/4 v0, 0x1

    .line 1389
    :goto_1
    if-nez v0, :cond_3

    .line 1391
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/i;

    const-string v1, "closeAd"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v4, p1}, Lcom/flurry/android/monolithic/sdk/impl/i;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/monolithic/sdk/impl/bh;)V

    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1395
    :cond_3
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/bh;->a:Ljava/lang/String;

    const-string v1, "renderFailed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1397
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/FlurryAdListener;

    .line 1398
    if-eqz v0, :cond_4

    .line 1400
    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/bh;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->onRenderFailed(Ljava/lang/String;)V

    .line 1404
    :cond_4
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/bh;->a:Ljava/lang/String;

    const-string v1, "clicked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1406
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/FlurryAdListener;

    .line 1407
    if-eqz v0, :cond_5

    .line 1409
    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/bh;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->onAdClicked(Ljava/lang/String;)V

    .line 1412
    :cond_5
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/bh;->a:Ljava/lang/String;

    const-string v1, "videoCompleted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1414
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/FlurryAdListener;

    .line 1415
    if-eqz v0, :cond_6

    .line 1417
    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/bh;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryAdListener;->onVideoCompleted(Ljava/lang/String;)V

    .line 1422
    :cond_6
    const/4 v1, 0x0

    .line 1424
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/flurry/android/monolithic/sdk/impl/i;

    .line 1426
    iget-object v0, v2, Lcom/flurry/android/monolithic/sdk/impl/i;->a:Ljava/lang/String;

    const-string v3, "logEvent"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1429
    iget-object v0, v2, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    const-string v1, "__sendToServer"

    const-string v3, "true"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .line 1432
    :goto_3
    iget-object v0, v2, Lcom/flurry/android/monolithic/sdk/impl/i;->a:Ljava/lang/String;

    const-string v1, "loadAdComponents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1434
    iget-object v0, v2, Lcom/flurry/android/monolithic/sdk/impl/i;->c:Lcom/flurry/android/monolithic/sdk/impl/bh;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/bh;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1435
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1436
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1437
    iget-object v6, v2, Lcom/flurry/android/monolithic/sdk/impl/i;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1440
    :cond_7
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p2, v2, p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ci;->a(Lcom/flurry/android/monolithic/sdk/impl/i;Lcom/flurry/android/monolithic/sdk/impl/cj;I)V

    move-object v1, v3

    goto :goto_2

    .line 1444
    :cond_8
    if-nez v1, :cond_9

    .line 1446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1447
    const-string v1, "__sendToServer"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/i;

    const-string v2, "logEvent"

    invoke-direct {v1, v2, v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/i;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/monolithic/sdk/impl/bh;)V

    .line 1449
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p2, v1, p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ci;->a(Lcom/flurry/android/monolithic/sdk/impl/i;Lcom/flurry/android/monolithic/sdk/impl/cj;I)V

    .line 1450
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    :cond_9
    return-void

    :cond_a
    move-object v3, v1

    goto :goto_3

    :cond_b
    move v0, v2

    goto/16 :goto_1
.end method

.method declared-synchronized a(Lcom/flurry/android/monolithic/sdk/impl/ce;Ljava/io/DataOutputStream;)V
    .locals 5

    .prologue
    .line 1254
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ce;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/cd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 1259
    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/cd;->a(Ljava/io/DataOutput;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1260
    :catch_0
    move-exception v2

    .line 1261
    :try_start_2
    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to convert freqCap to byte[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/cd;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1264
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/jf;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->g:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    return-void
.end method

.method public declared-synchronized a(Lcom/flurry/android/monolithic/sdk/impl/m;)V
    .locals 2

    .prologue
    .line 570
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x7fff

    if-ge v0, v1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->m:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    :cond_0
    monitor-exit p0

    return-void

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/io/DataInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1238
    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    .line 1239
    if-nez v0, :cond_0

    .line 1249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1250
    monitor-exit p0

    return-void

    .line 1243
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->i:Lcom/flurry/android/monolithic/sdk/impl/ce;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1245
    :try_start_2
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->i:Lcom/flurry/android/monolithic/sdk/impl/ce;

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/cd;

    invoke-direct {v2, p1}, Lcom/flurry/android/monolithic/sdk/impl/cd;-><init>(Ljava/io/DataInput;)V

    invoke-virtual {v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ce;->a(Lcom/flurry/android/monolithic/sdk/impl/cd;)V

    .line 1246
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1238
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->C:Ljava/lang/String;

    .line 679
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 525
    iput-object p2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->J:Ljava/lang/CharSequence;

    .line 528
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->V:Lcom/flurry/android/monolithic/sdk/impl/bw;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/bw;->f(Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->n:Ljava/util/List;

    .line 503
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ie;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 497
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->S:Ljava/util/Map;

    .line 498
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 688
    iput-boolean p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->p:Z

    .line 689
    return-void
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/bw;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->V:Lcom/flurry/android/monolithic/sdk/impl/bw;

    return-object v0
.end method

.method b(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    if-nez p1, :cond_0

    .line 658
    const/4 v0, 0x0

    .line 661
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "adSpaceName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/jf;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/jf;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->h:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 418
    if-nez p1, :cond_0

    .line 430
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 423
    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-virtual {p0, p1, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->K:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 429
    invoke-virtual {p0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->i:Lcom/flurry/android/monolithic/sdk/impl/ce;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ce;->d()V

    .line 306
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:I

    .line 342
    iget v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:I

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->I:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/FlurryAdListener;

    .line 344
    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0, p2}, Lcom/flurry/android/FlurryAdListener;->onAdClosed(Ljava/lang/String;)V

    .line 349
    :cond_0
    return-void
.end method

.method b(Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1047
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got ad log response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogResponse;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1051
    invoke-virtual {p0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogResponse;)V

    .line 1060
    :cond_0
    return-void

    .line 1055
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogResponse;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1057
    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/flurry/android/monolithic/sdk/impl/m;)V
    .locals 0

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->E:Lcom/flurry/android/monolithic/sdk/impl/m;

    .line 1296
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->D:Ljava/lang/String;

    .line 685
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 774
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 776
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 778
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 779
    iget-object v2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 781
    :cond_0
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v2, "User cookie keys and values may not be null."

    invoke-static {v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 784
    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 1616
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 310
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bo;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/bo;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/monolithic/sdk/impl/jf;)V

    .line 320
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->Q:Z

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->w()V

    .line 323
    :cond_0
    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 808
    iput-object p1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/util/Map;

    .line 809
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->k:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 434
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->c:J

    return-wide v0
.end method

.method public d(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->V:Lcom/flurry/android/monolithic/sdk/impl/bw;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/bw;->a(Landroid/content/Context;)Z

    .line 327
    return-void
.end method

.method public declared-synchronized e(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 848
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->B:Z

    if-nez v0, :cond_0

    .line 850
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v1, "Initializing ads -- requesting ads with precaching enabled on the server"

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/br;

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/br;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;Ljava/lang/String;Landroid/view/ViewGroup;ZLcom/flurry/android/FlurryAdSize;Lcom/flurry/android/monolithic/sdk/impl/jf;)V

    .line 852
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/br;->a()Lcom/flurry/android/monolithic/sdk/impl/br;

    .line 853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    :goto_0
    monitor-exit p0

    return-void

    .line 857
    :cond_0
    :try_start_1
    sget-object v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v1, "Initializing ads -- not making a new ad request (for ads with precaching enabled on the server) since one was made already this session"

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 848
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/eg;->a()Lcom/flurry/android/monolithic/sdk/impl/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1651
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/bt;->a()Lcom/flurry/android/monolithic/sdk/impl/bt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/bt;->f(Landroid/content/Context;)V

    .line 1652
    return-void
.end method

.method g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/eg;->a()Lcom/flurry/android/monolithic/sdk/impl/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1656
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/bt;->a()Lcom/flurry/android/monolithic/sdk/impl/bt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/bt;->g(Landroid/content/Context;)V

    .line 1657
    return-void
.end method

.method h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/eg;->a()Lcom/flurry/android/monolithic/sdk/impl/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized i()J
    .locals 4

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->d:J

    sub-long/2addr v0, v2

    .line 480
    iget-wide v2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->e:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->e:J

    .line 482
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 480
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->a:Lcom/flurry/android/impl/ads/avro/protocol/v6/Location;

    .line 516
    return-void
.end method

.method public k()Lcom/flurry/android/ICustomAdNetworkHandler;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->j:Lcom/flurry/android/ICustomAdNetworkHandler;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->f:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ie;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->S:Ljava/util/Map;

    return-object v0
.end method

.method n()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 554
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 555
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 557
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 558
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 559
    if-nez v1, :cond_0

    .line 560
    const-string v1, ""

    .line 561
    :cond_0
    if-nez v0, :cond_1

    .line 562
    const-string v0, ""

    .line 563
    :cond_1
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 565
    :cond_2
    return-object v2
.end method

.method o()Ljava/lang/String;
    .locals 3

    .prologue
    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryadlog."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method p()Ljava/lang/String;
    .locals 3

    .prologue
    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryfreqcap."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->C:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/v6/getAds.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    :goto_0
    return-object v0

    .line 701
    :cond_0
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getUseHttps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    const-string v0, "https://ads.flurry.com/v6/getAds.do"

    goto :goto_0

    .line 707
    :cond_1
    const-string v0, "http://ads.flurry.com/v6/getAds.do"

    goto :goto_0
.end method

.method r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->D:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->D:Ljava/lang/String;

    .line 762
    :goto_0
    return-object v0

    .line 754
    :cond_0
    invoke-static {}, Lcom/flurry/android/FlurryAgent;->getUseHttps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    const-string v0, "https://adlog.flurry.com"

    goto :goto_0

    .line 760
    :cond_1
    const-string v0, "http://adlog.flurry.com"

    goto :goto_0
.end method

.method public s()V
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 799
    return-void
.end method

.method public t()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 804
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->b:Ljava/util/Map;

    return-object v0
.end method

.method public u()V
    .locals 1

    .prologue
    .line 816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->q:Ljava/util/Map;

    .line 817
    return-void
.end method

.method public v()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->t()Ljava/util/Map;

    move-result-object v0

    .line 825
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->R:Lcom/flurry/android/monolithic/sdk/impl/ch;

    if-eqz v1, :cond_0

    .line 827
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->R:Lcom/flurry/android/monolithic/sdk/impl/ch;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ch;->a()Ljava/lang/String;

    move-result-object v1

    .line 828
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 830
    const-string v2, "appCloudUserId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :cond_0
    return-object v0
.end method

.method public declared-synchronized w()V
    .locals 1

    .prologue
    .line 865
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bp;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/bp;-><init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/android/monolithic/sdk/impl/jf;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    monitor-exit p0

    return-void

    .line 865
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public x()V
    .locals 4

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->y()Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;

    move-result-object v0

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/postAdLog.do"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 888
    iget-object v2, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->T:Lcom/flurry/android/monolithic/sdk/impl/bv;

    invoke-virtual {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/bv;->a(Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogResponse;

    move-result-object v0

    .line 889
    if-eqz v0, :cond_0

    .line 891
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 892
    :catch_0
    move-exception v0

    .line 893
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v3, "Error in generateAndSendAdLogRequest: "

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method y()Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 901
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->z()Ljava/util/List;

    move-result-object v0

    .line 904
    iget-object v1, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->l:Ljava/util/List;

    monitor-enter v1

    .line 906
    :try_start_0
    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->s:Lcom/flurry/android/monolithic/sdk/impl/ae;

    iget-object v3, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->l:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ae;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 907
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 909
    const/4 v0, 0x3

    sget-object v2, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v3, "List of adLogs is empty"

    invoke-static {v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 910
    const/4 v0, 0x0

    monitor-exit v1

    .line 925
    :goto_0
    return-object v0

    .line 912
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    invoke-static {}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;->b()Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest$Builder;->a(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest$Builder;->a(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest$Builder;->b(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest$Builder;->a(Z)Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest$Builder;->a(J)Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest$Builder;->a()Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;

    move-result-object v0

    .line 923
    sget-object v1, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got ad log request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 912
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method z()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 931
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 932
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 933
    invoke-static {}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId;->b()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId$Builder;->a(Ljava/nio/ByteBuffer;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId$Builder;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/eg;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId$Builder;->a(I)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId$Builder;->a()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId;

    move-result-object v0

    .line 934
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    iget-object v0, p0, Lcom/flurry/android/impl/ads/FlurryAdModule;->A:[B

    .line 938
    if-eqz v0, :cond_0

    .line 940
    const/4 v1, 0x3

    sget-object v3, Lcom/flurry/android/impl/ads/FlurryAdModule;->t:Ljava/lang/String;

    const-string v4, "Fetched hashed IMEI"

    invoke-static {v1, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 942
    invoke-static {}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId;->b()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId$Builder;->a(Ljava/nio/ByteBuffer;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId$Builder;

    move-result-object v0

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ie;->b:Lcom/flurry/android/monolithic/sdk/impl/ie;

    iget v1, v1, Lcom/flurry/android/monolithic/sdk/impl/ie;->c:I

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId$Builder;->a(I)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId$Builder;->a()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId;

    move-result-object v0

    .line 943
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->m()Ljava/util/Map;

    move-result-object v0

    .line 948
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 950
    invoke-static {}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId;->b()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId$Builder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId$Builder;->a(Ljava/nio/ByteBuffer;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ie;

    iget v0, v0, Lcom/flurry/android/monolithic/sdk/impl/ie;->c:I

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId$Builder;->a(I)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId$Builder;->a()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdReportedId;

    move-result-object v0

    .line 951
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 953
    :cond_1
    return-object v2
.end method
