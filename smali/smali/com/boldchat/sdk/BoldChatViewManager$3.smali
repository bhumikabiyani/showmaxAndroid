.class Lcom/boldchat/sdk/BoldChatViewManager$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BoldChatViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatViewManager;->animateVisible(Landroid/view/View;)V
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
    .line 309
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatViewManager$3;->this$0:Lcom/boldchat/sdk/BoldChatViewManager;

    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatViewManager$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 312
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatViewManager$3;->val$view:Landroid/view/View;

    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager$3;->this$0:Lcom/boldchat/sdk/BoldChatViewManager;

    # getter for: Lcom/boldchat/sdk/BoldChatViewManager;->mDesiredVisibility:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->access$400(Lcom/boldchat/sdk/BoldChatViewManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatViewManager$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager$3;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 314
    return-void
.end method
