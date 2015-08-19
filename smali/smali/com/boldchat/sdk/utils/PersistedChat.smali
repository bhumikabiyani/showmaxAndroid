.class public Lcom/boldchat/sdk/utils/PersistedChat;
.super Ljava/lang/Object;
.source "PersistedChat.java"


# instance fields
.field account:Lcom/boldchat/visitor/api/Account;

.field chat:Lcom/boldchat/visitor/api/Chat;

.field status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boldchat/sdk/utils/PersistedChat;->status:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Lcom/boldchat/visitor/api/Account;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/boldchat/sdk/utils/PersistedChat;->account:Lcom/boldchat/visitor/api/Account;

    return-object v0
.end method

.method public getChat()Lcom/boldchat/visitor/api/Chat;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/sdk/utils/PersistedChat;->chat:Lcom/boldchat/visitor/api/Chat;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/boldchat/sdk/utils/PersistedChat;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Lcom/boldchat/visitor/api/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/boldchat/visitor/api/Account;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/boldchat/sdk/utils/PersistedChat;->account:Lcom/boldchat/visitor/api/Account;

    .line 23
    return-void
.end method

.method public setChat(Lcom/boldchat/visitor/api/Chat;)V
    .locals 0
    .param p1, "chat"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/boldchat/sdk/utils/PersistedChat;->chat:Lcom/boldchat/visitor/api/Chat;

    .line 31
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/boldchat/sdk/utils/PersistedChat;->status:Ljava/lang/String;

    .line 39
    return-void
.end method
