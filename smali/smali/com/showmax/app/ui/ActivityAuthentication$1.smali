.class Lcom/showmax/app/ui/ActivityAuthentication$1;
.super Ljava/lang/Object;
.source "ActivityAuthentication.java"

# interfaces
.implements Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityAuthentication;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityAuthentication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityAuthentication;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityAuthentication$1;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthSuccessful(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "secureToken"    # Ljava/lang/String;
    .param p3, "expiresIn"    # Ljava/lang/String;
    .param p4, "bonus"    # Ljava/lang/Boolean;

    .prologue
    .line 377
    const-string v0, "[ActivityAuthentication]::[onAuthSuccessful]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$1;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # setter for: Lcom/showmax/app/ui/ActivityAuthentication;->mAccessToken:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/showmax/app/ui/ActivityAuthentication;->access$102(Lcom/showmax/app/ui/ActivityAuthentication;Ljava/lang/String;)Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$1;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # setter for: Lcom/showmax/app/ui/ActivityAuthentication;->mSecureToken:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/showmax/app/ui/ActivityAuthentication;->access$202(Lcom/showmax/app/ui/ActivityAuthentication;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$1;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # setter for: Lcom/showmax/app/ui/ActivityAuthentication;->mExpiresIn:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/showmax/app/ui/ActivityAuthentication;->access$302(Lcom/showmax/app/ui/ActivityAuthentication;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$1;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # setter for: Lcom/showmax/app/ui/ActivityAuthentication;->mBonus:Ljava/lang/Boolean;
    invoke-static {v0, p4}, Lcom/showmax/app/ui/ActivityAuthentication;->access$402(Lcom/showmax/app/ui/ActivityAuthentication;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 384
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$1;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # invokes: Lcom/showmax/app/ui/ActivityAuthentication;->loadUserProfile()V
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityAuthentication;->access$500(Lcom/showmax/app/ui/ActivityAuthentication;)V

    .line 385
    return-void
.end method

.method public onCloseButtonClicked()V
    .locals 2

    .prologue
    .line 391
    const-string v0, "[ActivityAuthentication]::[onCloseButtonClicked]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$1;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    const/16 v1, 0xa6

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivityAuthentication;->setResult(I)V

    .line 393
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$1;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityAuthentication;->finish()V

    .line 394
    return-void
.end method

.method public onPageError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$1;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivityAuthentication;->setResult(I)V

    .line 370
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$1;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityAuthentication;->finish()V

    .line 371
    return-void
.end method

.method public onPageLoadingProgressChanged(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 356
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$1;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityAuthentication;->access$000(Lcom/showmax/app/ui/ActivityAuthentication;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAuthentication$1;->this$0:Lcom/showmax/app/ui/ActivityAuthentication;

    # getter for: Lcom/showmax/app/ui/ActivityAuthentication;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityAuthentication;->access$000(Lcom/showmax/app/ui/ActivityAuthentication;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
