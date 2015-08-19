.class Lcom/boldchat/sdk/BoldChatSession$3;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatSession;->showForm(Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatSession;

.field final synthetic val$form:Lcom/boldchat/visitor/api/Form;

.field final synthetic val$state:Lcom/boldchat/sdk/BoldChatState;

.field final synthetic val$submit:Ljava/lang/String;

.field final synthetic val$submitKey:Ljava/lang/String;

.field final synthetic val$submitListener:Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$titleKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/visitor/api/Form;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;Lcom/boldchat/sdk/BoldChatState;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$3;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$form:Lcom/boldchat/visitor/api/Form;

    iput-object p3, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$titleKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$submit:Ljava/lang/String;

    iput-object p6, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$submitKey:Ljava/lang/String;

    iput-object p7, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$submitListener:Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;

    iput-object p8, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$state:Lcom/boldchat/sdk/BoldChatState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 304
    const/4 v9, 0x1

    .line 305
    .local v9, "showForm":Z
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$3;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mChatFormListener:Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatSession;->access$200(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$3;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mChatFormListener:Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatSession;->access$200(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;

    move-result-object v1

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$form:Lcom/boldchat/visitor/api/Form;

    invoke-interface {v1, v2}, Lcom/boldchat/sdk/BoldChatSession$ChatFormListener;->onFormShow(Lcom/boldchat/visitor/api/Form;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    .line 308
    :cond_0
    :goto_0
    if-eqz v9, :cond_3

    .line 309
    new-instance v0, Lcom/boldchat/sdk/BoldChatFormView;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$titleKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$submit:Ljava/lang/String;

    iget-object v4, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$submitKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$form:Lcom/boldchat/visitor/api/Form;

    iget-object v6, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$submitListener:Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;

    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatSession$3;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/boldchat/sdk/BoldChatSession;->access$300(Lcom/boldchat/sdk/BoldChatSession;)Landroid/content/Context;

    move-result-object v7

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/boldchat/sdk/BoldChatFormView;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;Landroid/content/Context;Lcom/boldchat/visitor/api/Chat;)V

    .line 310
    .local v0, "v":Lcom/boldchat/sdk/BoldChatFormView;
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$3;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$state:Lcom/boldchat/sdk/BoldChatState;

    invoke-virtual {v1, v2, v0}, Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;Lcom/boldchat/sdk/BoldChatFormView;)V

    .line 315
    .end local v0    # "v":Lcom/boldchat/sdk/BoldChatFormView;
    :cond_1
    :goto_1
    return-void

    .line 306
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 311
    :cond_3
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$submitListener:Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$3;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$state:Lcom/boldchat/sdk/BoldChatState;

    invoke-virtual {v1, v2}, Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;)V

    .line 313
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$submitListener:Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$3;->val$form:Lcom/boldchat/visitor/api/Form;

    invoke-interface {v1, v2}, Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;->onFormSubmit(Lcom/boldchat/visitor/api/Form;)V

    goto :goto_1
.end method
