.class public interface abstract Lcom/boldchat/visitor/api/internal/VisitorMessageListener;
.super Ljava/lang/Object;
.source "VisitorMessageListener.java"


# virtual methods
.method public abstract addMessage(JLcom/boldchat/visitor/api/json/JSONObject;)V
.end method

.method public abstract autoMessage(Ljava/lang/String;)V
.end method

.method public abstract beginActiveAssist(Lcom/boldchat/visitor/api/json/JSONObject;)V
.end method

.method public abstract chatClosed(Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V
.end method

.method public abstract heartbeat()V
.end method

.method public abstract onClose(ILjava/lang/String;ZLcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V
.end method

.method public abstract onError(Ljava/lang/Exception;Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V
.end method

.method public abstract onOpen(Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V
.end method

.method public abstract onReconnecting(Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V
.end method

.method public abstract redirect(Ljava/lang/String;Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V
.end method

.method public abstract reset(Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V
.end method

.method public abstract updateActiveAssist(JLcom/boldchat/visitor/api/json/JSONObject;)V
.end method

.method public abstract updateBusy(Lcom/boldchat/visitor/api/json/JSONObject;)V
.end method

.method public abstract updateChat(JLcom/boldchat/visitor/api/json/JSONObject;)V
.end method

.method public abstract updateTyper(JLcom/boldchat/visitor/api/json/JSONObject;)V
.end method
