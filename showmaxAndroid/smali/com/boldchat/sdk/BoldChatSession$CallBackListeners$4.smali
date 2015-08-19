.class Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$4;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->onChatUnavailable(Lcom/boldchat/visitor/api/UnavailableReason;Lcom/boldchat/visitor/api/UnavailableForm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

.field final synthetic val$unavailableForm:Lcom/boldchat/visitor/api/UnavailableForm;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;Lcom/boldchat/visitor/api/UnavailableForm;)V
    .locals 0

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$4;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$4;->val$unavailableForm:Lcom/boldchat/visitor/api/UnavailableForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFormSubmit(Lcom/boldchat/visitor/api/Form;)V
    .locals 6
    .param p1, "submittedForm"    # Lcom/boldchat/visitor/api/Form;

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$4;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->UnavailableChatSending:Lcom/boldchat/sdk/BoldChatState;

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;)V

    .line 1055
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v0

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$4;->val$unavailableForm:Lcom/boldchat/visitor/api/UnavailableForm;

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/Chat;->submitUnavailableEmail(Lcom/boldchat/visitor/api/Form;)V

    .line 1056
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$4;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->Finished:Lcom/boldchat/sdk/BoldChatState;

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$4;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v2, v2, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v3, "api#unavailable#emailed"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$4;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v3, v3, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v4, "api#chat#close"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$4$1;

    invoke-direct {v5, p0}, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$4$1;-><init>(Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$4;)V

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->showForm(Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V
    invoke-static/range {v0 .. v5}, Lcom/boldchat/sdk/BoldChatSession;->access$2800(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V

    .line 1062
    return-void
.end method
