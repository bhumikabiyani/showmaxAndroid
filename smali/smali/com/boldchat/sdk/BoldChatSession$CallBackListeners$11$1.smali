.class Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$11$1;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$11;->onFormSubmit(Lcom/boldchat/visitor/api/Form;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$11;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$11;)V
    .locals 0

    .prologue
    .line 1311
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$11$1;->this$2:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFormSubmit(Lcom/boldchat/visitor/api/Form;)V
    .locals 1
    .param p1, "submittedForm"    # Lcom/boldchat/visitor/api/Form;

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$11$1;->this$2:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$11;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$11;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatSession;->closeChat()V

    .line 1315
    return-void
.end method
