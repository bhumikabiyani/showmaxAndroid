.class public Lcom/boldchat/visitor/api/internal/VisitorLongPoll;
.super Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;
.source "VisitorLongPoll.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private account:Lcom/boldchat/visitor/api/Account;

.field private chat:Lcom/boldchat/visitor/api/Chat;

.field private closeExpected:Z

.field private input:Ljava/io/InputStream;

.field private reconnectAttempts:I

.field private reconnectStarted:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/boldchat/visitor/api/Account;Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorMessageListener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "account"    # Lcom/boldchat/visitor/api/Account;
    .param p3, "chat"    # Lcom/boldchat/visitor/api/Chat;
    .param p4, "listener"    # Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p4, v1}, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;-><init>(Lcom/boldchat/visitor/api/internal/VisitorMessageListener;Z)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->input:Ljava/io/InputStream;

    .line 24
    iput-boolean v1, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->closeExpected:Z

    .line 25
    iput v1, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->reconnectAttempts:I

    .line 30
    iput-object p2, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->account:Lcom/boldchat/visitor/api/Account;

    .line 31
    iput-object p3, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->chat:Lcom/boldchat/visitor/api/Chat;

    .line 32
    iput-object p1, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->url:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->connect()Z

    .line 34
    return-void
.end method

.method private reconnectSocket()Z
    .locals 12

    .prologue
    const-wide/16 v4, 0x2710

    .line 74
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->getVisitorMessageListener()Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->getVisitorMessageListener()Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-result-object v6

    invoke-interface {v6, p0}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->onReconnecting(Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V

    .line 77
    :cond_0
    iget v6, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->reconnectAttempts:I

    if-nez v6, :cond_1

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->reconnectStarted:J

    .line 80
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->reconnectStarted:J

    iget-object v10, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->chat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v10}, Lcom/boldchat/visitor/api/Chat;->getClientTimeout()I

    move-result v10

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 81
    iget v6, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->reconnectAttempts:I

    iget v7, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->reconnectAttempts:I

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x64

    int-to-long v2, v6

    .line 82
    .local v2, "sleepTime":J
    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    move-wide v2, v4

    .line 83
    :cond_2
    move-wide v0, v2

    .line 84
    .local v0, "sleep":J
    iget v4, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->reconnectAttempts:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->reconnectAttempts:I

    .line 85
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting chat reconnect: attempt #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->reconnectAttempts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/boldchat/visitor/api/internal/VisitorLongPoll$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll$1;-><init>(Lcom/boldchat/visitor/api/internal/VisitorLongPoll;J)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 97
    const/4 v4, 0x1

    .line 99
    .end local v0    # "sleep":J
    .end local v2    # "sleepTime":J
    :goto_0
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 63
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->setCloseExpected(Z)V

    .line 64
    iget-object v1, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->input:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 66
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->input:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return v2

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public connect()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->setCloseExpected(Z)V

    .line 44
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public reconnect()Z
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->close()Z

    .line 51
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->connect()Z

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 107
    :try_start_0
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->getLastMessageID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 108
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget-object v4, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->account:Lcom/boldchat/visitor/api/Account;

    invoke-virtual {v4}, Lcom/boldchat/visitor/api/Account;->getTimeout()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->account:Lcom/boldchat/visitor/api/Account;

    invoke-virtual {v4}, Lcom/boldchat/visitor/api/Account;->getTimeout()I

    move-result v4

    :goto_0
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 109
    iget-object v4, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->chat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v4}, Lcom/boldchat/visitor/api/Chat;->getClientTimeout()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 110
    const-string v4, "User-Agent"

    invoke-static {}, Lcom/boldchat/visitor/api/internal/RequestUtil;->getDefaultUserAgentString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v4, "Authorization"

    iget-object v5, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->account:Lcom/boldchat/visitor/api/Account;

    invoke-virtual {v5}, Lcom/boldchat/visitor/api/Account;->getAccountID()J

    move-result-wide v6

    iget-object v5, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->account:Lcom/boldchat/visitor/api/Account;

    invoke-virtual {v5}, Lcom/boldchat/visitor/api/Account;->getApiAccessKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcom/boldchat/visitor/api/internal/RequestUtil;->getAuthorizationHeader(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v4, "gzip"

    const-string v5, "Content-Encoding"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->input:Ljava/io/InputStream;

    .line 118
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->getVisitorMessageListener()Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->onOpen(Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V

    .line 121
    :cond_0
    new-instance v3, Lcom/boldchat/visitor/api/json/JSONArray;

    new-instance v4, Lcom/boldchat/visitor/api/json/JSONTokener;

    iget-object v5, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->input:Ljava/io/InputStream;

    invoke-direct {v4, v5}, Lcom/boldchat/visitor/api/json/JSONTokener;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Lcom/boldchat/visitor/api/json/JSONArray;-><init>(Lcom/boldchat/visitor/api/json/JSONTokener;)V

    .line 122
    .local v3, "result":Lcom/boldchat/visitor/api/json/JSONArray;
    iget-object v4, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->input:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 123
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->input:Ljava/io/InputStream;

    .line 124
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/boldchat/visitor/api/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 125
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v3}, Lcom/boldchat/visitor/api/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 126
    invoke-virtual {v3, v2}, Lcom/boldchat/visitor/api/json/JSONArray;->optJSONObject(I)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->processMessage(Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 108
    .end local v2    # "i":I
    .end local v3    # "result":Lcom/boldchat/visitor/api/json/JSONArray;
    :cond_1
    const/16 v4, 0x7530

    goto/16 :goto_0

    .line 116
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->input:Ljava/io/InputStream;
    :try_end_0
    .catch Lcom/boldchat/visitor/api/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 129
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Lcom/boldchat/visitor/api/json/JSONException;
    :try_start_1
    invoke-virtual {v1}, Lcom/boldchat/visitor/api/json/JSONException;->printStackTrace()V

    .line 131
    invoke-virtual {v1}, Lcom/boldchat/visitor/api/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/io/IOException;

    if-eqz v4, :cond_3

    .line 132
    iget-boolean v4, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->closeExpected:Z

    if-nez v4, :cond_3

    .line 133
    invoke-direct {p0}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->reconnectSocket()Z

    move-result v4

    if-nez v4, :cond_3

    .line 134
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->getVisitorMessageListener()Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-result-object v5

    const/16 v6, -0x64

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    :goto_3
    const/4 v7, 0x0

    invoke-interface {v5, v6, v4, v7, p0}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->onClose(ILjava/lang/String;ZLcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->input:Ljava/io/InputStream;

    if-eqz v4, :cond_4

    .line 147
    iget-object v4, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->input:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 153
    .end local v1    # "e":Lcom/boldchat/visitor/api/json/JSONException;
    :cond_4
    :goto_4
    return-void

    .line 146
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v3    # "result":Lcom/boldchat/visitor/api/json/JSONArray;
    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->input:Ljava/io/InputStream;

    if-eqz v4, :cond_4

    .line 147
    iget-object v4, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->input:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 149
    :catch_1
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 134
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "result":Lcom/boldchat/visitor/api/json/JSONArray;
    .local v1, "e":Lcom/boldchat/visitor/api/json/JSONException;
    :cond_6
    :try_start_4
    invoke-virtual {v1}, Lcom/boldchat/visitor/api/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    goto :goto_3

    .line 149
    :catch_2
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 138
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 139
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    iget-boolean v4, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->closeExpected:Z

    if-nez v4, :cond_7

    .line 140
    invoke-direct {p0}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->reconnectSocket()Z

    move-result v4

    if-nez v4, :cond_7

    .line 141
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->getVisitorMessageListener()Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-result-object v5

    const/16 v6, -0x64

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    :goto_5
    const/4 v7, 0x0

    invoke-interface {v5, v6, v4, v7, p0}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->onClose(ILjava/lang/String;ZLcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 146
    :cond_7
    :try_start_6
    iget-object v4, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->input:Ljava/io/InputStream;

    if-eqz v4, :cond_4

    .line 147
    iget-object v4, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->input:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    .line 149
    :catch_4
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 141
    .local v1, "e":Ljava/io/IOException;
    :cond_8
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v4

    goto :goto_5

    .line 145
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 146
    :try_start_8
    iget-object v5, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->input:Ljava/io/InputStream;

    if-eqz v5, :cond_9

    .line 147
    iget-object v5, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->input:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 151
    :cond_9
    :goto_6
    throw v4

    .line 149
    :catch_5
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public sendMessage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public setCloseExpected(Z)V
    .locals 0
    .param p1, "closeExpected"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->closeExpected:Z

    .line 58
    return-void
.end method
