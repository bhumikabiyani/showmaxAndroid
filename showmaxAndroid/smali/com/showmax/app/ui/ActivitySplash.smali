.class public Lcom/showmax/app/ui/ActivitySplash;
.super Lcom/showmax/app/ui/ActivityBase;
.source "ActivitySplash.java"

# interfaces
.implements Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/ActivitySplash$InitTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAppPreflightCallback:Lcom/showmax/lib/api/io/ApiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/showmax/lib/api/io/ApiCallback",
            "<",
            "Lcom/showmax/lib/api/model/AppPreflightResponseBody;",
            ">;"
        }
    .end annotation
.end field

.field private mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;

.field private mDeepLinkCallback:Lcom/showmax/lib/api/io/ApiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/showmax/lib/api/io/ApiCallback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private mDeeplinkAsset:Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

.field private mFragmentSplashTestTrailer:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

.field mMessageDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

.field private mTutorialWasCanceled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/showmax/app/ui/ActivitySplash;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/ActivitySplash;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;-><init>()V

    .line 162
    new-instance v0, Lcom/showmax/app/ui/ActivitySplash$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivitySplash$1;-><init>(Lcom/showmax/app/ui/ActivitySplash;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySplash;->mMessageDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    .line 480
    new-instance v0, Lcom/showmax/app/ui/ActivitySplash$2;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivitySplash$2;-><init>(Lcom/showmax/app/ui/ActivitySplash;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightCallback:Lcom/showmax/lib/api/io/ApiCallback;

    .line 515
    new-instance v0, Lcom/showmax/app/ui/ActivitySplash$3;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivitySplash$3;-><init>(Lcom/showmax/app/ui/ActivitySplash;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySplash;->mDeepLinkCallback:Lcom/showmax/lib/api/io/ApiCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/ActivitySplash;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySplash;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySplash;->showWelcomeVideo()V

    return-void
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/ActivitySplash;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySplash;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySplash;->verifyApp()V

    return-void
.end method

.method static synthetic access$200(Lcom/showmax/app/ui/ActivitySplash;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySplash;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySplash;->startInitTask()V

    return-void
.end method

.method static synthetic access$300(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/model/AppPreflightResponseBody;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySplash;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    return-object v0
.end method

.method static synthetic access$302(Lcom/showmax/app/ui/ActivitySplash;Lcom/showmax/lib/api/model/AppPreflightResponseBody;)Lcom/showmax/lib/api/model/AppPreflightResponseBody;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySplash;
    .param p1, "x1"    # Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    return-object p1
.end method

.method static synthetic access$400(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySplash;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash;->mDeeplinkAsset:Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    return-object v0
.end method

.method static synthetic access$402(Lcom/showmax/app/ui/ActivitySplash;Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;)Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySplash;
    .param p1, "x1"    # Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySplash;->mDeeplinkAsset:Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    return-object p1
.end method

.method static synthetic access$500(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySplash;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySplash;->isFromDeepLink()Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/io/ApiCallback;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySplash;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash;->mDeepLinkCallback:Lcom/showmax/lib/api/io/ApiCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/showmax/app/ui/ActivitySplash;I)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySplash;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivitySplash;->showRetryDialog(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/showmax/app/ui/ActivitySplash;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySplash;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySplash;->showVerifyAppResultDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/io/ApiCallback;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySplash;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightCallback:Lcom/showmax/lib/api/io/ApiCallback;

    return-object v0
.end method

.method private attachFragmentSplashTestTrailer()V
    .locals 4

    .prologue
    .line 233
    invoke-static {}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->newInstance()Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySplash;->mFragmentSplashTestTrailer:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    .line 234
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySplash;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b00ad

    iget-object v2, p0, Lcom/showmax/app/ui/ActivitySplash;->mFragmentSplashTestTrailer:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    sget-object v3, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->TAG:Ljava/lang/String;

    .line 235
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 236
    return-void
.end method

.method private isFromDeepLink()Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    .locals 3

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySplash;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 316
    .local v0, "incoming":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    :cond_0
    const-string v2, "[ActivitySplash]::[isFromDeepLink]::[false]"

    invoke-static {v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 320
    const/4 v2, 0x0

    .line 324
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/showmax/lib/api/utils/DeeplinkUtils;->parseDeeplinkUri(Landroid/net/Uri;)Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    move-result-object v2

    goto :goto_0
.end method

.method private removeAllFragments()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash;->mFragmentSplashTestTrailer:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySplash;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySplash;->mFragmentSplashTestTrailer:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 255
    :cond_0
    return-void
.end method

.method private showRetryDialog(I)V
    .locals 2
    .param p1, "retryType"    # I

    .prologue
    .line 301
    new-instance v0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    invoke-direct {v0, p0, p1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 302
    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->cancelable(Z)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    const v1, 0x7f0d00ab

    .line 303
    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->message(I)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    const v1, 0x7f0d0062

    .line 304
    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->positiveBtn(I)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    const v1, 0x7f0d005e

    .line 305
    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->negativeBtn(I)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySplash;->mMessageDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    .line 306
    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->listener(Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->show()V

    .line 308
    return-void
.end method

.method private showTutorial()V
    .locals 2

    .prologue
    .line 259
    const/16 v0, 0x3ec

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/showmax/app/ui/ActivityTutorial;->startTutorialActivity(Landroid/app/Activity;IZ)V

    .line 260
    return-void
.end method

.method private showVerifyAppResultDialog()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->getBtntext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    const/16 v1, 0x3d

    invoke-direct {v0, p0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 291
    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->cancelable(Z)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    .line 292
    invoke-virtual {v1}, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->message(Ljava/lang/String;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    .line 293
    invoke-virtual {v1}, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->getBtntext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->positiveBtn(Ljava/lang/String;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySplash;->mMessageDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    .line 294
    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->listener(Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->show()V

    .line 297
    :cond_0
    return-void
.end method

.method private showWelcomeVideo()V
    .locals 1

    .prologue
    .line 264
    invoke-static {p0}, Lcom/showmax/app/util/MauUtils;->isNetworkAccessible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySplash;->attachFragmentSplashTestTrailer()V

    .line 267
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/showmax/lib/api/utils/UserPrefs;->setFirstTimeWelcomeVideo(Landroid/content/Context;Z)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lcom/showmax/app/ui/ActivitySplash;->showRetryDialog(I)V

    goto :goto_0
.end method

.method private showWelcomeVideoErrorDialog()V
    .locals 2

    .prologue
    .line 277
    new-instance v0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    const/16 v1, 0x3c

    invoke-direct {v0, p0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 278
    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->cancelable(Z)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    const v1, 0x7f0d0001

    .line 279
    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->title(I)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    .line 280
    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->message(I)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    const v1, 0x7f0d0060

    .line 281
    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->positiveBtn(I)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySplash;->mMessageDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    .line 282
    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->listener(Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->show()V

    .line 284
    return-void
.end method

.method private startInitTask()V
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lcom/showmax/app/ui/ActivitySplash$InitTask;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivitySplash$InitTask;-><init>(Lcom/showmax/app/ui/ActivitySplash;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivitySplash$InitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 241
    return-void
.end method

.method private verifyApp()V
    .locals 3

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySplash;->removeAllFragments()V

    .line 246
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/showmax/app/ShowMaxApp;->getAppPreflightRequestBody()Lcom/showmax/lib/api/model/AppPreflightRequestBody;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightCallback:Lcom/showmax/lib/api/io/ApiCallback;

    invoke-virtual {v0, v1, v2}, Lcom/showmax/lib/api/io/CatalogueApi;->verifyApp(Lcom/showmax/lib/api/model/AppPreflightRequestBody;Lretrofit/Callback;)V

    .line 247
    return-void
.end method


# virtual methods
.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/showmax/app/ui/ActivitySplash;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/showmax/app/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 102
    const-string v0, "[%s]::[onActivityResult]::[requestCode: %d]::[resultCode: %d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/showmax/app/ui/ActivitySplash;->TAG:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_0

    .line 105
    if-nez p2, :cond_1

    .line 107
    iput-boolean v5, p0, Lcom/showmax/app/ui/ActivitySplash;->mTutorialWasCanceled:Z

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-static {p0, v4}, Lcom/showmax/lib/api/utils/UserPrefs;->setFirstTimeTutorial(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySplash;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivitySplash;->setRequestedOrientation(I)V

    .line 91
    :goto_0
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivitySplash;->setContentView(I)V

    .line 93
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/showmax/lib/api/utils/UserPrefs;->setFirstLaunch(Landroid/content/Context;Z)V

    .line 94
    invoke-static {}, Lcom/showmax/app/util/MauBug;->getInstance()Lcom/showmax/app/util/MauBug;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/app/util/MauBug;->initAndStartSession(Landroid/content/Context;)V

    .line 95
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/showmax/app/util/analytics/MauAnalytics;->onAppFirstStart(Ljava/lang/String;)V

    .line 96
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivitySplash;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public onPlaybackError()V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySplash;->showWelcomeVideoErrorDialog()V

    .line 558
    return-void
.end method

.method public onPlaybackFinished()V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySplash;->verifyApp()V

    .line 564
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onResume()V

    .line 119
    iget-boolean v0, p0, Lcom/showmax/app/ui/ActivitySplash;->mTutorialWasCanceled:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySplash;->finish()V

    .line 142
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->isFirstTimeTutorial(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySplash;->showTutorial()V

    goto :goto_0

    .line 133
    :cond_1
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->isFirstTimeWelcomeVideo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySplash;->showWelcomeVideo()V

    goto :goto_0

    .line 139
    :cond_2
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySplash;->verifyApp()V

    goto :goto_0
.end method

.method public onSkipClick()V
    .locals 0

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySplash;->verifyApp()V

    .line 552
    return-void
.end method
