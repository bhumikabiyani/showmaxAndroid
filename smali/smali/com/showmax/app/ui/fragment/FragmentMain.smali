.class public Lcom/showmax/app/ui/fragment/FragmentMain;
.super Lcom/showmax/app/ui/fragment/FragmentBase;
.source "FragmentMain.java"

# interfaces
.implements Lcom/showmax/app/ui/widget/ThreeViewPager$ThreeViewPagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/fragment/FragmentMain$FragmentMainListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdsThreeViewPager:Lcom/showmax/app/ui/widget/ThreeViewPager;

.field private mAssetTileViewListener:Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;

.field private mFragmentMainListener:Lcom/showmax/app/ui/fragment/FragmentMain$FragmentMainListener;

.field private mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

.field private mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

.field private mTilesContainer:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/showmax/app/ui/fragment/FragmentMain;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/fragment/FragmentMain;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;-><init>()V

    .line 264
    new-instance v0, Lcom/showmax/app/ui/fragment/FragmentMain$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/fragment/FragmentMain$1;-><init>(Lcom/showmax/app/ui/fragment/FragmentMain;)V

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mAssetTileViewListener:Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;

    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/fragment/FragmentMain;)Lcom/showmax/app/ui/fragment/FragmentMain$FragmentMainListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentMain;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mFragmentMainListener:Lcom/showmax/app/ui/fragment/FragmentMain$FragmentMainListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/fragment/FragmentMain;)Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentMain;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

    return-object v0
.end method

