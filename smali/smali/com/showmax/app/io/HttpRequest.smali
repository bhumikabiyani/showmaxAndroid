.class public Lcom/showmax/app/io/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/io/HttpRequest$RequestType;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x3a98


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBaseUrl:Ljava/lang/String;

.field private mConnection:Ljava/net/HttpURLConnection;

.field private mParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestType:Lcom/showmax/app/io/HttpRequest$RequestType;

.field private mResponse:Lcom/showmax/app/io/HttpResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "requestProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/showmax/app/io/HttpRequest$RequestType;->GET:Lcom/showmax/app/io/HttpRequest$RequestType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/showmax/app/io/HttpRequest;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/showmax/app/io/HttpRequest$RequestType;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/showmax/app/io/HttpRequest$RequestType;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p4, "requestType"    # Lcom/showmax/app/io/HttpRequest$RequestType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/showmax/app/io/HttpRequest$RequestType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "requestProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Lcom/showmax/app/io/HttpRequest$RequestType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/io/HttpRequest;->TAG:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/showmax/app/io/HttpRequest;->mBaseUrl:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/showmax/app/io/HttpRequest;->mParameters:Ljava/util/HashMap;

    .line 68
    iput-object p3, p0, Lcom/showmax/app/io/HttpRequest;->mRequestProperties:Ljava/util/HashMap;

    .line 69
    iput-object p4, p0, Lcom/showmax/app/io/HttpRequest;->mRequestType:Lcom/showmax/app/io/HttpRequest$RequestType;

    .line 70
    new-instance v0, Lcom/showmax/app/io/HttpResponse;

    invoke-direct {v0}, Lcom/showmax/app/io/HttpResponse;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/io/HttpRequest;->mResponse:Lcom/showmax/app/io/HttpResponse;

    .line 71
    return-void
.end method

