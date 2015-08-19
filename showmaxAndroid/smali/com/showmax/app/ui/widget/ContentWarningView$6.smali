.class Lcom/showmax/app/ui/widget/ContentWarningView$6;
.super Ljava/lang/Object;
.source "ContentWarningView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/showmax/app/ui/widget/ContentWarningView;->getFadeOutAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/widget/ContentWarningView;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/widget/ContentWarningView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/widget/ContentWarningView;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/showmax/app/ui/widget/ContentWarningView$6;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$6;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # invokes: Lcom/showmax/app/ui/widget/ContentWarningView;->hideButtons()V
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$400(Lcom/showmax/app/ui/widget/ContentWarningView;)V

    .line 358
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$6;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/ContentWarningView;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$6;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # getter for: Lcom/showmax/app/ui/widget/ContentWarningView;->mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$000(Lcom/showmax/app/ui/widget/ContentWarningView;)Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$6;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # getter for: Lcom/showmax/app/ui/widget/ContentWarningView;->mConfirmationNeeded:Z
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$100(Lcom/showmax/app/ui/widget/ContentWarningView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$6;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # getter for: Lcom/showmax/app/ui/widget/ContentWarningView;->mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$000(Lcom/showmax/app/ui/widget/ContentWarningView;)Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;->onEndShowing()V

    .line 363
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 352
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 346
    return-void
.end method
