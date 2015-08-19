.class public Lcom/showmax/app/ui/ActivityAssetDetail;
.super Lcom/showmax/app/ui/ActivityBaseDetail;
.source "ActivityAssetDetail.java"

# interfaces
.implements Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

.field private mPricelistListCallback:Lcom/showmax/lib/api/io/ApiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/showmax/lib/api/io/ApiCallback",
            "<",
            "Lcom/showmax/lib/api/model/billing/PricelistList;",
            ">;"
        }
    .end annotation
.end field

.field private mTransactionCallback:Lcom/showmax/lib/api/io/ApiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/showmax/lib/api/io/ApiCallback",
            "<",
            "Lcom/showmax/lib/api/model/billing/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mUserlistTaskForFavouritesListener:Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/showmax/app/ui/ActivityAssetDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/ActivityAssetDetail;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;-><init>()V

    .line 295
    new-instance v0, Lcom/showmax/app/ui/ActivityAssetDetail$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/showmax/app/ui/ActivityAssetDetail$1;-><init>(Lcom/showmax/app/ui/ActivityAssetDetail;I)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mPricelistListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    .line 320
    new-instance v0, Lcom/showmax/app/ui/ActivityAssetDetail$2;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityAssetDetail$2;-><init>(Lcom/showmax/app/ui/ActivityAssetDetail;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mTransactionCallback:Lcom/showmax/lib/api/io/ApiCallback;

    .line 369
    new-instance v0, Lcom/showmax/app/ui/ActivityAssetDetail$3;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityAssetDetail$3;-><init>(Lcom/showmax/app/ui/ActivityAssetDetail;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mUserlistTaskForFavouritesListener:Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;

    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/ActivityAssetDetail;)Z
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAssetDetail;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->isFragmentVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/ActivityAssetDetail;)Lcom/showmax/app/ui/fragment/FragmentMovieDetail;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAssetDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    return-object v0
.end method

.method static synthetic access$200(Lcom/showmax/app/ui/ActivityAssetDetail;)Lcom/showmax/lib/api/io/ApiCallback;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAssetDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mPricelistListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/showmax/app/ui/ActivityAssetDetail;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAssetDetail;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->loadAssetPrice()V

    return-void
.end method

.method static synthetic access$400(Lcom/showmax/app/ui/ActivityAssetDetail;)Lcom/showmax/lib/api/io/ApiCallback;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAssetDetail;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mTransactionCallback:Lcom/showmax/lib/api/io/ApiCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/showmax/app/ui/ActivityAssetDetail;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAssetDetail;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->checkFavouritesButton()V

    return-void
.end method