.method private constructUrlRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p1, "baseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 207
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-direct {p0, p2}, Lcom/showmax/app/io/HttpRequest;->getQueryParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getQueryParams(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v4, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 232
    .local v2, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 234
    .local v3, "keyListLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 236
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 238
    .local v1, "key":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v3, :cond_0

    .line 243
    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "keyListLength":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private setRequestProperties(Ljava/net/URLConnection;Ljava/util/Map;)V
    .locals 4
    .param p1, "connection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p2, "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 259
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 261
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 263
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public getResponse()Lcom/showmax/app/io/HttpResponse;
    .locals 17

    .prologue
    .line 81
    const/4 v11, 0x0

    .line 82
    .local v11, "urlString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 85
    .local v9, "url":Ljava/net/URL;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mRequestType:Lcom/showmax/app/io/HttpRequest$RequestType;

    sget-object v14, Lcom/showmax/app/io/HttpRequest$RequestType;->GET:Lcom/showmax/app/io/HttpRequest$RequestType;

    invoke-virtual {v13, v14}, Lcom/showmax/app/io/HttpRequest$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 87
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mBaseUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/showmax/app/io/HttpRequest;->mParameters:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/showmax/app/io/HttpRequest;->constructUrlRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 92
    :goto_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 93
    .end local v9    # "url":Ljava/net/URL;
    .local v10, "url":Ljava/net/URL;
    :try_start_1
    const-string v13, "[HttpRequest]::[getResponse]::[REQUEST %s]"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6

    .line 111
    const/4 v6, -0x1

    .line 112
    .local v6, "responseCode":I
    const/4 v7, 0x0

    .line 113
    .local v7, "responseString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 117
    .local v3, "errorMessage":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    .line 118
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/showmax/app/io/HttpRequest;->mRequestType:Lcom/showmax/app/io/HttpRequest$RequestType;

    invoke-virtual {v14}, Lcom/showmax/app/io/HttpRequest$RequestType;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v14, 0x3a98

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v14, 0x3a98

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 122
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/showmax/app/io/HttpRequest;->mRequestProperties:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/showmax/app/io/HttpRequest;->setRequestProperties(Ljava/net/URLConnection;Ljava/util/Map;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mRequestType:Lcom/showmax/app/io/HttpRequest$RequestType;

    sget-object v14, Lcom/showmax/app/io/HttpRequest$RequestType;->POST:Lcom/showmax/app/io/HttpRequest$RequestType;

    invoke-virtual {v13, v14}, Lcom/showmax/app/io/HttpRequest$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 127
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 128
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 130
    .local v5, "os":Ljava/io/OutputStream;
    new-instance v12, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/OutputStreamWriter;

    const-string v14, "UTF-8"

    invoke-direct {v13, v5, v14}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 132
    .local v12, "writer":Ljava/io/BufferedWriter;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mParameters:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/showmax/app/io/HttpRequest;->getQueryParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->flush()V

    .line 134
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V

    .line 135
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 139
    .end local v5    # "os":Ljava/io/OutputStream;
    .end local v12    # "writer":Ljava/io/BufferedWriter;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mRequestType:Lcom/showmax/app/io/HttpRequest$RequestType;

    sget-object v14, Lcom/showmax/app/io/HttpRequest$RequestType;->GET:Lcom/showmax/app/io/HttpRequest$RequestType;

    invoke-virtual {v13, v14}, Lcom/showmax/app/io/HttpRequest$RequestType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 145
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    .local v8, "strBuffer":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    const-string v15, "UTF-8"

    invoke-direct {v13, v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 148
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 150
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 159
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v8    # "strBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/net/SocketTimeoutException;
    :try_start_3
    const-string v13, "[HttpRequest]::[getResponse]::[SocketTimeoutException: %s]"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    const/16 v6, 0x198

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mResponse:Lcom/showmax/app/io/HttpResponse;

    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/showmax/app/io/HttpResponse;->setErrorMessage(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v13, :cond_1

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 193
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mResponse:Lcom/showmax/app/io/HttpResponse;

    invoke-virtual {v13, v6}, Lcom/showmax/app/io/HttpResponse;->setResultCode(I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mResponse:Lcom/showmax/app/io/HttpResponse;

    invoke-virtual {v13, v7}, Lcom/showmax/app/io/HttpResponse;->setResponse(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mResponse:Lcom/showmax/app/io/HttpResponse;

    invoke-virtual {v13, v3}, Lcom/showmax/app/io/HttpResponse;->setErrorMessage(Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mResponse:Lcom/showmax/app/io/HttpResponse;

    move-object v9, v10

    .end local v3    # "errorMessage":Ljava/lang/String;
    .end local v6    # "responseCode":I
    .end local v7    # "responseString":Ljava/lang/String;
    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    :goto_3
    return-object v13

    .line 90
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mBaseUrl:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/showmax/app/io/HttpRequest;->constructUrlRequest(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v11

    goto/16 :goto_0

    .line 95
    :catch_1
    move-exception v2

    .line 97
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :goto_4
    const-string v13, "[HttpRequest]::[getResponse]::[UnsupportedEncodingException: %s]"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mResponse:Lcom/showmax/app/io/HttpResponse;

    const/16 v14, 0x29a

    invoke-virtual {v13, v14}, Lcom/showmax/app/io/HttpResponse;->setResultCode(I)V

    .line 99
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mResponse:Lcom/showmax/app/io/HttpResponse;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/showmax/app/io/HttpResponse;->setErrorMessage(Ljava/lang/String;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mResponse:Lcom/showmax/app/io/HttpResponse;

    goto :goto_3

    .line 102
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v2

    .line 104
    .local v2, "e":Ljava/net/MalformedURLException;
    :goto_5
    const-string v13, "[HttpRequest]::[getResponse]::[MalformedURLException: %s]"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mResponse:Lcom/showmax/app/io/HttpResponse;

    const/16 v14, 0x29a

    invoke-virtual {v13, v14}, Lcom/showmax/app/io/HttpResponse;->setResultCode(I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mResponse:Lcom/showmax/app/io/HttpResponse;

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/showmax/app/io/HttpResponse;->setErrorMessage(Ljava/lang/String;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mResponse:Lcom/showmax/app/io/HttpResponse;

    goto :goto_3

    .line 153
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "errorMessage":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "responseCode":I
    .restart local v7    # "responseString":Ljava/lang/String;
    .restart local v8    # "strBuffer":Ljava/lang/StringBuffer;
    .restart local v10    # "url":Ljava/net/URL;
    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 155
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 157
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v8    # "strBuffer":Ljava/lang/StringBuffer;
    :cond_4
    const-string v13, "[HttpRequest]::[getResponse]::[RESPONSE status %d]::[%s]"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v13, :cond_1

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 165
    :catch_3
    move-exception v2

    .line 167
    .local v2, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_6
    const-string v13, "[HttpRequest]::[getResponse]::[ConnectTimeoutException: %s]"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v2}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    const/16 v6, 0x198

    .line 169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mResponse:Lcom/showmax/app/io/HttpResponse;

    invoke-virtual {v2}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/showmax/app/io/HttpResponse;->setErrorMessage(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v13, :cond_1

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 171
    .end local v2    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_4
    move-exception v2

    .line 173
    .local v2, "e":Ljava/io/IOException;
    :try_start_7
    const-string v13, "[HttpRequest]::[getResponse]::[IOException: %s]"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    const/16 v6, 0x29a

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mResponse:Lcom/showmax/app/io/HttpResponse;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/showmax/app/io/HttpResponse;->setErrorMessage(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v13, :cond_1

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 177
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v13, "[HttpRequest]::[getResponse]::[IOException: %s]"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    const/16 v6, 0x29a

    .line 182
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mResponse:Lcom/showmax/app/io/HttpResponse;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/showmax/app/io/HttpResponse;->setErrorMessage(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 186
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v13, :cond_1

    .line 188
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 186
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v14, :cond_5

    .line 188
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/showmax/app/io/HttpRequest;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v13

    .line 102
    .end local v3    # "errorMessage":Ljava/lang/String;
    .end local v6    # "responseCode":I
    .end local v7    # "responseString":Ljava/lang/String;
    :catch_6
    move-exception v2

    move-object v9, v10

    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto/16 :goto_5

    .line 95
    .end local v9    # "url":Ljava/net/URL;
    .restart local v10    # "url":Ljava/net/URL;
    :catch_7
    move-exception v2

    move-object v9, v10

    .end local v10    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    goto/16 :goto_4
.end method
