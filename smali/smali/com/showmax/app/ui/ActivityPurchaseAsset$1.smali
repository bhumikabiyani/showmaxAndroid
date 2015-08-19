.class Lcom/showmax/app/ui/ActivityPurchaseAsset$1;
.super Ljava/lang/Object;
.source "ActivityPurchaseAsset.java"

# interfaces
.implements Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityPurchaseAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityPurchaseAsset;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityPurchaseAsset;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityPurchaseAsset;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset$1;->this$0:Lcom/showmax/app/ui/ActivityPurchaseAsset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseButtonClicked()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset$1;->this$0:Lcom/showmax/app/ui/ActivityPurchaseAsset;

    const/16 v1, 0x12f

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->setResult(I)V

    .line 286
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset$1;->this$0:Lcom/showmax/app/ui/ActivityPurchaseAsset;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->finish()V

    .line 287
    return-void
.end method

.method public onPageError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset$1;->this$0:Lcom/showmax/app/ui/ActivityPurchaseAsset;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->setResult(I)V

    .line 279
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset$1;->this$0:Lcom/showmax/app/ui/ActivityPurchaseAsset;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->finish()V

    .line 280
    return-void
.end method

.method public onPageLoadingProgressChanged(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 265
    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset$1;->this$0:Lcom/showmax/app/ui/ActivityPurchaseAsset;

    # getter for: Lcom/showmax/app/ui/ActivityPurchaseAsset;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->access$000(Lcom/showmax/app/ui/ActivityPurchaseAsset;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset$1;->this$0:Lcom/showmax/app/ui/ActivityPurchaseAsset;

    # getter for: Lcom/showmax/app/ui/ActivityPurchaseAsset;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->access$000(Lcom/showmax/app/ui/ActivityPurchaseAsset;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
