.class Lcom/showmax/app/ui/ActivityMyAccount$1;
.super Ljava/lang/Object;
.source "ActivityMyAccount.java"

# interfaces
.implements Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityMyAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityMyAccount;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityMyAccount;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityMyAccount;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityMyAccount$1;->this$0:Lcom/showmax/app/ui/ActivityMyAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseButtonClicked()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount$1;->this$0:Lcom/showmax/app/ui/ActivityMyAccount;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivityMyAccount;->setResult(I)V

    .line 295
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount$1;->this$0:Lcom/showmax/app/ui/ActivityMyAccount;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityMyAccount;->finish()V

    .line 296
    return-void
.end method

.method public onPageError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount$1;->this$0:Lcom/showmax/app/ui/ActivityMyAccount;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivityMyAccount;->setResult(I)V

    .line 288
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount$1;->this$0:Lcom/showmax/app/ui/ActivityMyAccount;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityMyAccount;->finish()V

    .line 289
    return-void
.end method

.method public onPageLoadingProgressChanged(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 274
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount$1;->this$0:Lcom/showmax/app/ui/ActivityMyAccount;

    # getter for: Lcom/showmax/app/ui/ActivityMyAccount;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityMyAccount;->access$000(Lcom/showmax/app/ui/ActivityMyAccount;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount$1;->this$0:Lcom/showmax/app/ui/ActivityMyAccount;

    # getter for: Lcom/showmax/app/ui/ActivityMyAccount;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityMyAccount;->access$000(Lcom/showmax/app/ui/ActivityMyAccount;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
