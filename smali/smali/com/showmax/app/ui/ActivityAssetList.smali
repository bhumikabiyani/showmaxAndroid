.class public Lcom/showmax/app/ui/ActivityAssetList;
.super Lcom/showmax/app/ui/ActivityBase;
.source "ActivityAssetList.java"

# interfaces
.implements Lcom/showmax/app/ui/fragment/FragmentAssetGrid$FragmentAssetGridListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/ActivityAssetList$AssetsViewPagerAdapter;
    }
.end annotation


# static fields
.field public static final ARGS_ASSET_TYPE:Ljava/lang/String; = "args.asset.type"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAssetGridViewPager:Landroid/support/v4/view/ViewPager;

.field private mAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

.field private mAssetsViewPagerAdapter:Lcom/showmax/app/ui/ActivityAssetList$AssetsViewPagerAdapter;

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryTabLayout:Landroid/support/design/widget/TabLayout;

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mProgressBar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

.field private mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/showmax/app/ui/ActivityAssetList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/ActivityAssetList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;-><init>()V

    .line 274
    new-instance v0, Lcom/showmax/app/ui/ActivityAssetList$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityAssetList$1;-><init>(Lcom/showmax/app/ui/ActivityAssetList;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 340
    return-void
.end method

.method static synthetic access$002(Lcom/showmax/app/ui/ActivityAssetList;Lcom/showmax/lib/api/model/catalogue/Category;)Lcom/showmax/lib/api/model/catalogue/Category;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAssetList;
    .param p1, "x1"    # Lcom/showmax/lib/api/model/catalogue/Category;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityAssetList;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    return-object p1
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/ActivityAssetList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityAssetList;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method private hideProgressBar()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList;->mProgressBar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList;->mProgressBar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 263
    :cond_0
    return-void
.end method

.method private initActionBarTitle()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 267
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentSection(Landroid/content/Context;)Lcom/showmax/lib/api/model/catalogue/Section;

    move-result-object v0

    .line 268
    .local v0, "section":Lcom/showmax/lib/api/model/catalogue/Section;
    iget-object v3, v0, Lcom/showmax/lib/api/model/catalogue/Section;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/showmax/app/util/StringUtils;->capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "sectionStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/showmax/app/ui/ActivityAssetList;->mAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    sget-object v4, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne v3, v4, :cond_0

    const v3, 0x7f0d0017

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/showmax/app/ui/ActivityAssetList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "title":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2}, Lcom/showmax/app/ui/ActivityAssetList;->setActionBarTitle(Ljava/lang/String;)V

    .line 272
    return-void

    .line 269
    .end local v2    # "title":Ljava/lang/String;
    :cond_0
    const v3, 0x7f0d0018

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    .line 270
    invoke-virtual {p0, v3, v4}, Lcom/showmax/app/ui/ActivityAssetList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 230
    .local v0, "incoming":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "args.asset.type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    iput-object v1, p0, Lcom/showmax/app/ui/ActivityAssetList;->mAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 232
    if-eqz p1, :cond_0

    .line 236
    :cond_0
    return-void
.end method

.method private loadCategories()V
    .locals 3

    .prologue
    .line 240
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentSection(Landroid/content/Context;)Lcom/showmax/lib/api/model/catalogue/Section;

    move-result-object v0

    .line 241
    .local v0, "section":Lcom/showmax/lib/api/model/catalogue/Section;
    invoke-static {}, Lcom/showmax/app/io/DataManager;->getInstance()Lcom/showmax/app/io/DataManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/showmax/app/io/DataManager;->fetchCategories(Lcom/showmax/lib/api/model/catalogue/Section;Z)V

    .line 242
    return-void
.end method

.method private showAssetsViewPager()V
    .locals 4

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAssetList;->hideProgressBar()V

    .line 247
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList;->mAssetsViewPagerAdapter:Lcom/showmax/app/ui/ActivityAssetList$AssetsViewPagerAdapter;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/showmax/app/ui/ActivityAssetList$AssetsViewPagerAdapter;

    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetList;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAssetList;->mAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityAssetList;->mCategories:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/showmax/app/ui/ActivityAssetList$AssetsViewPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList;->mAssetsViewPagerAdapter:Lcom/showmax/app/ui/ActivityAssetList$AssetsViewPagerAdapter;

    .line 249
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList;->mAssetGridViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityAssetList;->mAssetsViewPagerAdapter:Lcom/showmax/app/ui/ActivityAssetList$AssetsViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList;->mCategoryTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityAssetList;->mAssetGridViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 255
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList;->mAssetsViewPagerAdapter:Lcom/showmax/app/ui/ActivityAssetList$AssetsViewPagerAdapter;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityAssetList$AssetsViewPagerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public static startMovieAssetGridActivity(Landroid/content/Context;)V
    .locals 3
    .param p0, "sourceContext"    # Landroid/content/Context;

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/showmax/app/ui/ActivityAssetList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "args.asset.type"

    sget-object v2, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 205
    return-void
