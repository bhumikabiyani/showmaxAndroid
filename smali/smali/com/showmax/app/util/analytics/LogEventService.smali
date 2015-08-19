.class public Lcom/showmax/app/util/analytics/LogEventService;
.super Ljava/lang/Object;
.source "LogEventService.java"


# static fields
.field private static final DEFAULT_SENDING_PERIOD:J = 0x7d0L

.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDispatchAllLogEventsTask:Ljava/lang/Runnable;

.field private mEventQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/showmax/lib/api/model/log/LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mLogEventHandler:Landroid/os/Handler;

.field private mPostEventsHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/showmax/app/util/analytics/LogEventService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/util/analytics/LogEventService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/showmax/app/util/analytics/LogEventService$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/util/analytics/LogEventService$1;-><init>(Lcom/showmax/app/util/analytics/LogEventService;)V

    iput-object v0, p0, Lcom/showmax/app/util/analytics/LogEventService;->mDispatchAllLogEventsTask:Ljava/lang/Runnable;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/util/analytics/LogEventService;->mEventQueue:Ljava/util/LinkedList;

    .line 47
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/showmax/app/util/analytics/LogEventService;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/showmax/app/util/analytics/LogEventService;->mPostEventsHandlerThread:Landroid/os/HandlerThread;

    .line 48
    iget-object v0, p0, Lcom/showmax/app/util/analytics/LogEventService;->mPostEventsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventService;->mPostEventsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/showmax/app/util/analytics/LogEventService;->mLogEventHandler:Landroid/os/Handler;

    .line 52
    invoke-direct {p0}, Lcom/showmax/app/util/analytics/LogEventService;->startDispatchAllLogEventsTask()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/util/analytics/LogEventService;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/util/analytics/LogEventService;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/showmax/app/util/analytics/LogEventService;->dispatchAllLogEvents()V

    return-void
.end method

.method static synthetic access$100(Lcom/showmax/app/util/analytics/LogEventService;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/util/analytics/LogEventService;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/showmax/app/util/analytics/LogEventService;->startDispatchAllLogEventsTask()V

    return-void
.end method

.method private dispatchAllLogEvents()V
    .locals 2

    .prologue
    .line 91
    monitor-enter p0

    .line 93
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventService;->mEventQueue:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    .local v0, "logEvents":Ljava/util/ArrayList;
    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventService;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    :try_start_1
    invoke-static {}, Lcom/showmax/lib/api/io/LogApi;->getInstance()Lcom/showmax/lib/api/io/LogApi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/showmax/lib/api/io/LogApi;->sendLog(Ljava/util/List;)Lretrofit/client/Response;
    :try_end_1
    .catch Lretrofit/RetrofitError; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 95
    .end local v0    # "logEvents":Ljava/util/ArrayList;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 103
    .restart local v0    # "logEvents":Ljava/util/ArrayList;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private startDispatchAllLogEventsTask()V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/showmax/app/util/analytics/LogEventService;->mLogEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/showmax/app/util/analytics/LogEventService;->mDispatchAllLogEventsTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    return-void
.end method


# virtual methods
.method public sendLogEvent(Lcom/showmax/lib/api/model/log/LogEvent;)V
    .locals 1
    .param p1, "logEvent"    # Lcom/showmax/lib/api/model/log/LogEvent;

    .prologue
    .line 61
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/showmax/app/util/analytics/LogEventService;->mEventQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 64
    monitor-exit p0

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
