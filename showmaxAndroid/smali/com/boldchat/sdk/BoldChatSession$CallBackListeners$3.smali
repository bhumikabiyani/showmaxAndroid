.class Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$3;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->onChatStarted()V
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
    .line 990
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$3;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 993
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$3;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mBoldChatSessionListener:Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$100(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$3;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mBoldChatSessionListener:Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$100(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;->chatSessionStarted()V

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$3;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->getMessageInputField()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 999
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$3;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->getMessageInputField()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$3;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v1, v1, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v2, "api#chat#send_message"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$3;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->getEndChatMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1003
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$3;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->getEndChatMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$3;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v1, v1, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v2, "api#chat#end"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1006
    :cond_2
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$3;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->getEmailTranscriptMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1007
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$3;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->getEmailTranscriptMenuItem()Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$3;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v1, v1, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v2, "api#chat#email_transcript"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1010
    :cond_3
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$3;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->getEndButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1011
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$3;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->getEndButton()Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$3;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v1, v1, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v2, "api#chat#end"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    :cond_4
    return-void
.end method
