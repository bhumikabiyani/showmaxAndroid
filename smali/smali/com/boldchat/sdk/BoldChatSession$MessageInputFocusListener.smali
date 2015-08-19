.class Lcom/boldchat/sdk/BoldChatSession$MessageInputFocusListener;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageInputFocusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatSession;


# direct methods
.method private constructor <init>(Lcom/boldchat/sdk/BoldChatSession;)V
    .locals 0

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$MessageInputFocusListener;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatSession$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p2, "x1"    # Lcom/boldchat/sdk/BoldChatSession$1;

    .prologue
    .line 1465
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatSession$MessageInputFocusListener;-><init>(Lcom/boldchat/sdk/BoldChatSession;)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1468
    if-eqz p2, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$MessageInputFocusListener;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mHistoryView:Lcom/boldchat/sdk/BoldChatHistory;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$1200(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatHistory;

    move-result-object v0

    invoke-interface {v0}, Lcom/boldchat/sdk/BoldChatHistory;->scrollToBottom()V

    .line 1471
    :cond_0
    return-void
.end method
