.class public Lcom/flurry/android/monolithic/sdk/impl/fb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/fj;
.implements Lcom/flurry/android/monolithic/sdk/impl/id;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static c:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private A:J

.field private B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/eh;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ek;",
            ">;"
        }
    .end annotation
.end field

.field private D:Z

.field private E:I

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ej;",
            ">;"
        }
    .end annotation
.end field

.field private G:I

.field private H:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private I:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final J:Landroid/os/Handler;

.field private K:Lcom/flurry/android/monolithic/sdk/impl/fh;

.field private L:Lcom/flurry/android/monolithic/sdk/impl/ff;

.field private M:I

.field private N:Z

.field private d:Ljava/io/File;

.field private e:Ljava/io/File;

.field private volatile f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ez;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
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

.field private k:Z

.field private l:J

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/monolithic/sdk/impl/ez;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:B

.field private v:I

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:B

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/fb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/fb;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/fb;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/ff;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->d:Ljava/io/File;

    .line 82
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->e:Ljava/io/File;

    .line 85
    iput-boolean v3, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->f:Z

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->j:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->m:Ljava/util/List;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->s:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->t:Ljava/lang/String;

    .line 107
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->u:B

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->B:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->C:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->F:Ljava/util/List;

    .line 132
    iput-boolean v3, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->N:Z

    .line 166
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v2, "Initializing new Flurry session"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FlurryAgentSession_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 171
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->J:Landroid/os/Handler;

    .line 173
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->s()V

    .line 175
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/fh;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/fh;-><init>(Lcom/flurry/android/monolithic/sdk/impl/fj;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->K:Lcom/flurry/android/monolithic/sdk/impl/fh;

    .line 176
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->L:Lcom/flurry/android/monolithic/sdk/impl/ff;

    .line 178
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->g:Ljava/lang/String;

    .line 179
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->d:Ljava/io/File;

    .line 180
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->e:Ljava/io/File;

    .line 182
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ir;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->h:Ljava/lang/String;

    .line 185
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->q:J

    .line 186
    iput v3, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->v:I

    .line 187
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->t:Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->s:Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->B:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->C:Ljava/util/List;

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->D:Z

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->F:Ljava/util/List;

    .line 193
    iput v3, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->E:I

    .line 194
    iput v3, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->G:I

    .line 195
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/fb;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 196
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/fb;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 198
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->o()V

    .line 199
    return-void
.end method

.method private A()Landroid/location/Location;
    .locals 1

    .prologue
    .line 769
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/eg;->a()Lcom/flurry/android/monolithic/sdk/impl/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->j()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/fb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->n:Ljava/lang/String;

    return-object p1
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ek;

    .line 371
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ek;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ek;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 372
    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ek;->a(J)V

    goto :goto_0

    .line 375
    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 305
    :try_start_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/im;->a()[B

    move-result-object v0

    .line 307
    if-eqz v0, :cond_0

    .line 308
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v3, "Fetched hashed IMEI"

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->j:Ljava/util/Map;

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/ie;->b:Lcom/flurry/android/monolithic/sdk/impl/ie;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_0
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/fb;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->d(Landroid/content/Context;)V

    return-void
.end method

.method private a([B)V
    .locals 3

    .prologue
    .line 624
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/eg;->a()Lcom/flurry/android/monolithic/sdk/impl/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->k()Lcom/flurry/android/monolithic/sdk/impl/em;

    move-result-object v0

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/eg;->a()Lcom/flurry/android/monolithic/sdk/impl/eg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/eg;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 626
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->g:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/em;->a([BLjava/lang/String;Ljava/lang/String;)V

    .line 627
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/fb;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/flurry/android/monolithic/sdk/impl/fb;)Lcom/flurry/android/monolithic/sdk/impl/ez;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->u()Lcom/flurry/android/monolithic/sdk/impl/ez;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 400
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 402
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    if-eqz v0, :cond_0

    .line 404
    :try_start_2
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->c(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 409
    :cond_0
    :goto_1
    return-void

    .line 401
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 402
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/flurry/android/monolithic/sdk/impl/fb;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c(Lcom/flurry/android/monolithic/sdk/impl/fb;)Ljava/util/List;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->m:Ljava/util/List;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 15

    .prologue
    .line 594
    const/4 v0, 0x3

    :try_start_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v2, "generating agent report"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 596
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/el;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->z()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->k:Z

    iget-wide v6, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->l:J

    iget-wide v8, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->o:J

    iget-object v10, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->m:Ljava/util/List;

    iget-object v11, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->e:Ljava/io/File;

    iget-object v12, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->j:Ljava/util/Map;

    iget-object v13, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->H:Ljava/util/Map;

    iget-object v14, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->I:Ljava/util/Map;

    invoke-direct/range {v1 .. v14}, Lcom/flurry/android/monolithic/sdk/impl/el;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/util/List;Ljava/io/File;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 601
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->m:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->i:Ljava/util/List;

    .line 603
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/el;->a()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
    const/4 v0, 0x3

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generated report of size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/el;->a()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reports."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/el;->a()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a([B)V

    .line 610
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->i:Ljava/util/List;

    .line 614
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->v()V

    .line 621
    :goto_0
    return-void

    .line 616
    :cond_0
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v2, "Error generating report"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/flurry/android/monolithic/sdk/impl/fb;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->b(Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized d(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 660
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 661
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loading persistent data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    const/4 v2, 0x0

    .line 666
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->d:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 667
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 670
    :try_start_2
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/fg;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/fg;-><init>()V

    .line 671
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/fg;->a(Ljava/io/DataInputStream;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->f:Z

    .line 673
    iget-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->f:Z

    if-eqz v2, :cond_0

    .line 674
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/fg;->a()Z

    move-result v2

    iput-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->k:Z

    .line 675
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/fg;->c()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->l:J

    .line 676
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/fg;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->m:Ljava/util/List;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 686
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 690
    :goto_1
    :try_start_4
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->f:Z

    if-nez v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 692
    if-eqz v0, :cond_3

    .line 693
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v2, "Deleted persistence file"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 705
    :cond_1
    :goto_2
    :try_start_5
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->f:Z

    if-nez v0, :cond_2

    .line 706
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->k:Z

    .line 707
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->o:J

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->l:J

    .line 708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->f:Z

    .line 712
    :cond_2
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ei;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->e:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ei;-><init>(Ljava/io/File;)V

    .line 713
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ei;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->H:Ljava/util/Map;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 714
    monitor-exit p0

    return-void

    .line 679
    :catch_0
    move-exception v0

    .line 680
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 683
    :catch_1
    move-exception v0

    .line 684
    :goto_3
    const/4 v2, 0x6

    :try_start_7
    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v4, "Error when loading persistent file"

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 686
    :try_start_8
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 686
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_9
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 695
    :cond_3
    const/4 v0, 0x6

    :try_start_a
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v2, "Cannot delete persistence file"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 698
    :catch_2
    move-exception v0

    .line 699
    const/4 v1, 0x6

    :try_start_b
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 702
    :cond_4
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v2, "Agent cache file doesn\'t exist."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .line 686
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 683
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method static synthetic d(Lcom/flurry/android/monolithic/sdk/impl/fb;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->v()V

    return-void
.end method

.method private m()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->K:Lcom/flurry/android/monolithic/sdk/impl/fh;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/fh;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->K:Lcom/flurry/android/monolithic/sdk/impl/fh;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/fh;->a()V

    .line 140
    :cond_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->M:I

    .line 141
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->M:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->M:I

    .line 145
    return-void
.end method

.method private o()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 202
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ib;->a()Lcom/flurry/android/monolithic/sdk/impl/ic;

    move-result-object v1

    .line 204
    const-string v0, "Gender"

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->y:B

    .line 205
    const-string v0, "Gender"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/id;)V

    .line 206
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, Gender = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->y:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v0, "UserId"

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->x:Ljava/lang/String;

    .line 209
    const-string v0, "UserId"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/id;)V

    .line 210
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, UserId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->x:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "LogEvents"

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->w:Z

    .line 213
    const-string v0, "LogEvents"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/id;)V

    .line 214
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, LogEvents = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->w:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v0, "Age"

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->z:J

    .line 217
    const-string v0, "Age"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/id;)V

    .line 218
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, BirthDate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->z:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v0, "ContinueSessionMillis"

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->A:J

    .line 221
    const-string v0, "ContinueSessionMillis"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/id;)V

    .line 222
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSettings, ContinueSessionMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->A:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method private p()V
    .locals 4

    .prologue
    .line 260
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v2, "Start session"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->o:J

    .line 264
    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->p:J

    .line 266
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/fc;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/fc;-><init>(Lcom/flurry/android/monolithic/sdk/impl/fb;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(Lcom/flurry/android/monolithic/sdk/impl/jf;)V

    .line 275
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    .line 279
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v2, "Continuing previous session"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 284
    :cond_0
    return-void
.end method

.method private r()V
    .locals 4

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error! Session with apiKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was ended while getSessionCount() is not 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->e()V

    .line 325
    return-void
.end method

.method private s()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/fd;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/fd;-><init>(Lcom/flurry/android/monolithic/sdk/impl/fb;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(Lcom/flurry/android/monolithic/sdk/impl/jf;)V

    .line 367
    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 382
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v0

    .line 383
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/fe;

    invoke-direct {v1, p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/fe;-><init>(Lcom/flurry/android/monolithic/sdk/impl/fb;Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(Lcom/flurry/android/monolithic/sdk/impl/jf;)V

    .line 394
    return-void
.end method

.method private declared-synchronized u()Lcom/flurry/android/monolithic/sdk/impl/ez;
    .locals 4

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/fa;

    invoke-direct {v2}, Lcom/flurry/android/monolithic/sdk/impl/fa;-><init>()V

    .line 417
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/fa;->a(Ljava/lang/String;)V

    .line 418
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->o:J

    invoke-virtual {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->a(J)V

    .line 419
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->q:J

    invoke-virtual {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->b(J)V

    .line 420
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->r:J

    invoke-virtual {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/fa;->c(J)V

    .line 421
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/fa;->b(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/fa;->c(Ljava/lang/String;)V

    .line 423
    iget-byte v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->u:B

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/fa;->a(I)V

    .line 424
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/fa;->d(Ljava/lang/String;)V

    .line 426
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->A()Landroid/location/Location;

    move-result-object v0

    .line 427
    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/fa;->a(Landroid/location/Location;)V

    .line 429
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->G:I

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/fa;->b(I)V

    .line 430
    iget-byte v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->y:B

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/fa;->a(B)V

    .line 431
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->z:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/fa;->a(Ljava/lang/Long;)V

    .line 433
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->C:Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/fa;->a(Ljava/util/List;)V

    .line 434
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->B:Ljava/util/Map;

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/fa;->a(Ljava/util/Map;)V

    .line 436
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->F:Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/fa;->b(Ljava/util/List;)V

    .line 437
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->v:I

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/fa;->c(I)V

    .line 438
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->D:Z

    invoke-virtual {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/fa;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    const/4 v1, 0x0

    .line 442
    :try_start_1
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ez;

    invoke-direct {v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ez;-><init>(Lcom/flurry/android/monolithic/sdk/impl/fa;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    :goto_0
    if-nez v0, :cond_0

    .line 448
    const/4 v1, 0x6

    :try_start_2
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v3, "New session report wasn\'t created"

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 451
    :cond_0
    monitor-exit p0

    return-object v0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized v()V
    .locals 4

    .prologue
    .line 630
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/iw;->a(Ljava/io/File;)Z

    move-result v0

    .line 632
    if-nez v0, :cond_0

    .line 633
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v2, "ERROR! CREATE PARENT DIR DIDN\'T PROCCEED"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    :goto_0
    monitor-exit p0

    return-void

    .line 638
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->d:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 639
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 641
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/fg;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/fg;-><init>()V

    .line 643
    iget-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->k:Z

    invoke-virtual {v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/fg;->a(Z)V

    .line 644
    iget-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->l:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/fg;->a(J)V

    .line 645
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->m:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/fg;->a(Ljava/util/List;)V

    .line 647
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/fg;->a(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 630
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 651
    :catch_1
    move-exception v0

    .line 652
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private w()Ljava/lang/String;
    .locals 3

    .prologue
    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".flurryagent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->g:Ljava/lang/String;

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

.method private static x()I
    .locals 1

    .prologue
    .line 725
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/fb;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private static y()I
    .locals 1

    .prologue
    .line 729
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/fb;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->n:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->M:I

    return v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/jf;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->J:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 228
    const-string v0, "Gender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->y:B

    .line 230
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, Gender = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->y:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 231
    :cond_0
    const-string v0, "UserId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->x:Ljava/lang/String;

    .line 233
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, UserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_1
    const-string v0, "LogEvents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->w:Z

    .line 236
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, LogEvents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->w:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_2
    const-string v0, "Age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 238
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->z:J

    .line 239
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, Birthdate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->z:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_3
    const-string v0, "ContinueSessionMillis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 241
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->A:J

    .line 242
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, ContinueSessionMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->A:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    :cond_4
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 556
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->F:Ljava/util/List;

    if-nez v1, :cond_1

    .line 557
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError called before onStartSession.  Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 561
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    const-string v1, "uncaught"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 564
    :goto_1
    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->v:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->v:I

    .line 565
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->F:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x32

    if-ge v2, v3, :cond_3

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 567
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ej;

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fb;->y()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/android/monolithic/sdk/impl/ej;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->F:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error logged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ej;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v1, v0

    .line 561
    goto :goto_1

    .line 572
    :cond_3
    if-eqz v1, :cond_5

    move v8, v0

    .line 575
    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->F:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ej;

    .line 577
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ej;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "uncaught"

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ej;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 579
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 580
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ej;

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fb;->y()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/flurry/android/monolithic/sdk/impl/ej;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->F:Ljava/util/List;

    invoke-interface {v1, v8, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 575
    :cond_4
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    .line 587
    :cond_5
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v2, "Max errors logged. No more errors logged."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v6, 0x27100

    .line 516
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/ek;

    .line 517
    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ek;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->p:J

    sub-long/2addr v2, v4

    .line 520
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->E:I

    if-ge v1, v6, :cond_1

    .line 522
    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->E:I

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ek;->d()I

    move-result v4

    sub-int/2addr v1, v4

    .line 524
    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ek;->c()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 526
    invoke-virtual {v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/ek;->a(Ljava/util/Map;)V

    .line 528
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ek;->d()I

    move-result v5

    add-int/2addr v5, v1

    if-gt v5, v6, :cond_4

    .line 529
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ek;->c()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_3

    .line 530
    const/4 v1, 0x5

    sget-object v5, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MaxEventParams exceeded on endEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ek;->c()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v5, v6}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {v0, v4}, Lcom/flurry/android/monolithic/sdk/impl/ek;->b(Ljava/util/Map;)V

    .line 547
    :cond_1
    :goto_0
    invoke-virtual {v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ek;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    :cond_2
    monitor-exit p0

    return-void

    .line 534
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ek;->d()I

    move-result v4

    add-int/2addr v1, v4

    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->E:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 538
    :cond_4
    :try_start_2
    invoke-virtual {v0, v4}, Lcom/flurry/android/monolithic/sdk/impl/ek;->b(Ljava/util/Map;)V

    .line 539
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->D:Z

    .line 540
    const v1, 0x27100

    iput v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->E:I

    .line 542
    const/4 v1, 0x5

    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v5, "Event Log size exceeded. No more event details logged."

    invoke-static {v1, v4, v5}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const v7, 0x27100

    .line 459
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->C:Ljava/util/List;

    if-nez v0, :cond_1

    .line 460
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent called before onStartSession.  Event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 464
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->p:J

    sub-long v4, v0, v2

    .line 466
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->B:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/eh;

    .line 471
    if-nez v0, :cond_3

    .line 472
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->B:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 473
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/eh;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/eh;-><init>()V

    .line 474
    const/4 v1, 0x1

    iput v1, v0, Lcom/flurry/android/monolithic/sdk/impl/eh;->a:I

    .line 475
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->B:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event count incremented: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 486
    :goto_1
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->w:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->E:I

    if-ge v0, v7, :cond_6

    .line 487
    if-nez p2, :cond_7

    .line 488
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 490
    :goto_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_4

    .line 491
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MaxEventParams exceeded: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 479
    :cond_2
    const/4 v0, 0x5

    :try_start_2
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many different events. Event not counted: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 483
    :cond_3
    iget v1, v0, Lcom/flurry/android/monolithic/sdk/impl/eh;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/flurry/android/monolithic/sdk/impl/eh;->a:I

    goto :goto_1

    .line 493
    :cond_4
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ek;

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fb;->x()I

    move-result v1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/ek;-><init>(ILjava/lang/String;Ljava/util/Map;JZ)V

    .line 496
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ek;->d()I

    move-result v1

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->E:I

    add-int/2addr v1, v2

    if-gt v1, v7, :cond_5

    .line 497
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->C:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->E:I

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ek;->d()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->E:I

    goto/16 :goto_0

    .line 502
    :cond_5
    const v0, 0x27100

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->E:I

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->D:Z

    .line 505
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v2, "Event Log size exceeded. No more event details logged."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 510
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->D:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_7
    move-object v3, p2

    goto/16 :goto_2
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->I:Ljava/util/Map;

    .line 153
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->k:Z

    .line 162
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->m()V

    .line 251
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->N:Z

    if-nez v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->p()V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->N:Z

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->q()V

    goto :goto_0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 287
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v2, "Trying to end session"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->N:Z

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a()I

    move-result v0

    if-lez v0, :cond_2

    .line 294
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->n()V

    .line 297
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->K:Lcom/flurry/android/monolithic/sdk/impl/fh;

    iget-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->A:J

    invoke-virtual {v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/fh;->a(J)V

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->N:Z

    if-nez v0, :cond_0

    .line 356
    :goto_0
    return-void

    .line 332
    :cond_0
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/fb;->a:Ljava/lang/String;

    const-string v2, "Ending session"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->M:I

    .line 336
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->K:Lcom/flurry/android/monolithic/sdk/impl/fh;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/fh;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->K:Lcom/flurry/android/monolithic/sdk/impl/fh;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/fh;->a()V

    .line 340
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 341
    iget-wide v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->p:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->q:J

    .line 343
    iget-wide v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->q:J

    invoke-direct {p0, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/fb;->a(J)V

    .line 344
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->t()V

    .line 346
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->L:Lcom/flurry/android/monolithic/sdk/impl/ff;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->L:Lcom/flurry/android/monolithic/sdk/impl/ff;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ff;->d(Ljava/lang/String;)V

    .line 350
    :cond_2
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ib;->a()Lcom/flurry/android/monolithic/sdk/impl/ic;

    move-result-object v0

    const-string v1, "Gender"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/id;)Z

    .line 351
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ib;->a()Lcom/flurry/android/monolithic/sdk/impl/ic;

    move-result-object v0

    const-string v1, "UserId"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/id;)Z

    .line 352
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ib;->a()Lcom/flurry/android/monolithic/sdk/impl/ic;

    move-result-object v0

    const-string v1, "Age"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/id;)Z

    .line 353
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ib;->a()Lcom/flurry/android/monolithic/sdk/impl/ic;

    move-result-object v0

    const-string v1, "LogEvents"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/id;)Z

    .line 354
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ib;->a()Lcom/flurry/android/monolithic/sdk/impl/ic;

    move-result-object v0

    const-string v1, "ContinueSessionMillis"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/ic;->b(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/id;)Z

    .line 355
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->J:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method

.method public declared-synchronized f()V
    .locals 1

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->G:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    monitor-exit p0

    return-void

    .line 455
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 721
    const-string v0, ".flurryinstallreceiver."

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->x:Ljava/lang/String;

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->s:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fb;->t:Ljava/lang/String;

    return-object v0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->r()V

    .line 775
    return-void
.end method
