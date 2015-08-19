.class Lcom/boldchat/sdk/BoldChatSession$LinkActionSpan;
.super Landroid/text/style/ClickableSpan;
.source "BoldChatSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkActionSpan"
.end annotation


# instance fields
.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatSession;


# direct methods
.method public constructor <init>(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1414
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$LinkActionSpan;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 1415
    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatSession$LinkActionSpan;->mUrl:Ljava/lang/String;

    .line 1416
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1420
    const-string v0, "#cancel_queue"

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$LinkActionSpan;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$LinkActionSpan;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mChatPinger:Lcom/boldchat/sdk/BoldChatSession$ChatPinger;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$2200(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->stopRunning()V

    .line 1422
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$LinkActionSpan;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->ChatEnding:Lcom/boldchat/sdk/BoldChatState;

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;)V

    .line 1423
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1424
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v0

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$LinkActionSpan;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatSession;->access$1700(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/Chat;->getUnavailableForm(Lcom/boldchat/visitor/api/ChatUnavailableListener;)V

    .line 1427
    :cond_0
    return-void
.end method
