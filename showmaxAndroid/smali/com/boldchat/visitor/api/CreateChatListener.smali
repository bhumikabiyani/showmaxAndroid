.class public interface abstract Lcom/boldchat/visitor/api/CreateChatListener;
.super Ljava/lang/Object;
.source "CreateChatListener.java"


# virtual methods
.method public abstract onChatCreateFailed(ILjava/lang/String;)V
.end method

.method public abstract onChatCreated(Lcom/boldchat/visitor/api/PreChat;Lcom/boldchat/visitor/api/Chat;)V
.end method

.method public abstract onChatUnavailable(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/UnavailableReason;Lcom/boldchat/visitor/api/UnavailableForm;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/boldchat/visitor/api/Chat;",
            "Lcom/boldchat/visitor/api/UnavailableReason;",
            "Lcom/boldchat/visitor/api/UnavailableForm;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
