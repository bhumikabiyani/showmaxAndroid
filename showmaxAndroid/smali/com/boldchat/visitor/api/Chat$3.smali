.class Lcom/boldchat/visitor/api/Chat$3;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/boldchat/visitor/api/internal/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/visitor/api/Chat;->getUnavailableForm(Lcom/boldchat/visitor/api/ChatUnavailableListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/visitor/api/Chat;

.field final synthetic val$chatUnavailableListener:Lcom/boldchat/visitor/api/ChatUnavailableListener;


# direct methods
.method constructor <init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/ChatUnavailableListener;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat$3;->this$0:Lcom/boldchat/visitor/api/Chat;

    iput-object p2, p0, Lcom/boldchat/visitor/api/Chat$3;->val$chatUnavailableListener:Lcom/boldchat/visitor/api/ChatUnavailableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(ILjava/lang/String;Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "object"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$3;->val$chatUnavailableListener:Lcom/boldchat/visitor/api/ChatUnavailableListener;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$3;->val$chatUnavailableListener:Lcom/boldchat/visitor/api/ChatUnavailableListener;

    invoke-interface {v0, p1, p2}, Lcom/boldchat/visitor/api/ChatUnavailableListener;->onChatUnavailableFailed(ILjava/lang/String;)V

    .line 380
    :cond_0
    return-void
.end method

.method public failure(Ljava/io/IOException;)V
    .locals 3
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$3;->val$chatUnavailableListener:Lcom/boldchat/visitor/api/ChatUnavailableListener;

    if-eqz v0, :cond_0

    .line 385
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$3;->val$chatUnavailableListener:Lcom/boldchat/visitor/api/ChatUnavailableListener;

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/boldchat/visitor/api/ChatUnavailableListener;->onChatUnavailableFailed(ILjava/lang/String;)V

    .line 386
    :cond_0
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 387
    return-void

    .line 385
    :cond_1
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public success(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$3;->val$chatUnavailableListener:Lcom/boldchat/visitor/api/ChatUnavailableListener;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$3;->val$chatUnavailableListener:Lcom/boldchat/visitor/api/ChatUnavailableListener;

    new-instance v1, Lcom/boldchat/visitor/api/UnavailableForm;

    const-string v2, "UnavailableForm"

    invoke-virtual {p1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/boldchat/visitor/api/UnavailableForm;-><init>(Lcom/boldchat/visitor/api/json/JSONObject;)V

    invoke-interface {v0, v1}, Lcom/boldchat/visitor/api/ChatUnavailableListener;->onChatUnavailable(Lcom/boldchat/visitor/api/UnavailableForm;)V

    .line 374
    :cond_0
    return-void
.end method