.method public static newInstance()Lcom/showmax/app/ui/fragment/FragmentMain;
    .locals 3

    .prologue
    .line 187
    const-string v2, "[FragmentMain]::[newInstance]"

    invoke-static {v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 188
    new-instance v1, Lcom/showmax/app/ui/fragment/FragmentMain;

    invoke-direct {v1}, Lcom/showmax/app/ui/fragment/FragmentMain;-><init>()V

    .line 189
    .local v1, "f":Lcom/showmax/app/ui/fragment/FragmentMain;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 190
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/showmax/app/ui/fragment/FragmentMain;->setArguments(Landroid/os/Bundle;)V

    .line 191
    return-object v1
.end method


# virtual methods
.method public appendAssetTile(Lcom/showmax/app/ui/ActivityMain$Tile;Z)V
    .locals 5
    .param p1, "tile"    # Lcom/showmax/app/ui/ActivityMain$Tile;
    .param p2, "clearBeforeAppend"    # Z

    .prologue
    const/4 v4, 0x0

    .line 219
    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 220
    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mTilesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 222
    if-eqz p2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mTilesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentMain;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 228
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03004d

    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mTilesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/showmax/app/ui/widget/AssetsTileView;

    .line 229
    .local v1, "tileView":Lcom/showmax/app/ui/widget/AssetsTileView;
    invoke-virtual {p1}, Lcom/showmax/app/ui/ActivityMain$Tile;->getAssets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/showmax/app/ui/ActivityMain$Tile;->getTileType()Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    move-result-object v3

    invoke-virtual {p1}, Lcom/showmax/app/ui/ActivityMain$Tile;->getCategory()Lcom/showmax/lib/api/model/catalogue/Category;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/showmax/app/ui/widget/AssetsTileView;->showAssets(Ljava/util/ArrayList;Lcom/showmax/app/ui/widget/AssetsTileView$TileType;Lcom/showmax/lib/api/model/catalogue/Category;)V

    .line 230
    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mAssetTileViewListener:Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;

    invoke-virtual {v1, v2}, Lcom/showmax/app/ui/widget/AssetsTileView;->setAssetsTileViewListener(Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;)V

    .line 231
    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mTilesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 232
    return-void
.end method

.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/showmax/app/ui/fragment/FragmentMain;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    return-void
.end method

.method public onAdvertisementClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 1
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mFragmentMainListener:Lcom/showmax/app/ui/fragment/FragmentMain$FragmentMainListener;

    invoke-interface {v0, p1}, Lcom/showmax/app/ui/fragment/FragmentMain$FragmentMainListener;->onAdvertisementClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 171
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/showmax/app/ui/fragment/FragmentMain$FragmentMainListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mFragmentMainListener:Lcom/showmax/app/ui/fragment/FragmentMain$FragmentMainListener;

    .line 84
    move-object v0, p1

    check-cast v0, Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->onAttach(Landroid/app/Activity;)V

    .line 91
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Activity must implement fragment\'s callbacks."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    const v0, 0x7f030041

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;->onDetach()V

    .line 157
    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mFragmentMainListener:Lcom/showmax/app/ui/fragment/FragmentMain$FragmentMainListener;

    .line 158
    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

    .line 159
    return-void
.end method

.method public onEvent(Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 243
    const-string v2, "[%s]::[onEvent]::[SubscriptionStatusChangedEvent]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/showmax/app/ui/fragment/FragmentMain;->TAG:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mTilesContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 246
    const/4 v1, 0x0

    .line 247
    .local v1, "view":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mTilesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 249
    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mTilesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 250
    instance-of v2, v1, Lcom/showmax/app/ui/widget/AssetsTileView;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 252
    check-cast v2, Lcom/showmax/app/ui/widget/AssetsTileView;

    invoke-virtual {v2}, Lcom/showmax/app/ui/widget/AssetsTileView;->refreshSubscriptionStatus()V

    .line 247
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "i":I
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;->onPause()V

    .line 140
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;->onResume()V

    .line 134
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;->onStart()V

    .line 123
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mAdsThreeViewPager:Lcom/showmax/app/ui/widget/ThreeViewPager;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mAdsThreeViewPager:Lcom/showmax/app/ui/widget/ThreeViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/ThreeViewPager;->setAutoPageEnabled(Z)V

    .line 127
    :cond_0
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;->onStop()V

    .line 146
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mAdsThreeViewPager:Lcom/showmax/app/ui/widget/ThreeViewPager;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mAdsThreeViewPager:Lcom/showmax/app/ui/widget/ThreeViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/ThreeViewPager;->setAutoPageEnabled(Z)V

    .line 151
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lcom/showmax/app/ui/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f0b0106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/ThreeViewPager;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mAdsThreeViewPager:Lcom/showmax/app/ui/widget/ThreeViewPager;

    .line 105
    const v0, 0x7f0b0107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mTilesContainer:Landroid/view/ViewGroup;

    .line 106
    const v0, 0x7f0b0108

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/RefreshProgressBar;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    .line 108
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mAdsThreeViewPager:Lcom/showmax/app/ui/widget/ThreeViewPager;

    invoke-virtual {v0, p0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->setThreeViewPagerListener(Lcom/showmax/app/ui/widget/ThreeViewPager$ThreeViewPagerListener;)V

    .line 109
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mAdsThreeViewPager:Lcom/showmax/app/ui/widget/ThreeViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/ThreeViewPager;->setAutoPageEnabled(Z)V

    .line 110
    return-void
.end method

.method public showAdvertisements(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Advertisement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "advertisements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Advertisement;>;"
    const/4 v0, 0x0

    .line 196
    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 197
    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mAdsThreeViewPager:Lcom/showmax/app/ui/widget/ThreeViewPager;

    invoke-virtual {v1, v0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->setVisibility(I)V

    .line 199
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mAdsThreeViewPager:Lcom/showmax/app/ui/widget/ThreeViewPager;

    invoke-virtual {v0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->setNoData()V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mAdsThreeViewPager:Lcom/showmax/app/ui/widget/ThreeViewPager;

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentMain;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, p1, v0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->setData(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public showProgressBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 212
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mAdsThreeViewPager:Lcom/showmax/app/ui/widget/ThreeViewPager;

    invoke-virtual {v0, v2}, Lcom/showmax/app/ui/widget/ThreeViewPager;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain;->mTilesContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 215
    return-void
.end method
