.class Lcom/showmax/app/ui/widget/ContentWarningView$4;
.super Ljava/lang/Object;
.source "ContentWarningView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 292
    iput-object p1, p0, Lcom/showmax/app/ui/widget/ContentWarningView$4;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$4;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # getter for: Lcom/showmax/app/ui/widget/ContentWarningView;->mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$000(Lcom/showmax/app/ui/widget/ContentWarningView;)Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b019b

    if-ne v0, v1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$4;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # invokes: Lcom/showmax/app/ui/widget/ContentWarningView;->hideDelayed()V
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$300(Lcom/showmax/app/ui/widget/ContentWarningView;)V

    .line 302
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$4;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # getter for: Lcom/showmax/app/ui/widget/ContentWarningView;->mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$000(Lcom/showmax/app/ui/widget/ContentWarningView;)Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;->onWatchClick()V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b019c

    if-ne v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$4;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # invokes: Lcom/showmax/app/ui/widget/ContentWarningView;->hideButtons()V
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$400(Lcom/showmax/app/ui/widget/ContentWarningView;)V

    .line 308
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$4;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # getter for: Lcom/showmax/app/ui/widget/ContentWarningView;->mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$000(Lcom/showmax/app/ui/widget/ContentWarningView;)Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;->onCloseClick()V

    goto :goto_0
.end method
