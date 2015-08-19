.class Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;
.super Lorg/java_websocket/client/WebSocketClient;
.source "VisitorWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/visitor/api/internal/VisitorWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebSocketConnection"
.end annotation


# instance fields
.field private closeExpected:Z

.field final synthetic this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;


# direct methods
.method public constructor <init>(Lcom/boldchat/visitor/api/internal/VisitorWebSocket;Ljava/lang/String;)V
    .locals 3
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 143
    iput-object p1, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    .line 144
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;)V

    .line 146
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 149
    .local v1, "factory":Ljavax/net/ssl/SSLSocketFactory;
    :try_start_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->setSocket(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->connect()V

    .line 155
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->closeExpected:Z

    return p1
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->closeExpected:Z

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    # invokes: Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->reconnectWebSocket()Z
    invoke-static {v0}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->access$200(Lcom/boldchat/visitor/api/internal/VisitorWebSocket;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->getVisitorMessageListener()Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-result-object v0

    const/16 v1, -0x64

    iget-object v2, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->onClose(ILjava/lang/String;ZLcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V

    .line 204
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->getVisitorMessageListener()Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-result-object v0

    iget-object v1, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    invoke-interface {v0, p1, v1}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->onError(Ljava/lang/Exception;Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V

    .line 209
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 185
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "trimmedMessage":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 195
    .end local v2    # "trimmedMessage":Ljava/lang/String;
    :goto_0
    return-void

    .line 189
    .restart local v2    # "trimmedMessage":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/boldchat/visitor/api/json/JSONObject;

    invoke-direct {v1, p1}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    .local v1, "json":Lcom/boldchat/visitor/api/json/JSONObject;
    iget-object v3, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    invoke-virtual {v3, v1}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->processMessage(Lcom/boldchat/visitor/api/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    .end local v1    # "json":Lcom/boldchat/visitor/api/json/JSONObject;
    .end local v2    # "trimmedMessage":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to process message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 4
    .param p1, "handshakeData"    # Lorg/java_websocket/handshake/ServerHandshake;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    const/4 v2, 0x0

    iput v2, v1, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->reconnectAttempts:I

    .line 160
    iget-object v1, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->reconnectStarted:J

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v0, "param":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "LastMessageID"

    iget-object v2, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    invoke-virtual {v2}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->getLastMessageID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v1, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    const-string v2, "connect"

    new-instance v3, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection$1;

    invoke-direct {v3, p0}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection$1;-><init>(Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->sendRPC(Ljava/lang/String;Ljava/util/Map;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    .line 180
    return-void
.end method
