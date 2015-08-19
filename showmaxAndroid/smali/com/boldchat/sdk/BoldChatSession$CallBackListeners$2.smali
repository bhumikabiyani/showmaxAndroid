.class Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$2;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->onChatCreated(Lcom/boldchat/visitor/api/PreChat;Lcom/boldchat/visitor/api/Chat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

.field final synthetic val$chat:Lcom/boldchat/visitor/api/Chat;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;Lcom/boldchat/visitor/api/Chat;)V
    .locals 0

    .prologue
    .line 944
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$2;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$2;->val$chat:Lcom/boldchat/visitor/api/Chat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFormSubmit(Lcom/boldchat/visitor/api/Form;)V
    .locals 3
    .param p1, "submittedForm"    # Lcom/boldchat/visitor/api/Form;

    .prologue
    .line 947
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$2;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$2;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v1, v1, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v2, "api#chat#waiting_for_operator"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->setStatus(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->access$2500(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$2;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->PreChatSending:Lcom/boldchat/sdk/BoldChatState;

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;)V

    .line 949
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$2;->val$chat:Lcom/boldchat/visitor/api/Chat;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$2;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v1, v1, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatSession;->access$1700(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/boldchat/visitor/api/Chat;->submitPreChat(Lcom/boldchat/visitor/api/Form;Lcom/boldchat/visitor/api/ChatStartListener;)V

    .line 950
    return-void
.end method
