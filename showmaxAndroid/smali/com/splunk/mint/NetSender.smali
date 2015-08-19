.class Lcom/splunk/mint/NetSender;
.super Lcom/splunk/mint/BaseExecutor;
.source "NetSender.java"

# interfaces
.implements Lcom/splunk/mint/InterfaceExecutor;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/splunk/mint/BaseExecutor;-><init>()V

    return-void
.end method

.method private findAllActions(Ljava/lang/String;)I
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 204
    const-string v3, "\\{\\^[0-9]+?\\^[a-z]+?\\^[0-9]+?\\}"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 205
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 206
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 207
    .local v0, "count":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    return v0
.end method

.method private findAllErrors(Ljava/lang/String;)I
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/splunk/mint/EnumActionType;->error:Lcom/splunk/mint/EnumActionType;

    invoke-virtual {v4}, Lcom/splunk/mint/EnumActionType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 215
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 216
    .local v1, "m":Ljava/util/regex/Matcher;
    const/4 v0, 0x0

    .line 217
    .local v0, "count":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    return v0
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/splunk/mint/NetSender;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/splunk/mint/NetSender;->executor:Ljava/util/concurrent/ExecutorService;

    .line 227
    :cond_0
    sget-object v0, Lcom/splunk/mint/NetSender;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public declared-synchronized send(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "saveOnFail"    # Z

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/splunk/mint/LowPriorityThreadFactory;

    invoke-direct {v1}, Lcom/splunk/mint/LowPriorityThreadFactory;-><init>()V

    new-instance v2, Lcom/splunk/mint/NetSender$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/splunk/mint/NetSender$1;-><init>(Lcom/splunk/mint/NetSender;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/splunk/mint/LowPriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 39
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {p0}, Lcom/splunk/mint/NetSender;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/splunk/mint/NetSender;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit p0

    return-void

    .line 31
    .end local v0    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sendBlocking(Ljava/lang/String;Ljava/lang/String;Z)Lcom/splunk/mint/NetSenderResponse;
    .locals 22
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "saveOnFail"    # Z

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    new-instance v13, Lcom/splunk/mint/NetSenderResponse;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v13, v0, v1}, Lcom/splunk/mint/NetSenderResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v13, "mNetSenderResponse":Lcom/splunk/mint/NetSenderResponse;
    if-nez p2, :cond_2

    .line 53
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v21, "null data!"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/splunk/mint/NetSenderResponse;->setException(Ljava/lang/Exception;)V

    .line 54
    sget-object v20, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    if-eqz v20, :cond_0

    .line 55
    sget-object v20, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Lcom/splunk/mint/MintCallback;->netSenderResponse(Lcom/splunk/mint/NetSenderResponse;)V

    .line 58
    :cond_0
    invoke-virtual {v13}, Lcom/splunk/mint/NetSenderResponse;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/splunk/mint/Logger;->logInfo(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v13

    .line 63
    :cond_2
    if-nez p1, :cond_4

    .line 64
    const/16 v16, 0x0

    .line 65
    .local v16, "numOfErrors":I
    const/4 v15, 0x0

    .line 67
    .local v15, "numOfActions":I
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/splunk/mint/NetSender;->findAllActions(Ljava/lang/String;)I

    move-result v14

    .line 68
    .local v14, "numAllActions":I
    if-lez v14, :cond_3

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/splunk/mint/NetSender;->findAllErrors(Ljava/lang/String;)I

    move-result v16

    .line 70
    sub-int v15, v14, v16

    .line 72
    :cond_3
    move/from16 v0, v16

    invoke-static {v0, v15}, Lcom/splunk/mint/MintUrls;->getURL(II)Ljava/lang/String;

    move-result-object p1

    .line 75
    .end local v14    # "numAllActions":I
    .end local v15    # "numOfActions":I
    .end local v16    # "numOfErrors":I
    :cond_4
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "NetSender: Sending data to url: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/splunk/mint/Logger;->logInfo(Ljava/lang/String;)V

    .line 77
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 81
    .local v9, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-interface {v9}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v17

    .line 82
    .local v17, "params":Lorg/apache/http/params/HttpParams;
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 83
    const/16 v20, 0x4e20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 84
    const/16 v20, 0x4e20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 86
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 87
    .local v10, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const-string v20, "Content-Type"

    const-string v21, "application/x-gzip"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    const/16 v18, 0x0

    .line 90
    .local v18, "response":Lorg/apache/http/HttpResponse;
    const/4 v2, 0x0

    .line 91
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 94
    .local v7, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_3
    new-instance v8, Lcom/splunk/mint/NetSender$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v3}, Lcom/splunk/mint/NetSender$2;-><init>(Lcom/splunk/mint/NetSender;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 103
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .local v8, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 104
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 106
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 107
    .local v4, "byteArrayEntity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v10, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 108
    invoke-interface {v9, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 109
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 111
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    .line 113
    .local v19, "responseCode":I
    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/splunk/mint/NetSenderResponse;->setResponseCode(I)V

    .line 115
    if-nez v6, :cond_8

    const/16 v20, 0x190

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_8

    .line 116
    new-instance v20, Ljava/lang/Exception;

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/splunk/mint/NetSenderResponse;->setException(Ljava/lang/Exception;)V

    .line 117
    sget-object v20, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    if-eqz v20, :cond_5

    .line 118
    sget-object v20, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Lcom/splunk/mint/MintCallback;->netSenderResponse(Lcom/splunk/mint/NetSenderResponse;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 153
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 155
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 161
    :cond_6
    :goto_2
    if-eqz v8, :cond_7

    .line 163
    :try_start_6
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 170
    :cond_7
    :goto_3
    :try_start_7
    sget-object v20, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    if-eqz v20, :cond_1

    .line 171
    sget-object v20, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Lcom/splunk/mint/MintCallback;->netSenderResponse(Lcom/splunk/mint/NetSenderResponse;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 50
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "byteArrayEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v9    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v10    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v13    # "mNetSenderResponse":Lcom/splunk/mint/NetSenderResponse;
    .end local v17    # "params":Lorg/apache/http/params/HttpParams;
    .end local v18    # "response":Lorg/apache/http/HttpResponse;
    .end local v19    # "responseCode":I
    :catchall_0
    move-exception v20

    monitor-exit p0

    throw v20

    .line 122
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "byteArrayEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v9    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v10    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v13    # "mNetSenderResponse":Lcom/splunk/mint/NetSenderResponse;
    .restart local v17    # "params":Lorg/apache/http/params/HttpParams;
    .restart local v18    # "response":Lorg/apache/http/HttpResponse;
    .restart local v19    # "responseCode":I
    :cond_8
    if-eqz v6, :cond_9

    .line 123
    :try_start_8
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 124
    .local v11, "in":Ljava/io/BufferedReader;
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 125
    .local v12, "line":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 126
    invoke-virtual {v13, v12}, Lcom/splunk/mint/NetSenderResponse;->setServerResponse(Ljava/lang/String;)V

    .line 128
    .end local v11    # "in":Ljava/io/BufferedReader;
    .end local v12    # "line":Ljava/lang/String;
    :cond_9
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/splunk/mint/NetSenderResponse;->setSentSuccessfully(Ljava/lang/Boolean;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    .line 132
    .end local v4    # "byteArrayEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v19    # "responseCode":I
    :catch_0
    move-exception v5

    move-object v7, v8

    .end local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    move-object v2, v3

    .line 133
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v5, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_9
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "NetSender: Transmitting Exception "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/splunk/mint/Logger;->logError(Ljava/lang/String;)V

    .line 134
    sget-boolean v20, Lcom/splunk/mint/Mint;->DEBUG:Z

    if-eqz v20, :cond_a

    .line 135
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    :cond_a
    if-eqz v18, :cond_b

    .line 138
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/splunk/mint/NetSenderResponse;->setResponseCode(I)V

    .line 140
    :cond_b
    invoke-virtual {v13, v5}, Lcom/splunk/mint/NetSenderResponse;->setException(Ljava/lang/Exception;)V

    .line 141
    sget-object v20, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    if-eqz v20, :cond_c

    .line 142
    sget-object v20, Lcom/splunk/mint/Mint;->mintCallback:Lcom/splunk/mint/MintCallback;

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Lcom/splunk/mint/MintCallback;->netSenderResponse(Lcom/splunk/mint/NetSenderResponse;)V

    .line 147
    :cond_c
    if-eqz p3, :cond_d

    .line 148
    const-string v20, "NetSender: Couldn\'t send data, saving..."

    invoke-static/range {v20 .. v20}, Lcom/splunk/mint/Logger;->logWarning(Ljava/lang/String;)V

    .line 149
    new-instance v20, Lcom/splunk/mint/DataSaver;

    invoke-direct/range {v20 .. v20}, Lcom/splunk/mint/DataSaver;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/splunk/mint/DataSaver;->save(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 153
    :cond_d
    if-eqz v2, :cond_e

    .line 155
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 161
    :cond_e
    :goto_5
    if-eqz v7, :cond_1

    .line 163
    :try_start_b
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 164
    :catch_1
    move-exception v20

    goto/16 :goto_0

    .line 153
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v20

    :goto_6
    if-eqz v2, :cond_f

    .line 155
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 161
    :cond_f
    :goto_7
    if-eqz v7, :cond_10

    .line 163
    :try_start_d
    invoke-virtual {v7}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 166
    :cond_10
    :goto_8
    :try_start_e
    throw v20
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 156
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "byteArrayEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v19    # "responseCode":I
    :catch_2
    move-exception v20

    goto/16 :goto_2

    .line 164
    :catch_3
    move-exception v20

    goto/16 :goto_3

    .line 156
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "byteArrayEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v19    # "responseCode":I
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "e":Ljava/lang/Exception;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_4
    move-exception v20

    goto :goto_5

    .end local v5    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v21

    goto :goto_7

    .line 164
    :catch_6
    move-exception v21

    goto :goto_8

    .line 153
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v20

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catchall_3
    move-exception v20

    move-object v7, v8

    .end local v8    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v7    # "gos":Ljava/util/zip/GZIPOutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 132
    :catch_7
    move-exception v5

    goto :goto_4

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_8
    move-exception v5

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_4
.end method

.method public declared-synchronized sendBlocking(Ljava/lang/String;Z)Lcom/splunk/mint/NetSenderResponse;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "saveOnFail"    # Z

    .prologue
    .line 45
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/splunk/mint/NetSender;->sendBlocking(Ljava/lang/String;Ljava/lang/String;Z)Lcom/splunk/mint/NetSenderResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
