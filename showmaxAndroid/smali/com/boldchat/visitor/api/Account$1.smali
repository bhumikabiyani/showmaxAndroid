.class Lcom/boldchat/visitor/api/Account$1;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Lcom/boldchat/visitor/api/internal/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/visitor/api/Account;->createChat(Lcom/boldchat/visitor/api/CreateChatListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/visitor/api/Account;

.field final synthetic val$createChatListener:Lcom/boldchat/visitor/api/CreateChatListener;


# direct methods
.method constructor <init>(Lcom/boldchat/visitor/api/Account;Lcom/boldchat/visitor/api/CreateChatListener;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/boldchat/visitor/api/Account$1;->this$0:Lcom/boldchat/visitor/api/Account;

    iput-object p2, p0, Lcom/boldchat/visitor/api/Account$1;->val$createChatListener:Lcom/boldchat/visitor/api/CreateChatListener;

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
    .line 163
    iget-object v0, p0, Lcom/boldchat/visitor/api/Account$1;->val$createChatListener:Lcom/boldchat/visitor/api/CreateChatListener;

    invoke-interface {v0, p1, p2}, Lcom/boldchat/visitor/api/CreateChatListener;->onChatCreateFailed(ILjava/lang/String;)V

    .line 164
    return-void
.end method

.method public failure(Ljava/io/IOException;)V
    .locals 3
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    .line 168
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    iget-object v1, p0, Lcom/boldchat/visitor/api/Account$1;->val$createChatListener:Lcom/boldchat/visitor/api/CreateChatListener;

    const/16 v2, -0x64

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/boldchat/visitor/api/CreateChatListener;->onChatCreateFailed(ILjava/lang/String;)V

    .line 170
    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public success(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 7
    .param p1, "json"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 147
    const-string v6, "PreChat"

    invoke-virtual {p1, v6}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_0

    move-object v2, v5

    .line 148
    .local v2, "preChat":Lcom/boldchat/visitor/api/PreChat;
    :goto_0
    const-string v6, "Brandings"

    invoke-virtual {p1, v6}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v0, v5

    .line 149
    .local v0, "brandings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    new-instance v1, Lcom/boldchat/visitor/api/Chat;

    iget-object v6, p0, Lcom/boldchat/visitor/api/Account$1;->this$0:Lcom/boldchat/visitor/api/Account;

    invoke-direct {v1, v6, p1, v0}, Lcom/boldchat/visitor/api/Chat;-><init>(Lcom/boldchat/visitor/api/Account;Lcom/boldchat/visitor/api/json/JSONObject;Ljava/util/Map;)V

    .line 151
    .local v1, "chat":Lcom/boldchat/visitor/api/Chat;
    const-string v6, "UnavailableReason"

    invoke-virtual {p1, v6, v5}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v4, v5

    .line 152
    .local v4, "unavailableReason":Lcom/boldchat/visitor/api/UnavailableReason;
    :goto_2
    const-string v6, "UnavailableForm"

    invoke-virtual {p1, v6}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_3

    move-object v3, v5

    .line 154
    .local v3, "unavailableForm":Lcom/boldchat/visitor/api/UnavailableForm;
    :goto_3
    if-nez v4, :cond_4

    .line 155
    iget-object v5, p0, Lcom/boldchat/visitor/api/Account$1;->val$createChatListener:Lcom/boldchat/visitor/api/CreateChatListener;

    invoke-interface {v5, v2, v1}, Lcom/boldchat/visitor/api/CreateChatListener;->onChatCreated(Lcom/boldchat/visitor/api/PreChat;Lcom/boldchat/visitor/api/Chat;)V

    .line 159
    :goto_4
    return-void

    .line 147
    .end local v0    # "brandings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "chat":Lcom/boldchat/visitor/api/Chat;
    .end local v2    # "preChat":Lcom/boldchat/visitor/api/PreChat;
    .end local v3    # "unavailableForm":Lcom/boldchat/visitor/api/UnavailableForm;
    .end local v4    # "unavailableReason":Lcom/boldchat/visitor/api/UnavailableReason;
    :cond_0
    new-instance v2, Lcom/boldchat/visitor/api/PreChat;

    const-string v6, "PreChat"

    invoke-virtual {p1, v6}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/boldchat/visitor/api/PreChat;-><init>(Lcom/boldchat/visitor/api/json/JSONObject;)V

    goto :goto_0

    .line 148
    .restart local v2    # "preChat":Lcom/boldchat/visitor/api/PreChat;
    :cond_1
    const-string v6, "Brandings"

    invoke-virtual {p1, v6}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/boldchat/visitor/api/internal/RequestUtil;->getStringMap(Lcom/boldchat/visitor/api/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 151
    .restart local v0    # "brandings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "chat":Lcom/boldchat/visitor/api/Chat;
    :cond_2
    const-string v6, "UnavailableReason"

    invoke-virtual {p1, v6}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/boldchat/visitor/api/UnavailableReason;->getUnavailableReason(Ljava/lang/String;)Lcom/boldchat/visitor/api/UnavailableReason;

    move-result-object v4

    goto :goto_2

    .line 152
    .restart local v4    # "unavailableReason":Lcom/boldchat/visitor/api/UnavailableReason;
    :cond_3
    new-instance v3, Lcom/boldchat/visitor/api/UnavailableForm;

    const-string v5, "UnavailableForm"

    invoke-virtual {p1, v5}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/boldchat/visitor/api/UnavailableForm;-><init>(Lcom/boldchat/visitor/api/json/JSONObject;)V

    goto :goto_3

    .line 157
    .restart local v3    # "unavailableForm":Lcom/boldchat/visitor/api/UnavailableForm;
    :cond_4
    iget-object v5, p0, Lcom/boldchat/visitor/api/Account$1;->val$createChatListener:Lcom/boldchat/visitor/api/CreateChatListener;

    invoke-interface {v5, v1, v4, v3, v0}, Lcom/boldchat/visitor/api/CreateChatListener;->onChatUnavailable(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/UnavailableReason;Lcom/boldchat/visitor/api/UnavailableForm;Ljava/util/Map;)V

    goto :goto_4
.end method
