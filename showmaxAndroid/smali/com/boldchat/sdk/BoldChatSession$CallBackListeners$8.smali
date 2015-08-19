.class Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$8;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->onClick(Landroid/view/View;)V
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
    .line 1199
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$8;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1202
    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$8;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v2, v2, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boldchat/sdk/BoldChatViewManager;->getMessageInputField()Landroid/widget/EditText;

    move-result-object v1

    .line 1203
    .local v1, "textInput":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1204
    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$8;->this$1:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    iget-object v2, v2, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$300(Lcom/boldchat/sdk/BoldChatSession;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1205
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1206
    return-void
.end method
