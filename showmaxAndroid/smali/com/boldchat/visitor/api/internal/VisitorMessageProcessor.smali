.class public abstract Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;
.super Ljava/lang/Object;
.source "VisitorMessageProcessor.java"


# instance fields
.field private lastMessageID:Ljava/lang/String;

.field private listener:Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

.field private final respondToHeartbeats:Z

.field private resultListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/boldchat/visitor/api/internal/ResultListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/boldchat/visitor/api/internal/VisitorMessageListener;Z)V
    .locals 1
    .param p1, "listener"    # Lcom/boldchat/visitor/api/internal/VisitorMessageListener;
    .param p2, "respondToHeartbeats"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->resultListeners:Ljava/util/HashMap;

    .line 24
    iput-object p1, p0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->listener:Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    .line 25
    iput-boolean p2, p0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->respondToHeartbeats:Z

    .line 26
    return-void
.end method


# virtual methods
.method public addResultListener(Ljava/lang/String;Lcom/boldchat/visitor/api/internal/ResultListener;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/boldchat/visitor/api/internal/ResultListener;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->resultListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public abstract close()Z
.end method

.method public abstract connect()Z
.end method

.method public getLastMessageID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->lastMessageID:Ljava/lang/String;

    return-object v0
.end method

.method public getVisitorMessageListener()Lcom/boldchat/visitor/api/internal/VisitorMessageListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->listener:Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    return-object v0
.end method

.method public processMessage(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 30
    .param p1, "json"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 41
    const-string v27, "method"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 42
    .local v13, "method":Ljava/lang/String;
    const-string v27, "result"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 43
    .local v20, "result":Ljava/lang/String;
    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_2

    .line 44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->resultListeners:Ljava/util/HashMap;

    move-object/from16 v27, v0

    const-string v28, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/boldchat/visitor/api/internal/ResultListener;

    .line 45
    .local v21, "resultListener":Lcom/boldchat/visitor/api/internal/ResultListener;
    if-eqz v21, :cond_0

    .line 46
    const-string v27, "result"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v22

    .line 47
    .local v22, "resultObj":Lcom/boldchat/visitor/api/json/JSONObject;
    const-string v27, "Status"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 48
    .local v23, "status":Ljava/lang/String;
    const-string v27, "success"

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 49
    const-string v27, "result"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/boldchat/visitor/api/internal/ResultListener;->success(Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 122
    .end local v21    # "resultListener":Lcom/boldchat/visitor/api/internal/ResultListener;
    .end local v22    # "resultObj":Lcom/boldchat/visitor/api/json/JSONObject;
    .end local v23    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v21    # "resultListener":Lcom/boldchat/visitor/api/internal/ResultListener;
    .restart local v22    # "resultObj":Lcom/boldchat/visitor/api/json/JSONObject;
    .restart local v23    # "status":Ljava/lang/String;
    :cond_1
    const-string v27, "Code"

    const/16 v28, -0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 52
    .local v9, "errorCode":I
    const-string v27, "Message"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 53
    .local v10, "errorMessage":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v9, v10, v1}, Lcom/boldchat/visitor/api/internal/ResultListener;->failure(ILjava/lang/String;Lcom/boldchat/visitor/api/json/JSONObject;)V

    goto :goto_0

    .line 56
    .end local v9    # "errorCode":I
    .end local v10    # "errorMessage":Ljava/lang/String;
    .end local v21    # "resultListener":Lcom/boldchat/visitor/api/internal/ResultListener;
    .end local v22    # "resultObj":Lcom/boldchat/visitor/api/json/JSONObject;
    .end local v23    # "status":Ljava/lang/String;
    :cond_2
    if-eqz v13, :cond_12

    .line 57
    const-string v27, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 58
    .local v11, "lmID":Ljava/lang/String;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_3

    const-string v27, "0"

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    .line 59
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->lastMessageID:Ljava/lang/String;

    .line 62
    :cond_3
    const-string v27, "params"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONArray;

    move-result-object v25

    .line 63
    .local v25, "values":Lcom/boldchat/visitor/api/json/JSONArray;
    const/16 v24, 0x0

    .line 64
    .local v24, "value":Lcom/boldchat/visitor/api/json/JSONObject;
    if-eqz v25, :cond_4

    invoke-virtual/range {v25 .. v25}, Lcom/boldchat/visitor/api/json/JSONArray;->length()I

    move-result v27

    if-lez v27, :cond_4

    .line 65
    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONArray;->getJSONObject(I)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v24

    .line 67
    :cond_4
    const-string v27, "redirect"

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    if-eqz v24, :cond_6

    .line 68
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->setCloseExpected(Z)V

    .line 69
    const-string v27, "WebSocketURL"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 70
    .local v26, "webSocketURL":Ljava/lang/String;
    const-string v27, "LongPOllURL"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 71
    .local v12, "longPollURL":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->listener:Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-object/from16 v27, v0

    if-eqz v26, :cond_5

    .end local v26    # "webSocketURL":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->redirect(Ljava/lang/String;Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V

    goto/16 :goto_0

    .restart local v26    # "webSocketURL":Ljava/lang/String;
    :cond_5
    move-object/from16 v26, v12

    goto :goto_1

    .line 72
    .end local v12    # "longPollURL":Ljava/lang/String;
    .end local v26    # "webSocketURL":Ljava/lang/String;
    :cond_6
    const-string v27, "heartbeat"

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 73
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->respondToHeartbeats:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 74
    new-instance v19, Lcom/boldchat/visitor/api/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>()V

    .line 75
    .local v19, "response":Lcom/boldchat/visitor/api/json/JSONObject;
    new-instance v18, Lcom/boldchat/visitor/api/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lcom/boldchat/visitor/api/json/JSONObject;-><init>()V

    .line 76
    .local v18, "r":Lcom/boldchat/visitor/api/json/JSONObject;
    const-string v27, "Response"

    const-string v28, "ack"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 77
    const-string v27, "result"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 78
    const-string v28, "error"

    const/16 v27, 0x0

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 79
    const-string v27, "id"

    const-string v28, "id"

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/boldchat/visitor/api/json/JSONObject;

    .line 80
    invoke-virtual/range {v19 .. v19}, Lcom/boldchat/visitor/api/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->sendMessage(Ljava/lang/String;)Z

    .line 82
    .end local v18    # "r":Lcom/boldchat/visitor/api/json/JSONObject;
    .end local v19    # "response":Lcom/boldchat/visitor/api/json/JSONObject;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->listener:Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->heartbeat()V

    goto/16 :goto_0

    .line 83
    :cond_8
    const-string v27, "reconnect"

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->reconnect()Z

    goto/16 :goto_0

    .line 85
    :cond_9
    const-string v27, "reset"

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 86
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->setCloseExpected(Z)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->listener:Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->reset(Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V

    goto/16 :goto_0

    .line 88
    :cond_a
    const-string v27, "updateChat"

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    if-eqz v24, :cond_b

    .line 89
    const-string v27, "ChatID"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 90
    .local v6, "chatID":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->listener:Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-object/from16 v27, v0

    const-string v28, "Values"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v0, v6, v7, v1}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->updateChat(JLcom/boldchat/visitor/api/json/JSONObject;)V

    goto/16 :goto_0

    .line 91
    .end local v6    # "chatID":J
    :cond_b
    const-string v27, "updateTyper"

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    if-eqz v24, :cond_c

    .line 92
    const-string v27, "PersonID"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 93
    .local v16, "personID":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->listener:Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-object/from16 v27, v0

    const-string v28, "Values"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v28

    move-object/from16 v0, v27

    move-wide/from16 v1, v16

    move-object/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->updateTyper(JLcom/boldchat/visitor/api/json/JSONObject;)V

    goto/16 :goto_0

    .line 94
    .end local v16    # "personID":J
    :cond_c
    const-string v27, "addMessage"

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    if-eqz v24, :cond_d

    .line 95
    const-string v27, "MessageID"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 96
    .local v14, "messageID":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->listener:Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-object/from16 v27, v0

    const-string v28, "Values"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v0, v14, v15, v1}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->addMessage(JLcom/boldchat/visitor/api/json/JSONObject;)V

    goto/16 :goto_0

    .line 97
    .end local v14    # "messageID":J
    :cond_d
    const-string v27, "updateBusy"

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    if-eqz v24, :cond_e

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->listener:Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->updateBusy(Lcom/boldchat/visitor/api/json/JSONObject;)V

    goto/16 :goto_0

    .line 99
    :cond_e
    const-string v27, "closed"

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 100
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->setCloseExpected(Z)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->listener:Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->chatClosed(Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V

    goto/16 :goto_0

    .line 102
    :cond_f
    const-string v27, "beginActiveAssist"

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->listener:Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->beginActiveAssist(Lcom/boldchat/visitor/api/json/JSONObject;)V

    goto/16 :goto_0

    .line 104
    :cond_10
    const-string v27, "updateActiveAssist"

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_11

    .line 105
    const-string v27, "ActiveAssistID"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 106
    .local v4, "activeAssistID":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->listener:Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-object/from16 v27, v0

    const-string v28, "Values"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/boldchat/visitor/api/json/JSONObject;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v0, v4, v5, v1}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->updateActiveAssist(JLcom/boldchat/visitor/api/json/JSONObject;)V

    goto/16 :goto_0

    .line 107
    .end local v4    # "activeAssistID":J
    :cond_11
    const-string v27, "autoMessage"

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->listener:Lcom/boldchat/visitor/api/internal/VisitorMessageListener;

    move-object/from16 v27, v0

    const-string v28, "Text"

    const-string v29, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Lcom/boldchat/visitor/api/internal/VisitorMessageListener;->autoMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    .end local v11    # "lmID":Ljava/lang/String;
    .end local v24    # "value":Lcom/boldchat/visitor/api/json/JSONObject;
    .end local v25    # "values":Lcom/boldchat/visitor/api/json/JSONArray;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->resultListeners:Ljava/util/HashMap;

    move-object/from16 v27, v0

    const-string v28, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/boldchat/visitor/api/internal/ResultListener;

    .line 112
    .restart local v21    # "resultListener":Lcom/boldchat/visitor/api/internal/ResultListener;
    const-string v27, "error"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/boldchat/visitor/api/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v8, "error":Ljava/lang/String;
    if-eqz v21, :cond_13

    if-eqz v8, :cond_13

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_13

    .line 114
    const/4 v9, -0x1

    .line 115
    .restart local v9    # "errorCode":I
    move-object v10, v8

    .line 116
    .restart local v10    # "errorMessage":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-interface {v0, v9, v10, v1}, Lcom/boldchat/visitor/api/internal/ResultListener;->failure(ILjava/lang/String;Lcom/boldchat/visitor/api/json/JSONObject;)V

    goto/16 :goto_0

    .line 119
    .end local v9    # "errorCode":I
    .end local v10    # "errorMessage":Ljava/lang/String;
    :cond_13
    sget-object v27, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Unable to process message: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public abstract reconnect()Z
.end method

.method public abstract sendMessage(Ljava/lang/String;)Z
.end method

.method public abstract setCloseExpected(Z)V
.end method
