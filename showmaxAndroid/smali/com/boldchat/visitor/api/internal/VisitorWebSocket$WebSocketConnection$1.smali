.class Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection$1;
.super Ljava/lang/Object;
.source "VisitorWebSocket.java"

# interfaces
.implements Lcom/boldchat/visitor/api/internal/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;


# direct methods
.method constructor <init>(Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection$1;->this$1:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(ILjava/lang/String;Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "object"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection$1;->this$1:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;

    iget-object v0, v0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->getVisitorMessageListener()Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-result-object v0

    const/16 v1, -0x64

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection$1;->this$1:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;

    iget-object v3, v3, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->onClose(ILjava/lang/String;ZLcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V

    .line 173
    return-void
.end method

.method public failure(Ljava/io/IOException;)V
    .locals 5
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection$1;->this$1:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;

    iget-object v0, v0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->getVisitorMessageListener()Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-result-object v1

    const/16 v2, -0x64

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection$1;->this$1:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;

    iget-object v4, v4, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->onClose(ILjava/lang/String;ZLcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V

    .line 178
    return-void

    .line 177
    :cond_0
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public success(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection$1;->this$1:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;

    iget-object v0, v0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->connectedOnce:Z

    .line 167
    iget-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection$1;->this$1:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;

    iget-object v0, v0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->getVisitorMessageListener()Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-result-object v0

    iget-object v1, p0, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection$1;->this$1:Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;

    iget-object v1, v1, Lcom/boldchat/visitor/api/internal/VisitorWebSocket$WebSocketConnection;->this$0:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    invoke-interface {v0, v1}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->onOpen(Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V

    .line 168
    return-void
.end method