.end method

.method public static startTvSeriesAssetGridActivity(Landroid/content/Context;)V
    .locals 3
    .param p0, "sourceContext"    # Landroid/content/Context;

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/showmax/app/ui/ActivityAssetList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "args.asset.type"

    sget-object v2, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->TV_SERIES:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method


# virtual methods
.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/showmax/app/ui/ActivityAssetList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityAssetList;->setHasSlidingMenu(Z)V

    .line 79
    invoke-virtual {p0, v0, v0}, Lcom/showmax/app/ui/ActivityAssetList;->setHasToolbar(ZZ)V

    .line 80
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityAssetList;->setContentView(I)V

    .line 82
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList;->mActionBarHelper:Lcom/showmax/app/util/ActionBarHelper;

    invoke-virtual {v0}, Lcom/showmax/app/util/ActionBarHelper;->getTabs()Landroid/support/design/widget/TabLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList;->mCategoryTabLayout:Landroid/support/design/widget/TabLayout;

    .line 83
    const v0, 0x7f0b009d

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityAssetList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList;->mAssetGridViewPager:Landroid/support/v4/view/ViewPager;

    .line 84
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList;->mAssetGridViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityAssetList;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 85
    const v0, 0x7f0b009e

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityAssetList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/RefreshProgressBar;

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList;->mProgressBar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    .line 87
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivityAssetList;->initData(Landroid/os/Bundle;)V

    .line 88
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAssetList;->initActionBarTitle()V

    .line 91
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList;->mAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne v0, v1, :cond_1

    .line 93
    invoke-static {p0}, Lcom/showmax/app/util/MauFlurry;->onNavAllMovies(Landroid/content/Context;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList;->mAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->TV_SERIES:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne v0, v1, :cond_0

    .line 97
    invoke-static {p0}, Lcom/showmax/app/util/MauFlurry;->onNavAllTvShows(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    .line 132
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 133
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v3, 0x7f0f0000

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 136
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getSortOption(Landroid/content/Context;)Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    move-result-object v2

    .line 138
    .local v2, "sortOption":Lcom/showmax/lib/api/utils/UserPrefs$SortOption;
    sget-object v3, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_ASC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    if-ne v2, v3, :cond_0

    .line 140
    const v3, 0x7f0b01d7

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 154
    .local v1, "menuItem":Landroid/view/MenuItem;
    :goto_0
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 155
    return v4

    .line 142
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    sget-object v3, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_DESC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    if-ne v2, v3, :cond_1

    .line 144
    const v3, 0x7f0b01d8

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .restart local v1    # "menuItem":Landroid/view/MenuItem;
    goto :goto_0

    .line 146
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    sget-object v3, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_OLDEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    if-ne v2, v3, :cond_2

    .line 148
    const v3, 0x7f0b01d6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .restart local v1    # "menuItem":Landroid/view/MenuItem;
    goto :goto_0

    .line 152
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    const v3, 0x7f0b01d5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .restart local v1    # "menuItem":Landroid/view/MenuItem;
    goto :goto_0
.end method

.method public onEvent(Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 325
    const-string v0, "[%s]::[onEvent]::[FetchCategoriesFinishedEvent]::[success: %b]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivityAssetList;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;->success()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    invoke-virtual {p1}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList;->mAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;->getMovieCategories()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList;->mCategories:Ljava/util/ArrayList;

    .line 330
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAssetList;->showAssetsViewPager()V

    .line 332
    :cond_0
    return-void

    .line 329
    :cond_1
    invoke-virtual {p1}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;->getTvSeriesCategories()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 163
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 185
    :pswitch_0
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 166
    :pswitch_1
    sget-object v2, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_NEWEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-static {p0, v2}, Lcom/showmax/lib/api/utils/UserPrefs;->setSortOption(Landroid/content/Context;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 170
    :pswitch_2
    sget-object v2, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_OLDEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-static {p0, v2}, Lcom/showmax/lib/api/utils/UserPrefs;->setSortOption(Landroid/content/Context;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_2
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 174
    :pswitch_3
    sget-object v2, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_ASC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-static {p0, v2}, Lcom/showmax/lib/api/utils/UserPrefs;->setSortOption(Landroid/content/Context;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    .line 178
    :pswitch_4
    sget-object v2, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_DESC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-static {p0, v2}, Lcom/showmax/lib/api/utils/UserPrefs;->setSortOption(Landroid/content/Context;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 179
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_4
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_4

    .line 182
    :pswitch_5
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityAssetList;->startSearchActivity()V

    move v1, v0

    .line 183
    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b01d3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onPostCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityAssetList;->loadCategories()V

    .line 113
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onResume()V

    .line 119
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onStart()V

    .line 105
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onStop()V

    .line 125
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 126
    return-void
.end method
