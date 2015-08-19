.class Lcom/boldchat/visitor/api/Chat$StartChatResultListener;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/boldchat/visitor/api/internal/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/visitor/api/Chat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartChatResultListener"
.end annotation


# instance fields
.field private final listener:Lcom/boldchat/visitor/api/ChatStartListener;

.field final synthetic this$0:Lcom/boldchat/visitor/api/Chat;


# direct methods
.method public constructor <init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/ChatStartListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/boldchat/visitor/api/ChatStartListener;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat$StartChatResultListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    iput-object p2, p0, Lcom/boldchat/visitor/api/Chat$StartChatResultListener;->listener:Lcom/boldchat/visitor/api/ChatStartListener;

    .line 730
    return-void
.end method


# virtual methods
.method public failure(ILjava/lang/String;Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "object"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$StartChatResultListener;->listener:Lcom/boldchat/visitor/api/ChatStartListener;

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$StartChatResultListener;->listener:Lcom/boldchat/visitor/api/ChatStartListener;

    invoke-interface {v0, p1, p2}, Lcom/boldchat/visitor/api/ChatStartListener;->onChatStartFailed(ILjava/lang/String;)V

    .line 753
    :cond_0
    return-void
.end method

.method public failure(Ljava/io/IOException;)V
    .locals 3
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    .line 757
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 758
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$StartChatResultListener;->listener:Lcom/boldchat/visitor/api/ChatStartListener;

    if-eqz v0, :cond_0

    .line 759
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$StartChatResultListener;->listener:Lcom/boldchat/visitor/api/ChatStartListener;

    const/16 v2, -0x64

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/boldchat/visitor/api/ChatStartListener;->onChatStartFailed(ILjava/lang/String;)V

    .line 760
    :cond_0
    return-void

    .line 759
    :cond_1
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public success(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 734
    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat$StartChatResultListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # invokes: Lcom/boldchat/visitor/api/Chat;->updateChatValues(Lcom/boldchat/visitor/api/json/JSONObject;)V
    invoke-static {v2, p1}, Lcom/boldchat/visitor/api/Chat;->access$1100(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 736
    const-string v2, "UnavailableReason"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 737
    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat$StartChatResultListener;->listener:Lcom/boldchat/visitor/api/ChatStartListener;

    if-eqz v2, :cond_0

    .line 738
    const-string v2, "UnavailableReason"

    invoke-virtual {p1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/boldchat/visitor/api/UnavailableReason;->getUnavailableReason(Ljava/lang/String;)Lcom/boldchat/visitor/api/UnavailableReason;

    move-result-object v0

    .line 739
    .local v0, "reason":Lcom/boldchat/visitor/api/UnavailableReason;
    new-instance v1, Lcom/boldchat/visitor/api/UnavailableForm;

    const-string v2, "UnavailableForm"

    invoke-virtual {p1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/boldchat/visitor/api/UnavailableForm;-><init>(Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 740
    .local v1, "unavailableForm":Lcom/boldchat/visitor/api/UnavailableForm;
    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat$StartChatResultListener;->listener:Lcom/boldchat/visitor/api/ChatStartListener;

    invoke-interface {v2, v0, v1}, Lcom/boldchat/visitor/api/ChatStartListener;->onChatUnavailable(Lcom/boldchat/visitor/api/UnavailableReason;Lcom/boldchat/visitor/api/UnavailableForm;)V

    .line 747
    .end local v0    # "reason":Lcom/boldchat/visitor/api/UnavailableReason;
    .end local v1    # "unavailableForm":Lcom/boldchat/visitor/api/UnavailableForm;
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat$StartChatResultListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # invokes: Lcom/boldchat/visitor/api/Chat;->connectSockets()V
    invoke-static {v2}, Lcom/boldchat/visitor/api/Chat;->access$000(Lcom/boldchat/visitor/api/Chat;)V

    .line 744
    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat$StartChatResultListener;->listener:Lcom/boldchat/visitor/api/ChatStartListener;

    if-eqz v2, :cond_0

    .line 745
    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat$StartChatResultListener;->listener:Lcom/boldchat/visitor/api/ChatStartListener;

    invoke-interface {v2}, Lcom/boldchat/visitor/api/ChatStartListener;->onChatStarted()V

    goto :goto_0
.end method
