.class Lcom/showmax/app/ui/widget/ContentWarningView$3;
.super Ljava/lang/Object;
.source "ContentWarningView.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/showmax/app/ui/widget/ContentWarningView;->showContentWarning()V
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
    .line 170
    iput-object p1, p0, Lcom/showmax/app/ui/widget/ContentWarningView$3;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$3;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # getter for: Lcom/showmax/app/ui/widget/ContentWarningView;->mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$000(Lcom/showmax/app/ui/widget/ContentWarningView;)Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$3;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # getter for: Lcom/showmax/app/ui/widget/ContentWarningView;->mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$000(Lcom/showmax/app/ui/widget/ContentWarningView;)Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;->onStartShowing(Z)V

    .line 213
    :cond_0
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$3;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # getter for: Lcom/showmax/app/ui/widget/ContentWarningView;->mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$000(Lcom/showmax/app/ui/widget/ContentWarningView;)Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$3;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # getter for: Lcom/showmax/app/ui/widget/ContentWarningView;->mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$000(Lcom/showmax/app/ui/widget/ContentWarningView;)Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;->onStartShowing(Z)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$3;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # getter for: Lcom/showmax/app/ui/widget/ContentWarningView;->mConfirmationNeeded:Z
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$100(Lcom/showmax/app/ui/widget/ContentWarningView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$3;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # invokes: Lcom/showmax/app/ui/widget/ContentWarningView;->showButtons()V
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$200(Lcom/showmax/app/ui/widget/ContentWarningView;)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$3;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # invokes: Lcom/showmax/app/ui/widget/ContentWarningView;->hideDelayed()V
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$300(Lcom/showmax/app/ui/widget/ContentWarningView;)V

    goto :goto_0
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "failReason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$3;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # getter for: Lcom/showmax/app/ui/widget/ContentWarningView;->mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$000(Lcom/showmax/app/ui/widget/ContentWarningView;)Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$3;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # getter for: Lcom/showmax/app/ui/widget/ContentWarningView;->mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$000(Lcom/showmax/app/ui/widget/ContentWarningView;)Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;->onStartShowing(Z)V

    .line 187
    :cond_0
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$3;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # getter for: Lcom/showmax/app/ui/widget/ContentWarningView;->mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$000(Lcom/showmax/app/ui/widget/ContentWarningView;)Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ContentWarningView$3;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    # getter for: Lcom/showmax/app/ui/widget/ContentWarningView;->mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->access$000(Lcom/showmax/app/ui/widget/ContentWarningView;)Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;->onStartFetchingBg()V

    .line 178
    :cond_0
    return-void
.end method
