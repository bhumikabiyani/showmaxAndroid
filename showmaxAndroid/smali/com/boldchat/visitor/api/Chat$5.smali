.class Lcom/boldchat/visitor/api/Chat$5;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/boldchat/visitor/api/internal/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/visitor/api/Chat;->submitPostChat(Lcom/boldchat/visitor/api/Form;Lcom/boldchat/visitor/api/PostChatSubmitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/visitor/api/Chat;

.field final synthetic val$postChat:Lcom/boldchat/visitor/api/Form;

.field final synthetic val$submitListener:Lcom/boldchat/visitor/api/PostChatSubmitListener;


# direct methods
.method constructor <init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/PostChatSubmitListener;Lcom/boldchat/visitor/api/Form;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat$5;->this$0:Lcom/boldchat/visitor/api/Chat;

    iput-object p2, p0, Lcom/boldchat/visitor/api/Chat$5;->val$submitListener:Lcom/boldchat/visitor/api/PostChatSubmitListener;

    iput-object p3, p0, Lcom/boldchat/visitor/api/Chat$5;->val$postChat:Lcom/boldchat/visitor/api/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(ILjava/lang/String;Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "object"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$5;->this$0:Lcom/boldchat/visitor/api/Chat;

    const/4 v1, 0x0

    # setter for: Lcom/boldchat/visitor/api/Chat;->oss:Lcom/boldchat/visitor/api/Chat$OSSListener;
    invoke-static {v0, v1}, Lcom/boldchat/visitor/api/Chat;->access$402(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/Chat$OSSListener;)Lcom/boldchat/visitor/api/Chat$OSSListener;

    .line 461
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

    .line 462
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$5;->val$submitListener:Lcom/boldchat/visitor/api/PostChatSubmitListener;

    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$5;->val$postChat:Lcom/boldchat/visitor/api/Form;

    invoke-interface {v0, v1, p2}, Lcom/boldchat/visitor/api/PostChatSubmitListener;->onPostChatSubmitFailed(Lcom/boldchat/visitor/api/Form;Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method public failure(Ljava/io/IOException;)V
    .locals 3
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    .line 467
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 468
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$5;->val$submitListener:Lcom/boldchat/visitor/api/PostChatSubmitListener;

    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat$5;->val$postChat:Lcom/boldchat/visitor/api/Form;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/boldchat/visitor/api/PostChatSubmitListener;->onPostChatSubmitFailed(Lcom/boldchat/visitor/api/Form;Ljava/lang/String;)V

    .line 469
    return-void

    .line 468
    :cond_0
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public success(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$5;->val$submitListener:Lcom/boldchat/visitor/api/PostChatSubmitListener;

    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$5;->val$postChat:Lcom/boldchat/visitor/api/Form;

    invoke-interface {v0, v1}, Lcom/boldchat/visitor/api/PostChatSubmitListener;->onPostChatSubmitted(Lcom/boldchat/visitor/api/Form;)V

    .line 456
    return-void
.end method
