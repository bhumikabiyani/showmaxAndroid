.class public interface abstract Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;
.super Ljava/lang/Object;
.source "BoldChatSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BoldChatSessionListener"
.end annotation


# virtual methods
.method public abstract chatSessionClosed()V
.end method

.method public abstract chatSessionCreated()V
.end method

.method public abstract chatSessionEnded()V
.end method

.method public abstract chatSessionStarted()V
.end method

.method public abstract messageArrived(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
.end method

.method public abstract operatorTyping()V
.end method
