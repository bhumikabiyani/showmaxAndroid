.class public Lcom/flurry/android/monolithic/sdk/impl/ev;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# static fields
.field static a:I


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[B

.field private f:Lcom/flurry/android/monolithic/sdk/impl/ex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x3a98

    sput v0, Lcom/flurry/android/monolithic/sdk/impl/ev;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/flurry/android/monolithic/sdk/impl/ex;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ev;->b:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/ev;->c:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/ev;->d:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/ev;->e:[B

    .line 43
    iput-object p5, p0, Lcom/flurry/android/monolithic/sdk/impl/ev;->f:Lcom/flurry/android/monolithic/sdk/impl/ex;

    .line 44
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataSender Sending Executor Thread, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 54
    :try_start_0
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ev;->e:[B

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 55
    const-string v1, "application/octet-stream"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 58
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ev;->b:Ljava/lang/String;

    invoke-direct {v3, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 62
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 63
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 64
    sget v1, Lcom/flurry/android/monolithic/sdk/impl/ev;->a:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 65
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v4, "http.protocol.expect-continue"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 67
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/iz;->b(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 68
    :try_start_1
    invoke-interface {v1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 73
    if-eqz v1, :cond_0

    .line 74
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 79
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    if-nez v0, :cond_3

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ev;->f:Lcom/flurry/android/monolithic/sdk/impl/ex;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ev;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ev;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ex;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 92
    :goto_1
    return-void

    .line 69
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 70
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    if-eqz v1, :cond_0

    .line 74
    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_2

    .line 74
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_2
    throw v0

    .line 84
    :cond_3
    :try_start_4
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 86
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ev;->f:Lcom/flurry/android/monolithic/sdk/impl/ex;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/ev;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ev;->d:Ljava/lang/String;

    invoke-interface {v2, v1, v0, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/ex;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 89
    :catch_1
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 73
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 69
    :catch_2
    move-exception v0

    goto :goto_2
.end method
