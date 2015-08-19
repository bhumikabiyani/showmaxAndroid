.class public Lcom/showmax/app/ui/ActivityMyAccount;
.super Lcom/showmax/app/ui/ActivityBase;
.source "ActivityMyAccount.java"

# interfaces
.implements Lcom/showmax/app/Defs;


# static fields
.field public static final BUNDLE_MY_ACCOUNT_URL:Ljava/lang/String; = "bundle.my.account.url"

.field public static final BUNDLE_PROGRESSBAR_VISIBLE:Ljava/lang/String; = "bundle.progressbar.visible"

.field public static final CODE_REQUEST_MY_ACCOUNT:I = 0xc9

.field public static final CODE_RESULT_MY_ACCOUNT_CANCELED:I = 0xcb

.field public static final CODE_RESULT_MY_ACCOUNT_ERROR:I = 0xca

.field public static final LOG:Z = true

.field public static final TAG:Ljava/lang/String;

.field private static sStartEnterAnim:I

.field private static sStartExitAnim:I

.field private static sStopEnterAnim:I

.field private static sStopExitAnim:I


# instance fields
.field private mMyAccountUrl:Ljava/lang/String;

.field private mMyAccountWebView:Lcom/showmax/lib/api/ui/widget/MyAccountWebView;

.field private mMyAccountWebViewListener:Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;

.field private mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 41
    const-class v0, Lcom/showmax/app/ui/ActivityMyAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/ActivityMyAccount;->TAG:Ljava/lang/String;

    .line 64
    sput v1, Lcom/showmax/app/ui/ActivityMyAccount;->sStartEnterAnim:I

    .line 65
    sput v1, Lcom/showmax/app/ui/ActivityMyAccount;->sStartExitAnim:I

    .line 66
    sput v1, Lcom/showmax/app/ui/ActivityMyAccount;->sStopEnterAnim:I

    .line 67
    sput v1, Lcom/showmax/app/ui/ActivityMyAccount;->sStopExitAnim:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;-><init>()V

    .line 267
    new-instance v0, Lcom/showmax/app/ui/ActivityMyAccount$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityMyAccount$1;-><init>(Lcom/showmax/app/ui/ActivityMyAccount;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mMyAccountWebViewListener:Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;

    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/ActivityMyAccount;)Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityMyAccount;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    return-object v0
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 259
    if-nez p1, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMyAccount;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 264
    :cond_0
    const-string v0, "bundle.my.account.url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mMyAccountUrl:Ljava/lang/String;

    .line 265
    return-void
.end method

