.class Lcom/boldchat/visitor/api/Account$2;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Lcom/boldchat/visitor/api/internal/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/visitor/api/Account;->getChatAvailability(Lcom/boldchat/visitor/api/ChatAvailabilityListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/visitor/api/Account;

.field final synthetic val$availabilityListener:Lcom/boldchat/visitor/api/ChatAvailabilityListener;


# direct methods
.method constructor <init>(Lcom/boldchat/visitor/api/Account;Lcom/boldchat/visitor/api/ChatAvailabilityListener;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/boldchat/visitor/api/Account$2;->this$0:Lcom/boldchat/visitor/api/Account;

    iput-object p2, p0, Lcom/boldchat/visitor/api/Account$2;->val$availabilityListener:Lcom/boldchat/visitor/api/ChatAvailabilityListener;

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
    .line 198
    iget-object v0, p0, Lcom/boldchat/visitor/api/Account$2;->val$availabilityListener:Lcom/boldchat/visitor/api/ChatAvailabilityListener;

    invoke-interface {v0, p1, p2}, Lcom/boldchat/visitor/api/ChatAvailabilityListener;->onChatAvailabilityFailed(ILjava/lang/String;)V

    .line 199
    return-void
.end method

.method public failure(Ljava/io/IOException;)V
    .locals 3
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    .line 203
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 204
    iget-object v1, p0, Lcom/boldchat/visitor/api/Account$2;->val$availabilityListener:Lcom/boldchat/visitor/api/ChatAvailabilityListener;

    const/16 v2, -0x64

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/boldchat/visitor/api/ChatAvailabilityListener;->onChatAvailabilityFailed(ILjava/lang/String;)V

    .line 205
    return-void

    .line 204
    :cond_0
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public success(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 186
    # setter for: Lcom/boldchat/visitor/api/Account;->lastAvailabilityResponse:Lcom/boldchat/visitor/api/json/JSONObject;
    invoke-static {p1}, Lcom/boldchat/visitor/api/Account;->access$002(Lcom/boldchat/visitor/api/json/JSONObject;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 187
    const-string v2, "Available"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/boldchat/visitor/api/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 188
    .local v0, "available":Z
    if-eqz v0, :cond_0

    .line 189
    iget-object v2, p0, Lcom/boldchat/visitor/api/Account$2;->val$availabilityListener:Lcom/boldchat/visitor/api/ChatAvailabilityListener;

    invoke-interface {v2}, Lcom/boldchat/visitor/api/ChatAvailabilityListener;->onChatAvailable()V

    .line 194
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string v2, "UnavailableReason"

    invoke-virtual {p1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/boldchat/visitor/api/UnavailableReason;->getUnavailableReason(Ljava/lang/String;)Lcom/boldchat/visitor/api/UnavailableReason;

    move-result-object v1

    .line 192
    .local v1, "reason":Lcom/boldchat/visitor/api/UnavailableReason;
    iget-object v2, p0, Lcom/boldchat/visitor/api/Account$2;->val$availabilityListener:Lcom/boldchat/visitor/api/ChatAvailabilityListener;

    invoke-interface {v2, v1}, Lcom/boldchat/visitor/api/ChatAvailabilityListener;->onChatUnavailable(Lcom/boldchat/visitor/api/UnavailableReason;)V

    goto :goto_0
.end method
