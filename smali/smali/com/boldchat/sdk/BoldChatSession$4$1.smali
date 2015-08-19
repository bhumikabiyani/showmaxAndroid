.class Lcom/boldchat/sdk/BoldChatSession$4$1;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatSession$4;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/boldchat/sdk/BoldChatSession$4;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatSession$4;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$4$1;->this$1:Lcom/boldchat/sdk/BoldChatSession$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 443
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$4$1;->this$1:Lcom/boldchat/sdk/BoldChatSession$4;

    iget-object v1, v1, Lcom/boldchat/sdk/BoldChatSession$4;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 444
    .local v0, "value":Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 446
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$4$1;->this$1:Lcom/boldchat/sdk/BoldChatSession$4;

    iget-object v1, v1, Lcom/boldchat/sdk/BoldChatSession$4;->val$input:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$4$1;->this$1:Lcom/boldchat/sdk/BoldChatSession$4;

    iget-object v2, v2, Lcom/boldchat/sdk/BoldChatSession$4;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v3, "api#email#error"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boldchat/visitor/api/Chat;->emailChatHistory(Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$4$1;->this$1:Lcom/boldchat/sdk/BoldChatSession$4;

    iget-object v1, v1, Lcom/boldchat/sdk/BoldChatSession$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
