.class Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$6;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->onChatFinished(Lcom/boldchat/visitor/api/PostChat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;)V
    .locals 0

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$6;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFormSubmit(Lcom/boldchat/visitor/api/Form;)V
    .locals 2
    .param p1, "submittedForm"    # Lcom/boldchat/visitor/api/Form;

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$6;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->PostChatSending:Lcom/boldchat/sdk/BoldChatState;

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;)V

    .line 1151
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v0

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$6;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    invoke-virtual {v0, p1, v1}, Lcom/boldchat/visitor/api/Chat;->submitPostChat(Lcom/boldchat/visitor/api/Form;Lcom/boldchat/visitor/api/PostChatSubmitListener;)V

    .line 1152
    return-void
.end method
