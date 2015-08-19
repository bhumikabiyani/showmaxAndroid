.class Lcom/boldchat/sdk/BoldChatViewManager$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BoldChatViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatViewManager;->animateGone(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatViewManager;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatViewManager;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatViewManager$4;->this$0:Lcom/boldchat/sdk/BoldChatViewManager;

    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatViewManager$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 338
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatViewManager$4;->val$view:Landroid/view/View;

    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager$4;->this$0:Lcom/boldchat/sdk/BoldChatViewManager;

    # getter for: Lcom/boldchat/sdk/BoldChatViewManager;->mDesiredVisibility:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->access$400(Lcom/boldchat/sdk/BoldChatViewManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatViewManager$4;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager$4;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatViewManager$4;->this$0:Lcom/boldchat/sdk/BoldChatViewManager;

    # getter for: Lcom/boldchat/sdk/BoldChatViewManager;->mFormView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatViewManager;->access$500(Lcom/boldchat/sdk/BoldChatViewManager;)Landroid/view/ViewGroup;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager$4;->this$0:Lcom/boldchat/sdk/BoldChatViewManager;

    # getter for: Lcom/boldchat/sdk/BoldChatViewManager;->mDesiredVisibility:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->access$400(Lcom/boldchat/sdk/BoldChatViewManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatViewManager$4;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager$4;->this$0:Lcom/boldchat/sdk/BoldChatViewManager;

    # getter for: Lcom/boldchat/sdk/BoldChatViewManager;->mFormView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->access$500(Lcom/boldchat/sdk/BoldChatViewManager;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 342
    :cond_0
    return-void
.end method
