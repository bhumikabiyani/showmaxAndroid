.class public Lcom/boldchat/visitor/api/internal/VisitorWebSocket;
.super Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;
.source "VisitorWebSocket.java"

# interfaces
.implements Lcom/boldchat/visitor/api/internal/RPCSender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;
    }
.end annotation


# instance fields
.field account:Lcom/boldchat/visitor/api/Account;

.field chat:Lcom/boldchat/visitor/api/Chat;

.field connectedOnce:Z

.field rand:Ljava/util/Random;

.field reconnectAttempts:I

.field reconnectStarted:J

.field socket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/boldchat/visitor/api/Account;Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorMessageListener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "account"    # Lcom/boldchat/visitor/api/Account;
    .param p3, "chat"    # Lcom/boldchat/visitor/api/Chat;
    .param p4, "listener"    # Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    .prologue
    const/4 v1, 0x0

    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, p4, v0}, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;-><init>(Lcom/boldchat/visitor/api/internal/VisitorMessageListener;Z)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->url:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->rand:Ljava/util/Random;

    .line 33
    iput-boolean v1, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->connectedOnce:Z

    .line 35
    iput v1, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->reconnectAttempts:I

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->reconnectStarted:J

    .line 40
    iput-object p2, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->account:Lcom/boldchat/visitor/api/Account;

    .line 41
    iput-object p3, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->chat:Lcom/boldchat/visitor/api/Chat;

    .line 42
    iput-object p1, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->url:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->connectWebSocket()V

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcom/boldchat/visitor/api/internal/VisitorWebSocket;)V
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->connectWebSocket()V

    return-void
.end method

.method static synthetic access$200(Lcom/boldchat/visitor/api/internal/VisitorWebSocket;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->reconnectWebSocket()Z

    move-result v0

    return v0
.end method

.method private connectWebSocket()V
    .locals 3

    .prologue
    .line 104
    :try_start_0
    new-instance v1, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;

    iget-object v2, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->url:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;-><init>(Lcom/boldchat/visitor/api/internal/VisitorWebSocket;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->socket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private reconnectWebSocket()Z
    .locals 12

    .prologue
    const-wide/16 v4, 0x2710

    .line 111
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->getVisitorMessageListener()Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->connectedOnce:Z

    if-eqz v6, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->getVisitorMessageListener()Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-result-object v6

    invoke-interface {v6, p0}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->onReconnecting(Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V

    .line 114
    :cond_0
    iget v6, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->reconnectAttempts:I

    if-nez v6, :cond_1

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->reconnectStarted:J

    .line 117
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->reconnectStarted:J

    iget-object v10, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->chat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v10}, Lcom/boldchat/visitor/api/Chat;->getClientTimeout()I

    move-result v10

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 118
    iget v6, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->reconnectAttempts:I

    iget v7, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->reconnectAttempts:I

    mul-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x64

    int-to-long v2, v6

    .line 119
    .local v2, "sleepTime":J
    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    move-wide v2, v4

    .line 120
    :cond_2
    move-wide v0, v2

    .line 121
    .local v0, "sleep":J
    iget v4, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->reconnectAttempts:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->reconnectAttempts:I

    .line 122
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempting chat reconnect: attempt #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->reconnectAttempts:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$1;-><init>(Lcom/boldchat/visitor/api/internal/VisitorWebSocket;J)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 134
    const/4 v4, 0x1

    .line 136
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
    const/4 v1, 0x1

    .line 69
    invoke-virtual {p0, v1}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->setCloseExpected(Z)V

    .line 70
    iget-object v2, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->socket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;

    if-eqz v2, :cond_0

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->socket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;

    invoke-virtual {v2}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public connect()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->socket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->socket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->connect()V

    .line 57
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public reconnect()Z
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->close()Z

    .line 63
    invoke-direct {p0}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->connectWebSocket()V

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public sendMessage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->socket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;

    invoke-virtual {v0, p1}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->send(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public sendRPC(Ljava/lang/String;Ljava/util/Map;Lcom/boldchat/visitor/api/internal/ResultListener;)V
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/boldchat/visitor/api/internal/ResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/boldchat/visitor/api/internal/ResultListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/boldchat/visitor/api/json/JSONObject;

    invoke-direct {v0}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>()V

    .line 89
    .local v0, "call":Lcom/boldchat/visitor/api/json/JSONObject;
    new-instance v2, Lcom/boldchat/visitor/api/json/JSONArray;

    invoke-direct {v2}, Lcom/boldchat/visitor/api/json/JSONArray;-><init>()V

    .line 90
    .local v2, "paramArray":Lcom/boldchat/visitor/api/json/JSONArray;
    new-instance v3, Lcom/boldchat/visitor/api/json/JSONObject;

    invoke-direct {v3, p2}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 91
    .local v3, "realParams":Lcom/boldchat/visitor/api/json/JSONObject;
    iget-object v4, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->rand:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/boldchat/visitor/api/json/JSONArray;->put(Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONArray;

    .line 93
    const-string v4, "method"

    invoke-virtual {v0, v4, p1}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 94
    const-string v4, "params"

    invoke-virtual {v0, v4, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 95
    const-string v4, "id"

    invoke-virtual {v0, v4, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 96
    if-eqz p3, :cond_0

    .line 97
    invoke-virtual {p0, v1, p3}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->addResultListener(Ljava/lang/String;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    .line 99
    :cond_0
    iget-object v4, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->socket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->send(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setCloseExpected(Z)V
    .locals 1
    .param p1, "expected"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->socket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->socket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;

    # setter for: Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->closeExpected:Z
    invoke-static {v0, p1}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->access$002(Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;Z)Z

    .line 85
    :cond_0
    return-void
.end method