.method private initViews(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 245
    const v1, 0x7f0b00a6

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityMyAccount;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;

    iput-object v1, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mMyAccountWebView:Lcom/showmax/lib/api/ui/widget/MyAccountWebView;

    .line 246
    const v1, 0x7f0b00a5

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityMyAccount;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    iput-object v1, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    .line 247
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mMyAccountWebView:Lcom/showmax/lib/api/ui/widget/MyAccountWebView;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mMyAccountWebViewListener:Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;

    invoke-virtual {v1, v2}, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->setMyAccountWebViewListener(Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;)V

    .line 249
    if-eqz p1, :cond_0

    .line 251
    const-string v1, "bundle.progressbar.visible"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 252
    .local v0, "visible":Z
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 255
    .end local v0    # "visible":Z
    :cond_0
    return-void

    .line 252
    .restart local v0    # "visible":Z
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public static startMyAccountActivityForResult(ILandroid/app/Activity;Ljava/lang/String;)V
    .locals 7
    .param p0, "requestCode"    # I
    .param p1, "sourceActivity"    # Landroid/app/Activity;
    .param p2, "myAccountWebPageUrl"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 206
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/showmax/app/ui/ActivityMyAccount;->startMyAccountActivityForResult(ILandroid/app/Activity;Ljava/lang/String;IIII)V

    .line 207
    return-void
.end method

.method public static startMyAccountActivityForResult(ILandroid/app/Activity;Ljava/lang/String;IIII)V
    .locals 3
    .param p0, "requestCode"    # I
    .param p1, "sourceActivity"    # Landroid/app/Activity;
    .param p2, "myAccountWebPageUrl"    # Ljava/lang/String;
    .param p3, "startEnterAnim"    # I
    .param p4, "startExitAnim"    # I
    .param p5, "stopEnterAnim"    # I
    .param p6, "stopExitAnim"    # I

    .prologue
    const/4 v2, -0x1

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/showmax/app/ui/ActivityMyAccount;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "bundle.my.account.url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 227
    if-le p3, v2, :cond_0

    if-le p4, v2, :cond_0

    if-le p5, v2, :cond_0

    if-le p6, v2, :cond_0

    .line 229
    sput p3, Lcom/showmax/app/ui/ActivityMyAccount;->sStartEnterAnim:I

    .line 230
    sput p4, Lcom/showmax/app/ui/ActivityMyAccount;->sStartExitAnim:I

    .line 231
    sput p5, Lcom/showmax/app/ui/ActivityMyAccount;->sStopEnterAnim:I

    .line 232
    sput p6, Lcom/showmax/app/ui/ActivityMyAccount;->sStopExitAnim:I

    .line 233
    sget v1, Lcom/showmax/app/ui/ActivityMyAccount;->sStartEnterAnim:I

    sget v2, Lcom/showmax/app/ui/ActivityMyAccount;->sStartExitAnim:I

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 124
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->finish()V

    .line 127
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMyAccount;->recheckSubcriptionState()V

    .line 130
    sget v0, Lcom/showmax/app/ui/ActivityMyAccount;->sStopEnterAnim:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/showmax/app/ui/ActivityMyAccount;->sStopExitAnim:I

    if-le v0, v1, :cond_0

    .line 132
    sget v0, Lcom/showmax/app/ui/ActivityMyAccount;->sStopEnterAnim:I

    sget v1, Lcom/showmax/app/ui/ActivityMyAccount;->sStopExitAnim:I

    invoke-virtual {p0, v0, v1}, Lcom/showmax/app/ui/ActivityMyAccount;->overridePendingTransition(II)V

    .line 134
    :cond_0
    return-void
.end method

.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/showmax/app/ui/ActivityMyAccount;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 113
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onBackPressed()V

    .line 115
    sget v0, Lcom/showmax/app/ui/ActivityMyAccount;->sStopEnterAnim:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/showmax/app/ui/ActivityMyAccount;->sStopExitAnim:I

    if-le v0, v1, :cond_0

    .line 117
    sget v0, Lcom/showmax/app/ui/ActivityMyAccount;->sStopEnterAnim:I

    sget v1, Lcom/showmax/app/ui/ActivityMyAccount;->sStopExitAnim:I

    invoke-virtual {p0, v0, v1}, Lcom/showmax/app/ui/ActivityMyAccount;->overridePendingTransition(II)V

    .line 119
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 76
    const-string v0, "[ActivityMyAccount]::[onCreate]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 77
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0, v3}, Lcom/showmax/app/ui/ActivityMyAccount;->setHasSlidingMenu(Z)V

    .line 80
    invoke-virtual {p0, v3, v4}, Lcom/showmax/app/ui/ActivityMyAccount;->setHasToolbar(ZZ)V

    .line 81
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityMyAccount;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMyAccount;->hideActionBarLogo()V

    .line 84
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivityMyAccount;->initData(Landroid/os/Bundle;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivityMyAccount;->initViews(Landroid/os/Bundle;)V

    .line 87
    if-nez p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mMyAccountWebView:Lcom/showmax/lib/api/ui/widget/MyAccountWebView;

    const/4 v1, 0x2

    .line 90
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMyAccount;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 89
    invoke-static {v2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->setGACookie(IIZLjava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mMyAccountWebView:Lcom/showmax/lib/api/ui/widget/MyAccountWebView;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mMyAccountUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->load(Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mMyAccountWebView:Lcom/showmax/lib/api/ui/widget/MyAccountWebView;

    invoke-virtual {v0, p1}, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 166
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 168
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mMyAccountWebView:Lcom/showmax/lib/api/ui/widget/MyAccountWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mMyAccountWebView:Lcom/showmax/lib/api/ui/widget/MyAccountWebView;

    invoke-virtual {v0}, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mMyAccountWebView:Lcom/showmax/lib/api/ui/widget/MyAccountWebView;

    invoke-virtual {v0}, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->goBack()V

    .line 178
    :goto_0
    const/4 v0, 0x1

    .line 181
    :goto_1
    return v0

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMyAccount;->finish()V

    goto :goto_0

    .line 181
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/showmax/app/ui/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 147
    const-string v0, "[ActivityMyAccount]::[onOptionsItemSelected]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mMyAccountWebView:Lcom/showmax/lib/api/ui/widget/MyAccountWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mMyAccountWebView:Lcom/showmax/lib/api/ui/widget/MyAccountWebView;

    invoke-virtual {v0}, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mMyAccountWebView:Lcom/showmax/lib/api/ui/widget/MyAccountWebView;

    invoke-virtual {v0}, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->goBack()V

    .line 158
    :goto_0
    const/4 v0, 0x1

    .line 160
    :goto_1
    return v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMyAccount;->finish()V

    goto :goto_0

    .line 160
    :cond_1
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    const-string v0, "[ActivityMyAccount]::[onSaveInstanceState]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 104
    const-string v0, "bundle.my.account.url"

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mMyAccountUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v1, "bundle.progressbar.visible"

    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mProgressBar:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    invoke-virtual {v0}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyAccount;->mMyAccountWebView:Lcom/showmax/lib/api/ui/widget/MyAccountWebView;

    invoke-virtual {v0, p1}, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 107
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
