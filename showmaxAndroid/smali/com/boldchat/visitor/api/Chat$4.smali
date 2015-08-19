.class Lcom/boldchat/visitor/api/Chat$4;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/boldchat/visitor/api/internal/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/visitor/api/Chat;->finishChat(Lcom/boldchat/visitor/api/ChatFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/visitor/api/Chat;

.field final synthetic val$listener:Lcom/boldchat/visitor/api/ChatFinishedListener;


# direct methods
.method constructor <init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/ChatFinishedListener;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat$4;->this$0:Lcom/boldchat/visitor/api/Chat;

    iput-object p2, p0, Lcom/boldchat/visitor/api/Chat$4;->val$listener:Lcom/boldchat/visitor/api/ChatFinishedListener;

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
    const/4 v3, 0x0

    .line 422
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$4;->this$0:Lcom/boldchat/visitor/api/Chat;

    # setter for: Lcom/boldchat/visitor/api/Chat;->oss:Lcom/boldchat/visitor/api/Chat$OSSListener;
    invoke-static {v0, v3}, Lcom/boldchat/visitor/api/Chat;->access$402(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/Chat$OSSListener;)Lcom/boldchat/visitor/api/Chat$OSSListener;

    .line 423
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to finish chat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$4;->val$listener:Lcom/boldchat/visitor/api/ChatFinishedListener;

    invoke-interface {v0, v3}, Lcom/boldchat/visitor/api/ChatFinishedListener;->onChatFinished(Lcom/boldchat/visitor/api/PostChat;)V

    .line 425
    return-void
.end method

.method public failure(Ljava/io/IOException;)V
    .locals 2
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    const/4 v1, 0x0

    .line 429
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$4;->this$0:Lcom/boldchat/visitor/api/Chat;

    # setter for: Lcom/boldchat/visitor/api/Chat;->oss:Lcom/boldchat/visitor/api/Chat$OSSListener;
    invoke-static {v0, v1}, Lcom/boldchat/visitor/api/Chat;->access$402(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/Chat$OSSListener;)Lcom/boldchat/visitor/api/Chat$OSSListener;

    .line 430
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 431
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$4;->val$listener:Lcom/boldchat/visitor/api/ChatFinishedListener;

    invoke-interface {v0, v1}, Lcom/boldchat/visitor/api/ChatFinishedListener;->onChatFinished(Lcom/boldchat/visitor/api/PostChat;)V

    .line 432
    return-void
.end method

.method public success(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 414
    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat$4;->this$0:Lcom/boldchat/visitor/api/Chat;

    # setter for: Lcom/boldchat/visitor/api/Chat;->oss:Lcom/boldchat/visitor/api/Chat$OSSListener;
    invoke-static {v2, v1}, Lcom/boldchat/visitor/api/Chat;->access$402(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/Chat$OSSListener;)Lcom/boldchat/visitor/api/Chat$OSSListener;

    .line 415
    const-string v2, "PostChat"

    invoke-virtual {p1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v0

    .line 416
    .local v0, "jsonForm":Lcom/boldchat/visitor/api/json/JSONObject;
    if-nez v0, :cond_0

    .line 417
    .local v1, "postChat":Lcom/boldchat/visitor/api/PostChat;
    :goto_0
    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat$4;->val$listener:Lcom/boldchat/visitor/api/ChatFinishedListener;

    invoke-interface {v2, v1}, Lcom/boldchat/visitor/api/ChatFinishedListener;->onChatFinished(Lcom/boldchat/visitor/api/PostChat;)V

    .line 418
    return-void

    .line 416
    .end local v1    # "postChat":Lcom/boldchat/visitor/api/PostChat;
    :cond_0
    new-instance v1, Lcom/boldchat/visitor/api/PostChat;

    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat$4;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->account:Lcom/boldchat/visitor/api/Account;
    invoke-static {v2}, Lcom/boldchat/visitor/api/Chat;->access$500(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$4;->this$0:Lcom/boldchat/visitor/api/Chat;

    invoke-direct {v1, v2, v3, v0}, Lcom/boldchat/visitor/api/PostChat;-><init>(Lcom/boldchat/visitor/api/Account;Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/json/JSONObject;)V

    goto :goto_0
.end method
