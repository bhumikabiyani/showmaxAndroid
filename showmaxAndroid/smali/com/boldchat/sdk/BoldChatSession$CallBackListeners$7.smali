.class Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$7;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->onMessageAdded(Lcom/boldchat/visitor/api/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

.field final synthetic val$message:Lcom/boldchat/visitor/api/Message;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;Lcom/boldchat/visitor/api/Message;)V
    .locals 0

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$7;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$7;->val$message:Lcom/boldchat/visitor/api/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$7;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mBoldChatSessionListener:Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$100(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$7;->val$message:Lcom/boldchat/visitor/api/Message;

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/Message;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$7;->val$message:Lcom/boldchat/visitor/api/Message;

    invoke-virtual {v2}, Lcom/boldchat/visitor/api/Message;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$7;->val$message:Lcom/boldchat/visitor/api/Message;

    invoke-virtual {v3}, Lcom/boldchat/visitor/api/Message;->getCreated()Ljava/util/Date;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;->messageArrived(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 1177
    return-void
.end method
