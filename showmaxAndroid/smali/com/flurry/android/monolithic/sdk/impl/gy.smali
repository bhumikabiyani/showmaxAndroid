.class public Lcom/flurry/android/monolithic/sdk/impl/gy;
.super Lcom/flurry/android/monolithic/sdk/impl/he;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/gy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0
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
    .line 26
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/he;-><init>(Ljava/util/HashMap;)V

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 31
    const-string v0, "GetOperation Thread"

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/gy;->b(Ljava/lang/String;)V

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->h:Ljava/util/HashMap;

    const-string v1, "del"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/fr;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->f:Lcom/flurry/android/monolithic/sdk/impl/fr;

    .line 35
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->h:Ljava/util/HashMap;

    const-string v1, "del_internal"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/fs;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->g:Lcom/flurry/android/monolithic/sdk/impl/fs;

    .line 41
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->h:Ljava/util/HashMap;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/gy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 44
    const/4 v2, 0x4

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/gy;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get operation URL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/iz;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->d:Lorg/apache/http/client/HttpClient;

    .line 48
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->e:Lorg/apache/http/protocol/BasicHttpContext;

    .line 49
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->e:Lorg/apache/http/protocol/BasicHttpContext;

    const-string v2, "http.cookie-store"

    new-instance v3, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v3}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/protocol/BasicHttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->d:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->e:Lorg/apache/http/protocol/BasicHttpContext;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 54
    const-string v2, "("

    invoke-virtual {v1, v2}, Lorg/json/JSONTokener;->skipPast(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 68
    :goto_0
    const/4 v2, 0x4

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/gy;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "responseText = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x190

    if-eq v0, v2, :cond_0

    .line 71
    const-string v0, "APPCLOUD_USER_SESSION"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "APPCLOUD_USER_SESSION"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gr;->a:Ljava/lang/String;

    .line 76
    :cond_0
    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/gy;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->d:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->d:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 87
    :cond_1
    :goto_1
    return-void

    .line 57
    :cond_2
    :try_start_1
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/iz;->b(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->d:Lorg/apache/http/client/HttpClient;

    .line 58
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->h:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/gy;->a(Lorg/apache/http/message/AbstractHttpMessage;Ljava/util/HashMap;)V

    .line 59
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->d:Lorg/apache/http/client/HttpClient;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->c:Lorg/apache/http/HttpHost;

    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-interface {v0, v2, v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const/4 v1, 0x6

    :try_start_2
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/gy;->a:Ljava/lang/String;

    const-string v3, "Exception during communication with server: "

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/gy;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->d:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->d:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .line 83
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->d:Lorg/apache/http/client/HttpClient;

    if-eqz v1, :cond_3

    .line 84
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->d:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_3
    throw v0
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 92
    :try_start_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/fq;

    invoke-direct {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;-><init>(Lorg/json/JSONObject;)V

    .line 93
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->g:Lcom/flurry/android/monolithic/sdk/impl/fs;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->g:Lcom/flurry/android/monolithic/sdk/impl/fs;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->f:Lcom/flurry/android/monolithic/sdk/impl/fr;

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/gx;->c:Lcom/flurry/android/monolithic/sdk/impl/gx;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->h:Ljava/util/HashMap;

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/fs;->a(Lcom/flurry/android/monolithic/sdk/impl/fq;Lcom/flurry/android/monolithic/sdk/impl/fr;Lcom/flurry/android/monolithic/sdk/impl/gx;Ljava/util/HashMap;)V

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gy;->f:Lcom/flurry/android/monolithic/sdk/impl/fr;

    invoke-interface {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/fr;->a(Lcom/flurry/android/monolithic/sdk/impl/fq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/gy;->a:Ljava/lang/String;

    const-string v3, "Exception in onPostExecute: "

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
