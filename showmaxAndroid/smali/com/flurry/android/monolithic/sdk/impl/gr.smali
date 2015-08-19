.class public Lcom/flurry/android/monolithic/sdk/impl/gr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, ""

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gr;->a:Ljava/lang/String;

    .line 27
    const-string v0, ""

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gr;->b:Ljava/lang/String;

    .line 29
    const-string v0, "del_internal"

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gr;->c:Ljava/lang/String;

    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gr;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/gr;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/fq;Lcom/flurry/android/monolithic/sdk/impl/fr;Lcom/flurry/android/monolithic/sdk/impl/gx;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 24
    invoke-static {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/gr;->b(Lcom/flurry/android/monolithic/sdk/impl/fq;Lcom/flurry/android/monolithic/sdk/impl/fr;Lcom/flurry/android/monolithic/sdk/impl/gx;Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    invoke-static {p0, p0}, Lcom/flurry/android/monolithic/sdk/impl/hh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gr;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic a(Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 24
    invoke-static {p0}, Lcom/flurry/android/monolithic/sdk/impl/gr;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method public static a(ZLjava/lang/String;Ljava/util/List;Lcom/flurry/android/monolithic/sdk/impl/fr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/flurry/android/monolithic/sdk/impl/fr;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/gr;->b(Ljava/util/HashMap;)V

    .line 51
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/gs;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/gs;-><init>()V

    .line 63
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/gr;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "del"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/gr;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/hf;

    invoke-direct {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/hf;-><init>(Ljava/util/HashMap;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 70
    return-void
.end method

.method static synthetic b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/gr;->d:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private static declared-synchronized b(Lcom/flurry/android/monolithic/sdk/impl/fq;Lcom/flurry/android/monolithic/sdk/impl/fr;Lcom/flurry/android/monolithic/sdk/impl/gx;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/fq;",
            "Lcom/flurry/android/monolithic/sdk/impl/fr;",
            "Lcom/flurry/android/monolithic/sdk/impl/gx;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    const-class v1, Lcom/flurry/android/monolithic/sdk/impl/gr;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/fq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/fr;->a(Lcom/flurry/android/monolithic/sdk/impl/fq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :goto_0
    monitor-exit v1

    return-void

    .line 141
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/fq;->d()I

    move-result v0

    const/16 v2, 0x190

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/fq;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "invalid user session"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    const/4 v0, 0x5

    const-string v2, "FlurryAppCloudRequestManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CURRENT USER SESSION = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/gr;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IS NOT VALID!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, ""

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gr;->a:Ljava/lang/String;

    .line 147
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->b()V

    .line 149
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->c()Lcom/flurry/android/monolithic/sdk/impl/ft;

    move-result-object v0

    if-nez v0, :cond_1

    .line 151
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->i()V

    .line 152
    invoke-interface {p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/fr;->a(Lcom/flurry/android/monolithic/sdk/impl/fq;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const/4 v2, 0x6

    :try_start_2
    const-string v3, "FlurryAppCloudRequestManager"

    const-string v4, "checkForTokenError Exception: "

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 156
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->c()Lcom/flurry/android/monolithic/sdk/impl/ft;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a(Lcom/flurry/android/monolithic/sdk/impl/ft;)V

    .line 157
    const/4 v0, 0x3

    const-string v2, "FlurryAppCloudRequestManager"

    const-string v3, "TRYING TO RELOGIN WITH LAST USER!"

    invoke-static {v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/flurry/android/monolithic/sdk/impl/gv;

    invoke-direct {v3, p3, p2, p1}, Lcom/flurry/android/monolithic/sdk/impl/gv;-><init>(Ljava/util/HashMap;Lcom/flurry/android/monolithic/sdk/impl/gx;Lcom/flurry/android/monolithic/sdk/impl/fr;)V

    invoke-static {v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/hz;)V

    goto :goto_0

    .line 200
    :cond_2
    invoke-interface {p1, p0}, Lcom/flurry/android/monolithic/sdk/impl/fr;->a(Lcom/flurry/android/monolithic/sdk/impl/fq;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private static b(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    const-string v0, "session"

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/gr;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "auth"

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/gr;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public static b(ZLjava/lang/String;Ljava/util/List;Lcom/flurry/android/monolithic/sdk/impl/fr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/flurry/android/monolithic/sdk/impl/fr;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/gr;->b(Ljava/util/HashMap;)V

    .line 76
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/gt;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/gt;-><init>()V

    .line 88
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/gr;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "del"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    if-nez p2, :cond_0

    .line 93
    const-string v1, "data"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :goto_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/gr;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/hg;

    invoke-direct {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/hg;-><init>(Ljava/util/HashMap;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 99
    return-void

    .line 95
    :cond_0
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static c(ZLjava/lang/String;Ljava/util/List;Lcom/flurry/android/monolithic/sdk/impl/fr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/flurry/android/monolithic/sdk/impl/fr;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/gr;->b(Ljava/util/HashMap;)V

    .line 105
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/gu;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/gu;-><init>()V

    .line 117
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/gr;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "del"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    if-eqz p2, :cond_0

    .line 121
    const-string v1, "url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/flurry/android/monolithic/sdk/impl/hh;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :goto_0
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/gr;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/gy;

    invoke-direct {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/gy;-><init>(Ljava/util/HashMap;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 127
    return-void

    .line 123
    :cond_0
    const-string v1, "url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