.method private checkFavouritesButton()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 263
    const-string v2, "[%s]::[checkFavouritesButton]::[mAsset == null? %b]::[isFragmentVisible? %b]::[isUserSignedIn? %b]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/showmax/app/ui/ActivityAssetDetail;->TAG:Ljava/lang/String;

    aput-object v4, v3, v0

    iget-object v4, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-nez v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x2

    .line 264
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->isFragmentVisible()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->isUserSignedIn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v0

    .line 263
    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-nez v0, :cond_2

    .line 280
    :cond_1
    :goto_0
    return-void

    .line 269
    :cond_2
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->isFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->isUserSignedIn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityAssetDetail;->isAssetBookmarked(Lcom/showmax/lib/api/model/catalogue/Asset;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->showFavouritesButton(Z)V

    goto :goto_0

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    invoke-virtual {v0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->hideFavouritesButton()V

    goto :goto_0
.end method

.method private checkPlayButton()V
    .locals 4

    .prologue
    .line 206
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-nez v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v2, v2, Lcom/showmax/lib/api/model/catalogue/Asset;->vodModel:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;->TVOD:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    if-ne v2, v3, :cond_3

    .line 213
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->isUserSignedIn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 215
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->loadAssetPurchase()V

    goto :goto_0

    .line 218
    :cond_2
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->loadAssetPrice()V

    goto :goto_0

    .line 223
    :cond_3
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->isFragmentVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    .line 226
    .local v0, "currentLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-static {}, Lcom/showmax/lib/api/utils/LanguageUtils;->getInstance()Lcom/showmax/lib/api/utils/LanguageUtils;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/showmax/lib/api/utils/LanguageUtils;->convert(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/showmax/lib/api/model/catalogue/Asset;->getMainVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;

    move-result-object v1

    .line 227
    .local v1, "mainVideo":Lcom/showmax/lib/api/model/catalogue/Video;
    if-eqz v1, :cond_4

    .line 229
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    invoke-virtual {v2}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->showPlayButton()V

    goto :goto_0

    .line 232
    :cond_4
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    invoke-virtual {v2}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->hidePlayButton()V

    goto :goto_0
.end method

.method private checkTrailerButton()V
    .locals 4

    .prologue
    .line 240
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-nez v2, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->isFragmentVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    .line 248
    .local v0, "currentLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-static {}, Lcom/showmax/lib/api/utils/LanguageUtils;->getInstance()Lcom/showmax/lib/api/utils/LanguageUtils;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/showmax/lib/api/utils/LanguageUtils;->convert(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/showmax/lib/api/model/catalogue/Asset;->getTrailerVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;

    move-result-object v1

    .line 249
    .local v1, "trailerVideo":Lcom/showmax/lib/api/model/catalogue/Video;
    if-eqz v1, :cond_2

    .line 251
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    invoke-virtual {v2}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->showTrailerButton()V

    goto :goto_0

    .line 255
    :cond_2
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    invoke-virtual {v2}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->hideTrailerButton()V

    goto :goto_0
.end method

.method private isFragmentVisible()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityAssetDetail;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v0

    return v0
.end method

.method private loadAssetPrice()V
    .locals 4

    .prologue
    .line 291
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "userId":Ljava/lang/String;
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v2, v2, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mPricelistListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    invoke-virtual {v1, v2, v0, v3}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAssetPricelist(Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 293
    return-void
.end method

.method private loadAssetPurchase()V
    .locals 5

    .prologue
    .line 284
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "userId":Ljava/lang/String;
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserAccessData(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 286
    .local v0, "token":Ljava/lang/String;
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v2

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v3, v3, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mTransactionCallback:Lcom/showmax/lib/api/io/ApiCallback;

    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/showmax/lib/api/io/CatalogueApi;->isAssetPurchased(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    .line 287
    return-void
.end method

.method private startAddRemoveFavouritesTask()V
    .locals 6

    .prologue
    .line 349
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/showmax/app/ui/ActivityAssetDetail;->showProgress(Lcom/showmax/lib/api/io/ApiCallback;)V

    .line 350
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    invoke-static {v4, v5}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserlist(Landroid/content/Context;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;)Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    move-result-object v3

    .line 351
    .local v3, "userlist":Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;
    if-eqz v3, :cond_0

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "task":Lcom/showmax/app/io/UserlistTaskV2;
    iget-object v4, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v3, v4}, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;->contains(Lcom/showmax/lib/api/model/catalogue/Asset;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 356
    iget-object v4, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v5, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mUserlistTaskForFavouritesListener:Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;

    invoke-static {v4, v5}, Lcom/showmax/app/io/UserlistTaskV2;->newRemoveFromBookmarksTask(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;)Lcom/showmax/app/io/UserlistTaskV2;

    move-result-object v0

    .line 362
    :goto_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserAccessData(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 363
    .local v1, "token":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "userId":Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/showmax/app/io/UserlistTaskV2;->execute(Lcom/showmax/app/io/UserlistTaskV2;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .end local v0    # "task":Lcom/showmax/app/io/UserlistTaskV2;
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "userId":Ljava/lang/String;
    :cond_0
    return-void

    .line 360
    .restart local v0    # "task":Lcom/showmax/app/io/UserlistTaskV2;
    :cond_1
    iget-object v4, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v5, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mUserlistTaskForFavouritesListener:Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;

    invoke-static {v4, v5}, Lcom/showmax/app/io/UserlistTaskV2;->newAddToBookmarksTask(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;)Lcom/showmax/app/io/UserlistTaskV2;

    move-result-object v0

    goto :goto_0
.end method

.method public static startAssetDetailActivity(Landroid/content/Context;Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 3
    .param p0, "sourceContext"    # Landroid/content/Context;
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/showmax/app/ui/ActivityAssetDetail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "args.asset"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 177
    if-eqz p1, :cond_0

    .line 179
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v1

    iget-object v2, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/showmax/app/util/analytics/MauAnalytics;->onNavToAssetDetail(Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method

.method public static startAssetDetailActivity(Landroid/content/Context;Ljava/lang/String;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V
    .locals 2
    .param p0, "sourceContext"    # Landroid/content/Context;
    .param p1, "assetId"    # Ljava/lang/String;
    .param p2, "assetType"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/showmax/app/ui/ActivityAssetDetail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "args.asset.id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "args.asset.type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 189
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/showmax/app/util/analytics/MauAnalytics;->onNavToAssetDetail(Ljava/lang/String;)V

    .line 190
    return-void
.end method


# virtual methods
.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/showmax/app/ui/ActivityAssetDetail;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onAssetDetailLoaded(Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 2
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityAssetDetail;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->showAsset(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 161
    :cond_0
    return-void
.end method

.method public onCheckFavouritesButton()V
    .locals 0

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->checkFavouritesButton()V

    .line 439
    return-void
.end method

.method public onCheckPlayButton()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->checkPlayButton()V

    .line 427
    return-void
.end method

.method public onCheckTrailerButton()V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->checkTrailerButton()V

    .line 433
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBaseDetail;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityAssetDetail;->setHasSlidingMenu(Z)V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/showmax/app/ui/ActivityAssetDetail;->setHasToolbar(ZZ)V

    .line 70
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityAssetDetail;->setContentView(I)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/showmax/app/ui/ActivityAssetDetail;->initData(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->hideActionBarLogo()V

    .line 74
    if-eqz p1, :cond_3

    .line 77
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    .line 91
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    invoke-virtual {v0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->isInLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b009c

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    sget-object v3, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->TAG:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 95
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne v0, v1, :cond_5

    .line 103
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->loadMovieDetail()V

    .line 110
    :cond_2
    :goto_1
    return-void

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->newInstance(Lcom/showmax/lib/api/model/catalogue/Asset;)Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    goto :goto_0

    .line 87
    :cond_4
    invoke-static {}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->newInstance()Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    goto :goto_0

    .line 107
    :cond_5
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->loadEpisodeDetail()V

    goto :goto_1
.end method

.method public onFavouritesClick()V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->startAddRemoveFavouritesTask()V

    .line 415
    return-void
.end method

.method public onLoadRecommendedAssets()V
    .locals 0

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->loadRecommendedAssets()V

    .line 421
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->onPause()V

    .line 134
    return-void
.end method

.method public onPlayClick()V
    .locals 0

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->startMainVideo()V

    .line 397
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBaseDetail;->onPostCreate(Landroid/os/Bundle;)V

    .line 122
    return-void
.end method

.method public onPurchaseClick()V
    .locals 0

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->purchaseAsset()V

    .line 409
    return-void
.end method

.method public onRecommendedAssetsLoaded(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "recommendedAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityAssetDetail;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    invoke-virtual {v0, p1}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->showRecommendedAssets(Ljava/util/ArrayList;)V

    .line 170
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->onResume()V

    .line 128
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->onStart()V

    .line 116
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->onStop()V

    .line 140
    return-void
.end method

.method public onTagClicked(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lcom/showmax/app/ui/ActivityAssetDetail;->startSearchActivity(Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public onTrailerClick()V
    .locals 0

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetDetail;->startTrailer()V

    .line 403
    return-void
.end method
