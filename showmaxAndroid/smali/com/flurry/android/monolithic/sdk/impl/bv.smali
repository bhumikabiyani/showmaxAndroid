.class public Lcom/flurry/android/monolithic/sdk/impl/bv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/flurry/android/monolithic/sdk/impl/ly;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/bv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/bv;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ly;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/ly;-><init>()V

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/bv;->b:Lcom/flurry/android/monolithic/sdk/impl/ly;

    .line 51
    return-void
.end method

.method private a(Lcom/flurry/android/monolithic/sdk/impl/nu;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/nu;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/flurry/android/monolithic/sdk/impl/nu;",
            "B:",
            "Lcom/flurry/android/monolithic/sdk/impl/nu;",
            ">(TA;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TA;>;",
            "Ljava/lang/Class",
            "<TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, p1, p3}, Lcom/flurry/android/monolithic/sdk/impl/bv;->a(Lcom/flurry/android/monolithic/sdk/impl/nu;Ljava/lang/Class;)[B

    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    .line 73
    invoke-direct {p0, v1, p2}, Lcom/flurry/android/monolithic/sdk/impl/bv;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 74
    invoke-virtual {p0, v0, p4}, Lcom/flurry/android/monolithic/sdk/impl/bv;->a([BLjava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/nu;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 76
    :cond_0
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/bv;->a:Ljava/lang/String;

    const-string v3, "Response in bytes is null"

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 172
    const/16 v1, 0x80

    new-array v1, v1, [B

    .line 174
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 175
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private a([BLjava/lang/String;)[B
    .locals 8

    .prologue
    const/4 v4, 0x4

    .line 123
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 124
    const-string v0, "avro/binary"

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/bv;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpPOSTAvroBytesToUrl: reportUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 128
    const-string v2, "accept"

    const-string v3, "avro/binary"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "FM-Checksum"

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/bv;->a([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 132
    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 133
    const/16 v3, 0x3a98

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 134
    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const-string v4, "http.protocol.expect-continue"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 136
    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/iz;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 138
    :try_start_0
    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 139
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 140
    const/16 v4, 0xc8

    if-ne v0, v4, :cond_4

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 142
    const/4 v0, 0x4

    sget-object v4, Lcom/flurry/android/monolithic/sdk/impl/bv;->a:Ljava/lang/String;

    const-string v5, "Request successful"

    invoke-static {v0, v4, v5}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/bv;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 145
    invoke-virtual {v1}, Lorg/apache/http/entity/ByteArrayEntity;->consumeContent()V

    .line 146
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/bv;->a([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string v4, "FM-Checksum"

    invoke-interface {v3, v4}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "FM-Checksum"

    invoke-interface {v3, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    :cond_0
    if-eqz v2, :cond_1

    .line 163
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 167
    :cond_1
    :goto_0
    return-object v0

    .line 151
    :cond_2
    const/4 v0, 0x6

    :try_start_1
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bv;->a:Ljava/lang/String;

    const-string v3, "Response was received, but checksum failed."

    invoke-static {v0, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :goto_1
    if-eqz v2, :cond_3

    .line 163
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 167
    :cond_3
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :cond_4
    const/4 v1, 0x6

    :try_start_2
    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/bv;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request to url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed with HTTP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    const/4 v1, 0x6

    :try_start_3
    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/bv;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request to url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed with IOException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 162
    if-eqz v2, :cond_3

    .line 163
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    .line 162
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 163
    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_5
    throw v0
.end method

.method private b([BLjava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/nu;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/flurry/android/monolithic/sdk/impl/nu;",
            ">([B",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 195
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/bv;->b:Lcom/flurry/android/monolithic/sdk/impl/ly;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/ly;->a(Ljava/io/InputStream;Lcom/flurry/android/monolithic/sdk/impl/ll;)Lcom/flurry/android/monolithic/sdk/impl/ll;

    move-result-object v0

    .line 197
    :try_start_0
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/nr;

    invoke-direct {v2, p2}, Lcom/flurry/android/monolithic/sdk/impl/nr;-><init>(Ljava/lang/Class;)V

    .line 198
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/nr;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/lx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/nu;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    :goto_0
    return-object v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/bv;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassCastException in parseAvroBinary:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/bv;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClassCastException in parseAvroBinary: bytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 203
    goto :goto_0

    .line 204
    :catch_1
    move-exception v0

    .line 205
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/bv;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException in parseAvroBinary:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/bv;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException in parseAvroBinary: bytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 208
    goto/16 :goto_0
.end method


# virtual methods
.method a([B)I
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/iv;

    invoke-direct {v0}, Lcom/flurry/android/monolithic/sdk/impl/iv;-><init>()V

    .line 182
    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/iv;->update([B)V

    .line 183
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/iv;->b()I

    move-result v0

    return v0
.end method

.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest;Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdResponse;
    .locals 2

    .prologue
    .line 62
    const-class v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdRequest;

    const-class v1, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdResponse;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/bv;->a(Lcom/flurry/android/monolithic/sdk/impl/nu;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/nu;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdResponse;

    .line 63
    return-object v0
.end method

.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogResponse;
    .locals 2

    .prologue
    .line 55
    const-class v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogRequest;

    const-class v1, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogResponse;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/bv;->a(Lcom/flurry/android/monolithic/sdk/impl/nu;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/nu;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/SdkLogResponse;

    .line 57
    return-object v0
.end method

.method a([BLjava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/nu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/flurry/android/monolithic/sdk/impl/nu;",
            ">([B",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bv;->a:Ljava/lang/String;

    const-string v2, "convertBytesToResponse: bytes array is null"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 111
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/bv;->b([BLjava/lang/Class;)Lcom/flurry/android/monolithic/sdk/impl/nu;

    move-result-object v0

    goto :goto_0
.end method

.method a(Lcom/flurry/android/monolithic/sdk/impl/nu;Ljava/lang/Class;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/flurry/android/monolithic/sdk/impl/nu;",
            ">(TA;",
            "Ljava/lang/Class",
            "<TA;>;)[B"
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    const/4 v0, 0x0

    .line 83
    if-nez p1, :cond_0

    .line 84
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/bv;->a:Ljava/lang/String;

    const-string v2, "convertRequestToByte: Request is null"

    invoke-static {v5, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    return-object v0

    .line 89
    :cond_0
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/ns;

    invoke-direct {v1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ns;-><init>(Ljava/lang/Class;)V

    .line 90
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 91
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/md;->a()Lcom/flurry/android/monolithic/sdk/impl/md;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/md;->b(Ljava/io/OutputStream;Lcom/flurry/android/monolithic/sdk/impl/lr;)Lcom/flurry/android/monolithic/sdk/impl/lr;

    move-result-object v3

    .line 94
    :try_start_0
    invoke-virtual {v1, p1, v3}, Lcom/flurry/android/monolithic/sdk/impl/ns;->a(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/mc;)V

    .line 95
    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/lr;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/bv;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error generating adlog request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
