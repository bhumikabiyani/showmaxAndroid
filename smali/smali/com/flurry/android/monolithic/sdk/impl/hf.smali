.class public Lcom/flurry/android/monolithic/sdk/impl/hf;
.super Lcom/flurry/android/monolithic/sdk/impl/he;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/hf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/hf;->a:Ljava/lang/String;

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
    .line 33
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/he;-><init>(Ljava/util/HashMap;)V

    .line 34
    return-void
.end method

.method private a(Ljava/util/List;)Lcom/flurry/android/monolithic/sdk/impl/oh;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/flurry/android/monolithic/sdk/impl/oh;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/oh;

    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/oe;->b:Lcom/flurry/android/monolithic/sdk/impl/oe;

    invoke-direct {v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/oh;-><init>(Lcom/flurry/android/monolithic/sdk/impl/oe;)V

    .line 114
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 116
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "file"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 118
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    .line 119
    new-instance v4, Lcom/flurry/android/monolithic/sdk/impl/ol;

    new-instance v5, Ljava/io/File;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "application/octet-stream"

    const-string v6, "utf-8"

    invoke-direct {v4, v5, v3, v0, v6}, Lcom/flurry/android/monolithic/sdk/impl/ol;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "file"

    invoke-virtual {v2, v0, v4}, Lcom/flurry/android/monolithic/sdk/impl/oh;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/oj;)V

    .line 114
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 125
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    .line 127
    const-string v0, "filename"

    if-eq v3, v0, :cond_0

    const-string v0, "file"

    if-eq v3, v0, :cond_0

    .line 128
    new-instance v4, Lcom/flurry/android/monolithic/sdk/impl/om;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/flurry/android/monolithic/sdk/impl/om;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/oh;->a(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/oj;)V

    goto :goto_1

    .line 132
    :cond_2
    return-object v2
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 39
    const-string v0, "PostOperation Thread"

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/hf;->b(Ljava/lang/String;)V

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->h:Ljava/util/HashMap;

    const-string v1, "del"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/fr;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->f:Lcom/flurry/android/monolithic/sdk/impl/fr;

    .line 43
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->h:Ljava/util/HashMap;

    const-string v1, "del_internal"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/fs;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->g:Lcom/flurry/android/monolithic/sdk/impl/fs;

    .line 46
    const-string v0, ""

    .line 49
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->h:Ljava/util/HashMap;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/hf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 52
    const/4 v2, 0x4

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/hf;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Put operation URL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/iz;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->d:Lorg/apache/http/client/HttpClient;

    .line 56
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->e:Lorg/apache/http/protocol/BasicHttpContext;

    .line 57
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->e:Lorg/apache/http/protocol/BasicHttpContext;

    const-string v2, "http.cookie-store"

    new-instance v3, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v3}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/protocol/BasicHttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->d:Lorg/apache/http/client/HttpClient;

    new-instance v2, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->e:Lorg/apache/http/protocol/BasicHttpContext;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 62
    const-string v2, "("

    invoke-virtual {v1, v2}, Lorg/json/JSONTokener;->skipPast(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 74
    :goto_0
    const/4 v2, 0x4

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/hf;->a:Ljava/lang/String;

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

    .line 76
    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/hf;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->d:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->d:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 87
    :cond_0
    :goto_1
    return-void

    .line 65
    :cond_1
    :try_start_1
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/iz;->b(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->d:Lorg/apache/http/client/HttpClient;

    .line 66
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->h:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/hf;->a(Lorg/apache/http/message/AbstractHttpMessage;Ljava/util/HashMap;)V

    .line 67
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->h:Ljava/util/HashMap;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/hf;->a(Ljava/util/List;)Lcom/flurry/android/monolithic/sdk/impl/oh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 68
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->d:Lorg/apache/http/client/HttpClient;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->c:Lorg/apache/http/HttpHost;

    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-interface {v0, v2, v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
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
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/hf;->a:Ljava/lang/String;

    const-string v3, "Exception during communication with server: "

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/hf;->a(Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->d:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->d:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_1

    .line 83
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->d:Lorg/apache/http/client/HttpClient;

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->d:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_2
    throw v0
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 92
    :try_start_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/fq;

    invoke-direct {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;-><init>(Lorg/json/JSONObject;)V

    .line 94
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->g:Lcom/flurry/android/monolithic/sdk/impl/fs;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->g:Lcom/flurry/android/monolithic/sdk/impl/fs;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->f:Lcom/flurry/android/monolithic/sdk/impl/fr;

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/gx;->a:Lcom/flurry/android/monolithic/sdk/impl/gx;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->h:Ljava/util/HashMap;

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/fs;->a(Lcom/flurry/android/monolithic/sdk/impl/fq;Lcom/flurry/android/monolithic/sdk/impl/fr;Lcom/flurry/android/monolithic/sdk/impl/gx;Ljava/util/HashMap;)V

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/hf;->f:Lcom/flurry/android/monolithic/sdk/impl/fr;

    invoke-interface {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/fr;->a(Lcom/flurry/android/monolithic/sdk/impl/fq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/hf;->a:Ljava/lang/String;

    const-string v3, "Exception in onPostExecute: "

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
