.class public Lcom/boldchat/visitor/api/PostChat;
.super Lcom/boldchat/visitor/api/Form;
.source "PostChat.java"


# direct methods
.method protected constructor <init>(Lcom/boldchat/visitor/api/Account;Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 0
    .param p1, "account"    # Lcom/boldchat/visitor/api/Account;
    .param p2, "chat"    # Lcom/boldchat/visitor/api/Chat;
    .param p3, "json"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 13
    invoke-direct {p0, p3}, Lcom/boldchat/visitor/api/Form;-><init>(Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 14
    return-void
.end method
