.class public Lcom/showmax/app/ui/ActivityPurchaseAsset;
.super Lcom/showmax/app/ui/ActivityBase;
.source "ActivityPurchaseAsset.java"

# interfaces
.implements Lcom/showmax/app/Defs;


# static fields
.field public static final BUNDLE_PROGRESSBAR_VISIBLE:Ljava/lang/String; = "bundle.progressbar.visible"

.field public static final BUNDLE_PURCHASE_ASSET_ID:Ljava/lang/String; = "bundle.purchase.asset.id"

.field public static final CODE_REQUEST_PURCHASE_ASSET:I = 0x12d

.field public static final CODE_RESULT_PURCHASE_ASSET_CANCELED:I = 0x12f

.field public static final CODE_RESULT_PURCHASE_ASSET_ERROR:I = 0x12e

.field public static final LOG:Z = true

.field public static final TAG:Ljava/lang/String;

.field private static sStartEnterAnim:I

.field private static sStartExitAnim:I

.field private static sStopEnterAnim:I

.field private static sStopExitAnim:I


# instance fields
.field private mAssetId:Ljava/lang/String;

.field private mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

.field private mPurchaseAssetWebView:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;

.field private mPurchaseAssetWebViewListener:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 42
    const-class v0, Lcom/showmax/app/ui/ActivityPurchaseAsset;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->TAG:Ljava/lang/String;

    .line 65
    sput v1, Lcom/showmax/app/ui/ActivityPurchaseAsset;->sStartEnterAnim:I

    .line 66
    sput v1, Lcom/showmax/app/ui/ActivityPurchaseAsset;->sStartExitAnim:I

    .line 67
    sput v1, Lcom/showmax/app/ui/ActivityPurchaseAsset;->sStopEnterAnim:I

    .line 68
    sput v1, Lcom/showmax/app/ui/ActivityPurchaseAsset;->sStopExitAnim:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;-><init>()V

    .line 258
    new-instance v0, Lcom/showmax/app/ui/ActivityPurchaseAsset$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityPurchaseAsset$1;-><init>(Lcom/showmax/app/ui/ActivityPurchaseAsset;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mPurchaseAssetWebViewListener:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;

    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/ActivityPurchaseAsset;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPurchaseAsset;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    return-object v0
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 255
    :cond_0
    const-string v0, "bundle.purchase.asset.id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mAssetId:Ljava/lang/String;

    .line 256
    return-void
.end method

.method private initViews(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 236
    const v1, 0x7f0b00a9

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;

    iput-object v1, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mPurchaseAssetWebView:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;

    .line 237
    const v1, 0x7f0b00a8

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    iput-object v1, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    .line 238
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mPurchaseAssetWebView:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mPurchaseAssetWebViewListener:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;

    invoke-virtual {v1, v2}, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->setPurchaseAssetWebViewListener(Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;)V

    .line 240
    if-eqz p1, :cond_0

    .line 242
    const-string v1, "bundle.progressbar.visible"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 243
    .local v0, "visible":Z
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 246
    .end local v0    # "visible":Z
    :cond_0
    return-void

    .line 243
    .restart local v0    # "visible":Z
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public static startPurchaseAssetActivityForResult(ILandroid/app/Activity;Ljava/lang/String;)V
    .locals 7
    .param p0, "requestCode"    # I
    .param p1, "sourceActivity"    # Landroid/app/Activity;
    .param p2, "assetId"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 197
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->startPurchaseAssetActivityForResult(ILandroid/app/Activity;Ljava/lang/String;IIII)V

    .line 198
    return-void
.end method

.method public static startPurchaseAssetActivityForResult(ILandroid/app/Activity;Ljava/lang/String;IIII)V
    .locals 3
    .param p0, "requestCode"    # I
    .param p1, "sourceActivity"    # Landroid/app/Activity;
    .param p2, "assetId"    # Ljava/lang/String;
    .param p3, "startEnterAnim"    # I
    .param p4, "startExitAnim"    # I
    .param p5, "stopEnterAnim"    # I
    .param p6, "stopExitAnim"    # I

    .prologue
    const/4 v2, -0x1

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/showmax/app/ui/ActivityPurchaseAsset;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "bundle.purchase.asset.id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 218
    if-le p3, v2, :cond_0

    if-le p4, v2, :cond_0

    if-le p5, v2, :cond_0

    if-le p6, v2, :cond_0

    .line 220
    sput p3, Lcom/showmax/app/ui/ActivityPurchaseAsset;->sStartEnterAnim:I

    .line 221
    sput p4, Lcom/showmax/app/ui/ActivityPurchaseAsset;->sStartExitAnim:I

    .line 222
    sput p5, Lcom/showmax/app/ui/ActivityPurchaseAsset;->sStopEnterAnim:I

    .line 223
    sput p6, Lcom/showmax/app/ui/ActivityPurchaseAsset;->sStopExitAnim:I

    .line 224
    sget v1, Lcom/showmax/app/ui/ActivityPurchaseAsset;->sStartEnterAnim:I

    sget v2, Lcom/showmax/app/ui/ActivityPurchaseAsset;->sStartExitAnim:I

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 226
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 126
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->finish()V

    .line 128
    sget v0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->sStopEnterAnim:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->sStopExitAnim:I

    if-le v0, v1, :cond_0

    .line 130
    sget v0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->sStopEnterAnim:I

    sget v1, Lcom/showmax/app/ui/ActivityPurchaseAsset;->sStopExitAnim:I

    invoke-virtual {p0, v0, v1}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->overridePendingTransition(II)V

    .line 132
    :cond_0
    return-void
.end method

.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 115
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onBackPressed()V

    .line 117
    sget v0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->sStopEnterAnim:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->sStopExitAnim:I

    if-le v0, v1, :cond_0

    .line 119
    sget v0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->sStopEnterAnim:I

    sget v1, Lcom/showmax/app/ui/ActivityPurchaseAsset;->sStopExitAnim:I

    invoke-virtual {p0, v0, v1}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->overridePendingTransition(II)V

    .line 121
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 77
    const-string v1, "[ActivityPurchaseAsset]::[onCreate]"

    invoke-static {v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 78
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0, v4}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->setHasSlidingMenu(Z)V

    .line 81
    invoke-virtual {p0, v4, v5}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->setHasToolbar(ZZ)V

    .line 82
    const v1, 0x7f03001b

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->hideActionBarLogo()V

    .line 85
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->initData(Landroid/os/Bundle;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->initViews(Landroid/os/Bundle;)V

    .line 88
    if-nez p1, :cond_0

    .line 90
    invoke-static {}, Lcom/showmax/lib/api/io/UserApi;->getInstance()Lcom/showmax/lib/api/io/UserApi;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mAssetId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/showmax/lib/api/io/UserApi;->getPurchaseAssetUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "purchaseAssetUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mPurchaseAssetWebView:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;

    const/4 v2, 0x2

    .line 92
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .line 91
    invoke-static {v3}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v5, v3}, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->setGACookie(IIZLjava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mPurchaseAssetWebView:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mAssetId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->load(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .end local v0    # "purchaseAssetUrl":Ljava/lang/String;
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mPurchaseAssetWebView:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;

    invoke-virtual {v1, p1}, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 157
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 159
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mPurchaseAssetWebView:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mPurchaseAssetWebView:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;

    invoke-virtual {v0}, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mPurchaseAssetWebView:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;

    invoke-virtual {v0}, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->goBack()V

    .line 169
    :goto_0
    const/4 v0, 0x1

    .line 172
    :goto_1
    return v0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->finish()V

    goto :goto_0

    .line 172
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/showmax/app/ui/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 145
    const-string v0, "[ActivityPurchaseAsset]::[onOptionsItemSelected]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->finish()V

    .line 149
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    const-string v0, "[ActivityPurchaseAsset]::[onSaveInstanceState]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 106
    const-string v0, "bundle.purchase.asset.id"

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mAssetId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v1, "bundle.progressbar.visible"

    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    invoke-virtual {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPurchaseAsset;->mPurchaseAssetWebView:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;

    invoke-virtual {v0, p1}, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 109
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 110
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
