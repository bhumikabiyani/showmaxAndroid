.class public interface abstract Lcom/boldchat/visitor/api/internal/ResultListener;
.super Ljava/lang/Object;
.source "ResultListener.java"


# virtual methods
.method public abstract failure(ILjava/lang/String;Lcom/boldchat/visitor/api/json/JSONObject;)V
.end method

.method public abstract failure(Ljava/io/IOException;)V
.end method

.method public abstract success(Lcom/boldchat/visitor/api/json/JSONObject;)V
.end method
