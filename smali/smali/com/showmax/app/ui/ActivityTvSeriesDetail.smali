.class public Lcom/showmax/app/ui/ActivityTvSeriesDetail;
.super Lcom/showmax/app/ui/ActivityBaseDetail;
.source "ActivityTvSeriesDetail.java"

# interfaces
.implements Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;
    }
.end annotation


# static fields
.field public static final ARGS_SEASON_TO_SHOW:Ljava/lang/String; = "args.season.to.show"

.field public static final SAVED_STATE_CURRENT_FRAGMENT_POSITION:Ljava/lang/String; = "saved.state.current.fragment.position"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentFragmentPosition:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

.field private mSeasonToShow:I

.field private mTvSeriesDetailTabLayout:Landroid/support/design/widget/TabLayout;

.field private mTvSeriesPager:Landroid/support/v4/view/ViewPager;

.field private mTvSeriesPagerAdapter:Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;-><init>()V

    .line 60
    iput v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mSeasonToShow:I

    .line 69
    iput v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mCurrentFragmentPosition:I

    .line 284
    new-instance v0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail$1;-><init>(Lcom/showmax/app/ui/ActivityTvSeriesDetail;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 378
    return-void
.end method

.method static synthetic access$002(Lcom/showmax/app/ui/ActivityTvSeriesDetail;I)I
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityTvSeriesDetail;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mCurrentFragmentPosition:I

    return p1
.end method

.method private addTvSeriesImagesToSeasons()V
    .locals 4

    .prologue
    .line 307
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v1, v1, Lcom/showmax/lib/api/model/catalogue/Asset;->seasons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 311
    .local v0, "s":Lcom/showmax/lib/api/model/catalogue/Asset;
    new-instance v2, Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-direct {v2}, Lcom/showmax/lib/api/model/catalogue/Asset;-><init>()V

    iput-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 312
    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v3, v3, Lcom/showmax/lib/api/model/catalogue/Asset;->images:Ljava/util/ArrayList;

    iput-object v3, v2, Lcom/showmax/lib/api/model/catalogue/Asset;->images:Ljava/util/ArrayList;

    goto :goto_0

    .line 315
    .end local v0    # "s":Lcom/showmax/lib/api/model/catalogue/Asset;
    :cond_0
    return-void
.end method

.method private checkTrailerButton()V
    .locals 5

    .prologue
    .line 263
    iget-object v3, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-nez v3, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v3, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mTvSeriesPagerAdapter:Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;

    invoke-virtual {v3}, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->getFragmentTvSeriesDetail()Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;

    move-result-object v1

    .line 269
    .local v1, "detailFragment":Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;
    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    .line 272
    .local v0, "currentLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    iget-object v3, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-static {}, Lcom/showmax/lib/api/utils/LanguageUtils;->getInstance()Lcom/showmax/lib/api/utils/LanguageUtils;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/showmax/lib/api/utils/LanguageUtils;->convert(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/showmax/lib/api/model/catalogue/Asset;->getTrailerVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;

    move-result-object v2

    .line 273
    .local v2, "trailerVideo":Lcom/showmax/lib/api/model/catalogue/Video;
    if-eqz v2, :cond_2

    .line 275
    invoke-virtual {v1}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->showTrailerButton()V

    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {v1}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->hideTrailerButton()V

    goto :goto_0
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mActionBarHelper:Lcom/showmax/app/util/ActionBarHelper;

    invoke-virtual {v0}, Lcom/showmax/app/util/ActionBarHelper;->getTabs()Landroid/support/design/widget/TabLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mTvSeriesDetailTabLayout:Landroid/support/design/widget/TabLayout;

    .line 222
    const v0, 0x7f0b00bb

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/RefreshProgressBar;

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    .line 223
    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mTvSeriesPager:Landroid/support/v4/view/ViewPager;

    .line 224
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mTvSeriesPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 225
    return-void
.end method

.method private showError()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mTvSeriesPager:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const v1, 0x7f0d00aa

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->showMessage(I)V

    .line 258
    return-void
.end method

.method private showTvSeries()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 229
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mTvSeriesPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 232
    new-instance v0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;

    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/showmax/lib/api/model/catalogue/Asset;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mTvSeriesPagerAdapter:Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;

    .line 233
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mTvSeriesPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mTvSeriesPagerAdapter:Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 234
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mTvSeriesDetailTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mTvSeriesPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 236
    iget v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mCurrentFragmentPosition:I

    if-eq v0, v3, :cond_1

    .line 238
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mTvSeriesPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mCurrentFragmentPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mSeasonToShow:I

    if-ne v0, v3, :cond_0

    .line 244
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mTvSeriesPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method

.method public static startTvSeriesDetailActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "sourceContext"    # Landroid/content/Context;
    .param p1, "tvSeriesId"    # Ljava/lang/String;

    .prologue
    .line 180
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->startTvSeriesDetailActivity(Landroid/content/Context;Ljava/lang/String;I)V

    .line 181
    return-void
.end method

.method public static startTvSeriesDetailActivity(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "sourceContext"    # Landroid/content/Context;
    .param p1, "tvSeriesId"    # Ljava/lang/String;
    .param p2, "seasonToShow"    # I

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/showmax/app/ui/ActivityTvSeriesDetail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "args.asset.id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "args.season.to.show"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

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
    .line 139
    sget-object v0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 207
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBaseDetail;->initData(Landroid/os/Bundle;)V

    .line 209
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 210
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "args.season.to.show"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mSeasonToShow:I

    .line 212
    if-eqz p1, :cond_0

    .line 214
    const-string v1, "saved.state.current.fragment.position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mCurrentFragmentPosition:I

    .line 216
    :cond_0
    return-void
.end method

.method public onAssetDetailLoaded(Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 0
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->showTvSeries()V

    .line 148
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->addTvSeriesImagesToSeasons()V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->showError()V

    goto :goto_0
.end method

.method public onCheckTrailerButton()V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->checkTrailerButton()V

    .line 340
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBaseDetail;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->setHasSlidingMenu(Z)V

    .line 81
    invoke-virtual {p0, v0, v0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->setHasToolbar(ZZ)V

    .line 82
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->setContentView(I)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->initData(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->hideActionBarLogo()V

    .line 86
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->initViews()V

    .line 87
    return-void
.end method

.method public onLoadRecommendedAssets()V
    .locals 0

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->loadRecommendedAssets()V

    .line 334
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->onPause()V

    .line 115
    return-void
.end method

.method public onRecommendedAssetClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 1
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 345
    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->startTvSeriesDetailActivity(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public onRecommendedAssetsLoaded(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 159
    .local p1, "recommendedAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mTvSeriesPagerAdapter:Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;

    invoke-virtual {v1}, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->getFragmentTvSeriesDetail()Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;

    move-result-object v0

    .line 160
    .local v0, "detailFragment":Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;
    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v0, p1}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->showRecommendedAssets(Ljava/util/ArrayList;)V

    .line 164
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->loadTvSeriesDetail()V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->showTvSeries()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    const-string v0, "saved.state.current.fragment.position"

    iget v1, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mCurrentFragmentPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBaseDetail;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->onStart()V

    .line 93
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 127
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->onStop()V

    .line 128
    return-void
.end method

.method public onTagClicked(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->startSearchActivity(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public onTrailerClick()V
    .locals 4

    .prologue
    .line 326
    const-string v0, "[%s]::[onTrailerClick]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->startTrailer()V

    .line 328
    return-void
.end method
