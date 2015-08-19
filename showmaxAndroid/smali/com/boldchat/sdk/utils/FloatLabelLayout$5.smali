.class Lcom/boldchat/sdk/utils/FloatLabelLayout$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatLabelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/utils/FloatLabelLayout;->hideLabel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/utils/FloatLabelLayout;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/utils/FloatLabelLayout;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout$5;->this$0:Lcom/boldchat/sdk/utils/FloatLabelLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout$5;->this$0:Lcom/boldchat/sdk/utils/FloatLabelLayout;

    # getter for: Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boldchat/sdk/utils/FloatLabelLayout;->access$000(Lcom/boldchat/sdk/utils/FloatLabelLayout;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    return-void
.end method
