.class Lcom/boldchat/sdk/BoldChatViewManager$1;
.super Ljava/lang/Object;
.source "BoldChatViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;Lcom/boldchat/sdk/BoldChatFormView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatViewManager;

.field final synthetic val$form:Lcom/boldchat/sdk/BoldChatFormView;

.field final synthetic val$newState:Lcom/boldchat/sdk/BoldChatState;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatViewManager;Lcom/boldchat/sdk/BoldChatState;Lcom/boldchat/sdk/BoldChatFormView;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatViewManager$1;->this$0:Lcom/boldchat/sdk/BoldChatViewManager;

    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatViewManager$1;->val$newState:Lcom/boldchat/sdk/BoldChatState;

    iput-object p3, p0, Lcom/boldchat/sdk/BoldChatViewManager$1;->val$form:Lcom/boldchat/sdk/BoldChatFormView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager$1;->this$0:Lcom/boldchat/sdk/BoldChatViewManager;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatViewManager$1;->val$newState:Lcom/boldchat/sdk/BoldChatState;

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatViewManager$1;->val$form:Lcom/boldchat/sdk/BoldChatFormView;

    # invokes: Lcom/boldchat/sdk/BoldChatViewManager;->setStateMain(Lcom/boldchat/sdk/BoldChatState;Lcom/boldchat/sdk/BoldChatFormView;)V
    invoke-static {v0, v1, v2}, Lcom/boldchat/sdk/BoldChatViewManager;->access$000(Lcom/boldchat/sdk/BoldChatViewManager;Lcom/boldchat/sdk/BoldChatState;Lcom/boldchat/sdk/BoldChatFormView;)V

    .line 83
    return-void
.end method
