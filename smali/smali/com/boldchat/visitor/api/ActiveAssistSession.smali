.class public Lcom/boldchat/visitor/api/ActiveAssistSession;
.super Ljava/lang/Object;
.source "ActiveAssistSession.java"


# instance fields
.field private activeAssistID:Ljava/lang/Long;

.field private activeAssistType:Lcom/boldchat/visitor/api/ActiveAssistType;

.field private ended:Ljava/util/Date;

.field private pinCode:Ljava/lang/String;

.field private started:Ljava/util/Date;


# direct methods
.method protected constructor <init>(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 0
    .param p1, "json"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/boldchat/visitor/api/ActiveAssistSession;->updateValues(Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getActiveAssistID()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/boldchat/visitor/api/ActiveAssistSession;->activeAssistID:Ljava/lang/Long;

    return-object v0
.end method

.method public getActiveAssistType()Lcom/boldchat/visitor/api/ActiveAssistType;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boldchat/visitor/api/ActiveAssistSession;->activeAssistType:Lcom/boldchat/visitor/api/ActiveAssistType;

    return-object v0
.end method

.method public getEnded()Ljava/util/Date;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/boldchat/visitor/api/ActiveAssistSession;->ended:Ljava/util/Date;

    return-object v0
.end method

.method public getPinCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/boldchat/visitor/api/ActiveAssistSession;->pinCode:Ljava/lang/String;

    return-object v0
.end method

.method public getStarted()Ljava/util/Date;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boldchat/visitor/api/ActiveAssistSession;->started:Ljava/util/Date;

    return-object v0
.end method

.method protected updateValues(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 7
    .param p1, "json"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 61
    const-string v5, "ActiveAssistID"

    invoke-virtual {p1, v5, v6}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "activeAssistID":Ljava/lang/String;
    const-string v5, "ActiveAssistType"

    invoke-virtual {p1, v5, v6}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "activeAssistType":Ljava/lang/String;
    const-string v5, "PinCode"

    invoke-virtual {p1, v5, v6}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "pinCode":Ljava/lang/String;
    const-string v5, "Started"

    invoke-virtual {p1, v5, v6}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "started":Ljava/lang/String;
    const-string v5, "Ended"

    invoke-virtual {p1, v5, v6}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "ended":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 68
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/boldchat/visitor/api/ActiveAssistSession;->activeAssistID:Ljava/lang/Long;

    .line 69
    :cond_0
    if-eqz v1, :cond_1

    .line 70
    invoke-static {v1}, Lcom/boldchat/visitor/api/ActiveAssistType;->getActiveAssistType(Ljava/lang/String;)Lcom/boldchat/visitor/api/ActiveAssistType;

    move-result-object v5

    iput-object v5, p0, Lcom/boldchat/visitor/api/ActiveAssistSession;->activeAssistType:Lcom/boldchat/visitor/api/ActiveAssistType;

    .line 71
    :cond_1
    if-eqz v3, :cond_2

    .line 72
    iput-object v3, p0, Lcom/boldchat/visitor/api/ActiveAssistSession;->pinCode:Ljava/lang/String;

    .line 73
    :cond_2
    if-eqz v4, :cond_3

    .line 74
    invoke-static {v4}, Lcom/boldchat/visitor/api/internal/RequestUtil;->getDateFromISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/boldchat/visitor/api/ActiveAssistSession;->started:Ljava/util/Date;

    .line 75
    :cond_3
    if-eqz v2, :cond_4

    .line 76
    invoke-static {v2}, Lcom/boldchat/visitor/api/internal/RequestUtil;->getDateFromISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, p0, Lcom/boldchat/visitor/api/ActiveAssistSession;->ended:Ljava/util/Date;

    .line 77
    :cond_4
    return-void
.end method
