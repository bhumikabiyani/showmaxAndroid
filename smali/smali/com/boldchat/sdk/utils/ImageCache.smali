.class public Lcom/boldchat/sdk/utils/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;
    }
.end annotation


# static fields
.field private static activeListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boldchat/sdk/utils/DrawableReadyListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static locker:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/boldchat/sdk/utils/ImageCache;->locker:Ljava/lang/Object;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/boldchat/sdk/utils/ImageCache;->cache:Landroid/util/LruCache;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/boldchat/sdk/utils/ImageCache;->activeListeners:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/boldchat/sdk/utils/ImageCache;->locker:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/boldchat/sdk/utils/ImageCache;->cache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/boldchat/sdk/utils/ImageCache;->activeListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getImage(Ljava/lang/String;Lcom/boldchat/sdk/utils/DrawableReadyListener;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/boldchat/sdk/utils/DrawableReadyListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 30
    const/4 v1, 0x0

    .line 31
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v5, Lcom/boldchat/sdk/utils/ImageCache;->locker:Ljava/lang/Object;

    monitor-enter v5

    .line 32
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xc

    if-lt v4, v6, :cond_0

    .line 33
    sget-object v4, Lcom/boldchat/sdk/utils/ImageCache;->cache:Landroid/util/LruCache;

    if-nez v4, :cond_2

    .line 34
    new-instance v4, Landroid/util/LruCache;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/boldchat/sdk/R$integer;->bc_image_cache_max:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-direct {v4, v6}, Landroid/util/LruCache;-><init>(I)V

    sput-object v4, Lcom/boldchat/sdk/utils/ImageCache;->cache:Landroid/util/LruCache;

    .line 39
    :cond_0
    :goto_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-nez v1, :cond_1

    .line 41
    const/4 v2, 0x0

    .line 42
    .local v2, "execute":Z
    sget-object v5, Lcom/boldchat/sdk/utils/ImageCache;->activeListeners:Ljava/util/HashMap;

    monitor-enter v5

    .line 43
    :try_start_1
    sget-object v4, Lcom/boldchat/sdk/utils/ImageCache;->activeListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 44
    .local v3, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boldchat/sdk/utils/DrawableReadyListener;>;"
    if-nez v3, :cond_3

    .line 45
    const/4 v2, 0x1

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boldchat/sdk/utils/DrawableReadyListener;>;"
    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    .restart local v3    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boldchat/sdk/utils/DrawableReadyListener;>;"
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v4, Lcom/boldchat/sdk/utils/ImageCache;->activeListeners:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    if-eqz v2, :cond_1

    .line 54
    const-string v4, "BOLD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fetching image "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    .line 56
    new-instance v4, Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;

    invoke-direct {v4}, Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;-><init>()V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v6, v9, [Ljava/lang/String;

    aput-object p0, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 62
    .end local v2    # "execute":Z
    .end local v3    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boldchat/sdk/utils/DrawableReadyListener;>;"
    :cond_1
    :goto_2
    return-object v1

    .line 36
    :cond_2
    :try_start_2
    sget-object v4, Lcom/boldchat/sdk/utils/ImageCache;->cache:Landroid/util/LruCache;

    invoke-virtual {v4, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v1, v0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 50
    .restart local v2    # "execute":Z
    .restart local v3    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boldchat/sdk/utils/DrawableReadyListener;>;"
    :cond_3
    :try_start_3
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 52
    .end local v3    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boldchat/sdk/utils/DrawableReadyListener;>;"
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 58
    .restart local v3    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boldchat/sdk/utils/DrawableReadyListener;>;"
    :cond_4
    new-instance v4, Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;

    invoke-direct {v4}, Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;-><init>()V

    new-array v5, v9, [Ljava/lang/String;

    aput-object p0, v5, v8

    invoke-virtual {v4, v5}, Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method
