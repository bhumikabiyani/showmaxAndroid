.class Lcom/showmax/app/ui/widget/ContentWarningView$5;
.super Ljava/lang/Object;
.source "ContentWarningView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/widget/ContentWarningView;
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
    .line 329
    iput-object p1, p0, Lcom/showmax/app/ui/widget/ContentWarningView$5;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$5;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/ContentWarningView$5;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # invokes: Lcom/showmax/app/ui/widget/ContentWarningView;->getFadeOutAnimation()Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$500(Lcom/showmax/app/ui/widget/ContentWarningView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/ContentWarningView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 334
    return-void
.end method
