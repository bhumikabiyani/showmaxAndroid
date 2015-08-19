.class public Lcom/showmax/app/ui/fragment/FragmentAssetGrid;
.super Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;
.source "FragmentAssetGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/fragment/FragmentAssetGrid$FragmentAssetGridListener;
    }
.end annotation


# static fields
.field public static final ARGS_ASSET_TYPE:Ljava/lang/String; = "args.asset.type"

.field public static final ARGS_CATEGORY:Ljava/lang/String; = "args.category"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/showmax/lib/api/io/ApiCallback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/AssetList;",
            ">;"
        }
    .end annotation
.end field

.field private mAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

.field private mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

.field private mFragmentAssetGridListener:Lcom/showmax/app/ui/fragment/FragmentAssetGrid$FragmentAssetGridListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;-><init>()V

    .line 254
    new-instance v0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid$1;-><init>(Lcom/showmax/app/ui/fragment/FragmentAssetGrid;)V

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    return-void
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 245
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "args.category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Category;

    iput-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    .line 246
    const-string v1, "args.asset.type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    iput-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->mAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 248
    if-eqz p1, :cond_0

    .line 252
    :cond_0
    return-void
.end method

.method private loadAssets()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->showProgressbar()V

    .line 276
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v2

    .line 277
    .local v2, "currentLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentSection(Landroid/content/Context;)Lcom/showmax/lib/api/model/catalogue/Section;

    move-result-object v1

    .line 279
    .local v1, "currentSection":Lcom/showmax/lib/api/model/catalogue/Section;
    const-string v0, "category.id.all.fake"

    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v3, v3, Lcom/showmax/lib/api/model/catalogue/Category;->id:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 280
    .local v8, "loadFromAllCategories":Z
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->mAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne v0, v3, :cond_3

    .line 282
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    if-eqz v8, :cond_1

    move-object v3, v5

    :goto_0
    sget-object v4, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    iget-object v7, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/String;Ljava/lang/Integer;Lretrofit/Callback;)V

    .line 284
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v3

    if-eqz v8, :cond_2

    const-string v0, "all"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/showmax/app/util/analytics/MauAnalytics;->onNavToMovies(Ljava/lang/String;)V

    .line 292
    :cond_0
    :goto_2
    return-void

    .line 282
    :cond_1
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    goto :goto_0

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v0, v0, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    goto :goto_1

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->mAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->TV_SERIES:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne v0, v3, :cond_0

    .line 288
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    if-eqz v8, :cond_4

    move-object v3, v5

    :goto_3
    sget-object v4, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->TV_SERIES:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    iget-object v7, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/String;Ljava/lang/Integer;Lretrofit/Callback;)V

    .line 290
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v3

    if-eqz v8, :cond_5

    const-string v0, "all"

    :goto_4
    invoke-virtual {v3, v0}, Lcom/showmax/app/util/analytics/MauAnalytics;->onNavToTvShows(Ljava/lang/String;)V

    goto :goto_2

    .line 288
    :cond_4
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    goto :goto_3

    .line 290
    :cond_5
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v0, v0, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    goto :goto_4
.end method

.method public static newInstance(Lcom/showmax/lib/api/model/catalogue/Asset$Type;Lcom/showmax/lib/api/model/catalogue/Category;)Lcom/showmax/app/ui/fragment/FragmentAssetGrid;
    .locals 6
    .param p0, "assetType"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .param p1, "category"    # Lcom/showmax/lib/api/model/catalogue/Category;

    .prologue
    .line 211
    const-string v2, "[%s]::[newInstance]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->TAG:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    new-instance v1, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;

    invoke-direct {v1}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;-><init>()V

    .line 213
    .local v1, "f":Lcom/showmax/app/ui/fragment/FragmentAssetGrid;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "args.category"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 215
    const-string v2, "args.asset.type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 216
    invoke-virtual {v1, v0}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->setArguments(Landroid/os/Bundle;)V

    .line 217
    return-object v1
.end method


# virtual methods
.method public getNoDataMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const v0, 0x7f0d00aa

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgressBarId()I
    .locals 1

    .prologue
    .line 184
    const v0, 0x7f0b0102

    return v0
.end method

.method public getRecyclerViewId()I
    .locals 1

    .prologue
    .line 178
    const v0, 0x7f0b0103

    return v0
.end method

.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->loadAssets()V

    .line 109
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid$FragmentAssetGridListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->mFragmentAssetGridListener:Lcom/showmax/app/ui/fragment/FragmentAssetGrid$FragmentAssetGridListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onAttach(Landroid/app/Activity;)V

    .line 90
    return-void

    .line 85
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Activity must implement fragment\'s callbacks."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->setHasOptionsMenu(Z)V

    .line 75
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->initData(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    const v0, 0x7f030040

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onDetach()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->mFragmentAssetGridListener:Lcom/showmax/app/ui/fragment/FragmentAssetGrid$FragmentAssetGridListener;

    .line 138
    return-void
.end method

.method public onEvent(Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 229
    const-string v0, "[%s]::[onEvent]::[SubscriptionStatusChangedEvent]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;

    invoke-virtual {v0}, Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;->refreshSubscriptionStatus()V

    .line 234
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    .line 144
    const-string v1, "[%s]::[%s]::[onOptionsItemSelected]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->TAG:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v4, v4, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 160
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 148
    :pswitch_0
    sget-object v1, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_NEWEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    goto :goto_0

    .line 151
    :pswitch_1
    sget-object v1, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_OLDEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    goto :goto_0

    .line 154
    :pswitch_2
    sget-object v1, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_ASC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    goto :goto_0

    .line 157
    :pswitch_3
    sget-object v1, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_DESC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x7f0b01d5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onResume()V

    .line 116
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/showmax/lib/api/utils/UserPrefs;->getSortOption(Landroid/content/Context;)Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 117
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onStart()V

    .line 123
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onStop()V

    .line 130
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public setupAdapter(Landroid/support/v7/widget/RecyclerView;)Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 196
    new-instance v0, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, "adapter":Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 198
    .local v1, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 199
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 200
    return-object v0
.end method
