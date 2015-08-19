.class public Lcom/boldchat/visitor/api/PreChat;
.super Lcom/boldchat/visitor/api/Form;
.source "PreChat.java"


# direct methods
.method protected constructor <init>(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 0
    .param p1, "json"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/boldchat/visitor/api/Form;-><init>(Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 14
    return-void
.end method
