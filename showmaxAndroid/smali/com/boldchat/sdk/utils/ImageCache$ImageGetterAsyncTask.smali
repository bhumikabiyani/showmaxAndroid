.class public Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;
.super Landroid/os/AsyncTask;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/utils/ImageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageGetterAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;->source:Ljava/lang/String;

    return-void
.end method

.method private fetch(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 110
    .local v0, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 112
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 70
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;->source:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;->source:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;->fetchDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public fetchDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;->fetch(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 100
    .local v2, "is":Ljava/io/InputStream;
    const-string v3, "src"

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 104
    .end local v2    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BOLD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to fetch image "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "result"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 77
    # getter for: Lcom/boldchat/sdk/utils/ImageCache;->locker:Ljava/lang/Object;
    invoke-static {}, Lcom/boldchat/sdk/utils/ImageCache;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 78
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xc

    if-lt v4, v6, :cond_0

    # getter for: Lcom/boldchat/sdk/utils/ImageCache;->cache:Landroid/util/LruCache;
    invoke-static {}, Lcom/boldchat/sdk/utils/ImageCache;->access$100()Landroid/util/LruCache;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 79
    # getter for: Lcom/boldchat/sdk/utils/ImageCache;->cache:Landroid/util/LruCache;
    invoke-static {}, Lcom/boldchat/sdk/utils/ImageCache;->access$100()Landroid/util/LruCache;

    move-result-object v4

    iget-object v6, p0, Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;->source:Ljava/lang/String;

    invoke-virtual {v4, v6, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    const/4 v3, 0x0

    .line 83
    .local v3, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boldchat/sdk/utils/DrawableReadyListener;>;"
    # getter for: Lcom/boldchat/sdk/utils/ImageCache;->activeListeners:Ljava/util/HashMap;
    invoke-static {}, Lcom/boldchat/sdk/utils/ImageCache;->access$200()Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 84
    :try_start_1
    # getter for: Lcom/boldchat/sdk/utils/ImageCache;->activeListeners:Ljava/util/HashMap;
    invoke-static {}, Lcom/boldchat/sdk/utils/ImageCache;->access$200()Ljava/util/HashMap;

    move-result-object v4

    iget-object v6, p0, Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;->source:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0

    .line 85
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    if-eqz v3, :cond_2

    .line 87
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boldchat/sdk/utils/DrawableReadyListener;

    .line 88
    .local v2, "listener":Lcom/boldchat/sdk/utils/DrawableReadyListener;
    if-eqz p1, :cond_1

    .line 89
    iget-object v4, p0, Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;->source:Ljava/lang/String;

    invoke-interface {v2, v4, p1}, Lcom/boldchat/sdk/utils/DrawableReadyListener;->onDrawableReady(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 81
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/boldchat/sdk/utils/DrawableReadyListener;
    .end local v3    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boldchat/sdk/utils/DrawableReadyListener;>;"
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 85
    .restart local v3    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boldchat/sdk/utils/DrawableReadyListener;>;"
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 91
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listener":Lcom/boldchat/sdk/utils/DrawableReadyListener;
    :cond_1
    iget-object v4, p0, Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;->source:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/boldchat/sdk/utils/DrawableReadyListener;->onDrawableLoadFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/boldchat/sdk/utils/DrawableReadyListener;
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/boldchat/sdk/utils/ImageCache$ImageGetterAsyncTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
