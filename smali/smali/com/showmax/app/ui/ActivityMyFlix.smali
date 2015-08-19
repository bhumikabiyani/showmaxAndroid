.class public Lcom/showmax/app/ui/ActivityMyFlix;
.super Lcom/showmax/app/ui/ActivityBase;
.source "ActivityMyFlix.java"

# interfaces
.implements Lcom/showmax/app/ui/fragment/FragmentMyFlixList$FragmentMyFlixListListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;
    }
.end annotation


# static fields
.field public static final SAVED_STATE_CURRENT_FRAGMENT_POSITION:Ljava/lang/String; = "saved.state.current.fragment.position"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBookmarksCallback:Lcom/showmax/lib/api/io/ApiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/showmax/lib/api/io/ApiCallback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/AssetList;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFragmentPosition:I

.field private mMyFlixPager:Landroid/support/v4/view/ViewPager;

.field private mMyFlixPagerAdapter:Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mRecentlyWatchedCallback:Lcom/showmax/lib/api/io/ApiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/showmax/lib/api/io/ApiCallback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/AssetList;",
            ">;"
        }
    .end annotation
.end field

.field private mUserlistAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWatchlistTabLayout:Landroid/support/design/widget/TabLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/showmax/app/ui/ActivityMyFlix;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/ActivityMyFlix;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 43
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mUserlistAssets:Ljava/util/Map;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mCurrentFragmentPosition:I

    .line 196
    new-instance v0, Lcom/showmax/app/ui/ActivityMyFlix$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityMyFlix$1;-><init>(Lcom/showmax/app/ui/ActivityMyFlix;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 237
    new-instance v0, Lcom/showmax/app/ui/ActivityMyFlix$2;

    invoke-direct {v0, p0, v1}, Lcom/showmax/app/ui/ActivityMyFlix$2;-><init>(Lcom/showmax/app/ui/ActivityMyFlix;I)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mRecentlyWatchedCallback:Lcom/showmax/lib/api/io/ApiCallback;

    .line 266
    new-instance v0, Lcom/showmax/app/ui/ActivityMyFlix$3;

    invoke-direct {v0, p0, v1}, Lcom/showmax/app/ui/ActivityMyFlix$3;-><init>(Lcom/showmax/app/ui/ActivityMyFlix;I)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mBookmarksCallback:Lcom/showmax/lib/api/io/ApiCallback;

    .line 344
    return-void
.end method

.method static synthetic access$002(Lcom/showmax/app/ui/ActivityMyFlix;I)I
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityMyFlix;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mCurrentFragmentPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/ActivityMyFlix;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityMyFlix;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mUserlistAssets:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/showmax/app/ui/ActivityMyFlix;)Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityMyFlix;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mMyFlixPagerAdapter:Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/showmax/app/ui/ActivityMyFlix;)Lcom/showmax/lib/api/io/ApiCallback;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityMyFlix;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mRecentlyWatchedCallback:Lcom/showmax/lib/api/io/ApiCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/showmax/app/ui/ActivityMyFlix;)Lcom/showmax/lib/api/io/ApiCallback;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityMyFlix;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mBookmarksCallback:Lcom/showmax/lib/api/io/ApiCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/showmax/app/ui/ActivityMyFlix;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityMyFlix;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityMyFlix;->getRecentlyWatchedAsset()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/showmax/app/ui/ActivityMyFlix;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityMyFlix;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityMyFlix;->getBookmarksAssets()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getBookmarksAssets()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mUserlistAssets:Ljava/util/Map;

    sget-object v1, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private getRecentlyWatchedAsset()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mUserlistAssets:Ljava/util/Map;

    sget-object v1, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->RECENTLY_WATCHED:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    if-eqz p1, :cond_0

    .line 168
    const-string v0, "saved.state.current.fragment.position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mCurrentFragmentPosition:I

    .line 170
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mActionBarHelper:Lcom/showmax/app/util/ActionBarHelper;

    invoke-virtual {v0}, Lcom/showmax/app/util/ActionBarHelper;->getTabs()Landroid/support/design/widget/TabLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mWatchlistTabLayout:Landroid/support/design/widget/TabLayout;

    .line 176
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMyFlix;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMyFlix;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mWatchlistTabLayout:Landroid/support/design/widget/TabLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    .line 180
    :cond_0
    const v0, 0x7f0b00a7

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityMyFlix;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mMyFlixPager:Landroid/support/v4/view/ViewPager;

    .line 181
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mMyFlixPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 183
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mMyFlixPagerAdapter:Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;-><init>(Lcom/showmax/app/ui/ActivityMyFlix;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mMyFlixPagerAdapter:Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mMyFlixPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mMyFlixPagerAdapter:Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 188
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mWatchlistTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mMyFlixPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 190
    iget v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mCurrentFragmentPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 192
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mMyFlixPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mCurrentFragmentPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 194
    :cond_2
    return-void
.end method

.method private isUserlistAssetLoaded()Z
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mUserlistAssets:Ljava/util/Map;

    sget-object v1, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mUserlistAssets:Ljava/util/Map;

    sget-object v1, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->RECENTLY_WATCHED:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadUserlistAssets()V
    .locals 4

    .prologue
    .line 218
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    .line 219
    .local v0, "currentLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v1

    sget-object v2, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->RECENTLY_WATCHED:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    invoke-static {p0, v2}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserlist(Landroid/content/Context;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;)Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    move-result-object v2

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mRecentlyWatchedCallback:Lcom/showmax/lib/api/io/ApiCallback;

    invoke-virtual {v1, v2, v0, v3}, Lcom/showmax/lib/api/io/CatalogueApi;->loadUserlistAssets(Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V

    .line 220
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v1

    sget-object v2, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    invoke-static {p0, v2}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserlist(Landroid/content/Context;Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;)Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;

    move-result-object v2

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mBookmarksCallback:Lcom/showmax/lib/api/io/ApiCallback;

    invoke-virtual {v1, v2, v0, v3}, Lcom/showmax/lib/api/io/CatalogueApi;->loadUserlistAssets(Lcom/showmax/lib/api/model/user/userlist/v2/Userlist;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V

    .line 221
    return-void
.end method

.method private showProgressbars()V
    .locals 3

    .prologue
    .line 225
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mMyFlixPagerAdapter:Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;

    invoke-virtual {v2}, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->getFragmentRecentlyWatched()Lcom/showmax/app/ui/fragment/FragmentMyFlixList;

    move-result-object v1

    .line 226
    .local v1, "recentlyWatchedFragment":Lcom/showmax/app/ui/fragment/FragmentMyFlixList;
    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityMyFlix;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {v1}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->showProgressbar()V

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mMyFlixPagerAdapter:Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;

    invoke-virtual {v2}, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->getFragmentBookmarks()Lcom/showmax/app/ui/fragment/FragmentMyFlixList;

    move-result-object v0

    .line 231
    .local v0, "bookmarksFragment":Lcom/showmax/app/ui/fragment/FragmentMyFlixList;
    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityMyFlix;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    invoke-virtual {v0}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->showProgressbar()V

    .line 235
    :cond_1
    return-void
.end method

.method public static startMyFlixActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "sourceContext"    # Landroid/content/Context;

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/showmax/app/ui/ActivityMyFlix;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method


# virtual methods
.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/showmax/app/ui/ActivityMyFlix;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-static {p0}, Lcom/showmax/app/util/MauFlurry;->onNavMyFlix(Landroid/content/Context;)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityMyFlix;->setHasSlidingMenu(Z)V

    .line 79
    invoke-virtual {p0, v0, v0}, Lcom/showmax/app/ui/ActivityMyFlix;->setHasToolbar(ZZ)V

    .line 80
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityMyFlix;->setContentView(I)V

    .line 81
    const v0, 0x7f0d0019

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityMyFlix;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityMyFlix;->setActionBarTitle(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivityMyFlix;->initData(Landroid/os/Bundle;)V

    .line 86
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityMyFlix;->initViews()V

    .line 87
    return-void
.end method

.method public onEvent(Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 331
    const-string v0, "[%s]::[onEvent]::[SubscriptionStatusChangedEvent]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivityMyFlix;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->isUserSignedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMyFlix;->finish()V

    .line 336
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onPause()V

    .line 118
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onPostCreate(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onResume()V

    .line 106
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->isUserSignedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMyFlix;->finish()V

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityMyFlix;->loadUserlistAssets()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    const-string v0, "saved.state.current.fragment.position"

    iget v1, p0, Lcom/showmax/app/ui/ActivityMyFlix;->mCurrentFragmentPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onStart()V

    .line 93
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onStop()V

    .line 131
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 132
    return-void
.end method
