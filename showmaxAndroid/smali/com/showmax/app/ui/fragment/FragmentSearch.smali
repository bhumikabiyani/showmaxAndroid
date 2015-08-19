.class public Lcom/showmax/app/ui/fragment/FragmentSearch;
.super Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;
.source "FragmentSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/fragment/FragmentSearch$FragmentSearchListener;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_SEARCH_QUERY:Ljava/lang/String; = "bundle.key.search.query"

.field public static final BUNDLE_KEY_SEARCH_TYPE:Ljava/lang/String; = "bundle.key.search.type"

.field public static final BUNDLE_KEY_SECTION:Ljava/lang/String; = "bundle.key.section"

.field public static final BUNDLE_KEY_SELECTED_ASSET_TYPE:Ljava/lang/String; = "bundle.key.selected.asset.type"

.field public static final BUNDLE_KEY_SELECTED_CATEGORY:Ljava/lang/String; = "bundle.key.selected.category"

.field public static final BUNDLE_KEY_SELECTED_SECTION:Ljava/lang/String; = "bundle.key.selected.section"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/showmax/app/ui/fragment/FragmentSearch$FragmentSearchListener;

.field private mMessage:Landroid/widget/TextView;

.field private mOnResultListScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/showmax/app/ui/fragment/FragmentSearch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/fragment/FragmentSearch;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;-><init>()V

    .line 302
    new-instance v0, Lcom/showmax/app/ui/fragment/FragmentSearch$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/fragment/FragmentSearch$1;-><init>(Lcom/showmax/app/ui/fragment/FragmentSearch;)V

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mOnResultListScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/fragment/FragmentSearch;)Lcom/showmax/app/ui/fragment/FragmentSearch$FragmentSearchListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentSearch;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mListener:Lcom/showmax/app/ui/fragment/FragmentSearch$FragmentSearchListener;

    return-object v0
.end method

.method public static newInstance()Lcom/showmax/app/ui/fragment/FragmentSearch;
    .locals 2

    .prologue
    .line 211
    new-instance v1, Lcom/showmax/app/ui/fragment/FragmentSearch;

    invoke-direct {v1}, Lcom/showmax/app/ui/fragment/FragmentSearch;-><init>()V

    .line 212
    .local v1, "f":Lcom/showmax/app/ui/fragment/FragmentSearch;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/showmax/app/ui/fragment/FragmentSearch;->setArguments(Landroid/os/Bundle;)V

    .line 215
    return-object v1
.end method


# virtual methods
.method public filter(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V
    .locals 9
    .param p1, "selectedSection"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "selectedCategory"    # Lcom/showmax/lib/api/model/catalogue/Category;
    .param p3, "assetType"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 239
    const-string v3, "[%s]::[filter]::[section: %s]::[category: %s]::[searchType: %s]"

    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/showmax/app/ui/fragment/FragmentSearch;->TAG:Ljava/lang/String;

    aput-object v2, v4, v6

    aput-object p1, v4, v7

    const/4 v5, 0x2

    if-nez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    aput-object v2, v4, v5

    const/4 v2, 0x3

    aput-object p3, v4, v2

    invoke-static {v3, v4}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;

    check-cast v0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;

    .line 243
    .local v0, "adapter":Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;
    invoke-virtual {v0, p1, p2, p3}, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->filter(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V

    .line 245
    invoke-virtual {v0}, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->getItemCount()I

    move-result v1

    .line 246
    .local v1, "itemFound":I
    if-ge v1, v7, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentSearch;->showNoResult()V

    .line 256
    :goto_1
    return-void

    .line 239
    .end local v0    # "adapter":Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;
    .end local v1    # "itemFound":I
    :cond_0
    iget-object v2, p2, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    goto :goto_0

    .line 252
    .restart local v0    # "adapter":Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;
    .restart local v1    # "itemFound":I
    :cond_1
    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    invoke-virtual {v2, v8}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 254
    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_1
.end method

.method public getNoDataMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/fragment/FragmentSearch;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgressBarId()I
    .locals 1

    .prologue
    .line 178
    const v0, 0x7f0b010b

    return v0
.end method

.method public getRecyclerViewId()I
    .locals 1

    .prologue
    .line 172
    const v0, 0x7f0b010d

    return v0
.end method

.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/showmax/app/ui/fragment/FragmentSearch;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onActivityCreated(Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/showmax/app/ui/fragment/FragmentSearch$FragmentSearchListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mListener:Lcom/showmax/app/ui/fragment/FragmentSearch$FragmentSearchListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onAttach(Landroid/app/Activity;)V

    .line 89
    return-void

    .line 84
    :catch_0
    move-exception v1

    .line 86
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

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/fragment/FragmentSearch;->setHasOptionsMenu(Z)V

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    const v0, 0x7f030043

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

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mListener:Lcom/showmax/app/ui/fragment/FragmentSearch$FragmentSearchListener;

    .line 138
    return-void
.end method

.method public onEvent(Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 289
    const-string v0, "[%s]::[onEvent]::[SubscriptionStatusChangedEvent]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/fragment/FragmentSearch;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;

    invoke-virtual {v0}, Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;->refreshSubscriptionStatus()V

    .line 294
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    .line 144
    const-string v1, "[%s]::[onOptionsItemSelected]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/showmax/app/ui/fragment/FragmentSearch;->TAG:Ljava/lang/String;

    aput-object v3, v2, v0

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

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/fragment/FragmentSearch;->sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    goto :goto_0

    .line 151
    :pswitch_1
    sget-object v1, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_OLDEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/fragment/FragmentSearch;->sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    goto :goto_0

    .line 154
    :pswitch_2
    sget-object v1, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_ASC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/fragment/FragmentSearch;->sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    goto :goto_0

    .line 157
    :pswitch_3
    sget-object v1, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_DESC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/fragment/FragmentSearch;->sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    goto :goto_0

    .line 145
    nop

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
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentSearch;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/showmax/lib/api/utils/UserPrefs;->getSortOption(Landroid/content/Context;)Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/fragment/FragmentSearch;->sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

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
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f0b010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mMessage:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mOnResultListScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 104
    return-void
.end method

.method public setupAdapter(Landroid/support/v7/widget/RecyclerView;)Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 190
    new-instance v0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentSearch;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, "adapter":Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentSearch;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 192
    .local v1, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 193
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 194
    return-object v0
.end method

.method public showAssets(Ljava/util/ArrayList;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V
    .locals 4
    .param p2, "sortOption"    # Lcom/showmax/lib/api/utils/UserPrefs$SortOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;",
            "Lcom/showmax/lib/api/utils/UserPrefs$SortOption;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "assets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    const/16 v3, 0x8

    .line 220
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;

    check-cast v0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;

    .line 221
    .local v0, "adapter":Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0, p1}, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->setData(Ljava/util/ArrayList;)V

    .line 224
    invoke-virtual {v0}, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->getItemCount()I

    move-result v1

    .line 225
    .local v1, "itemFound":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentSearch;->showNoResult()V

    .line 235
    .end local v1    # "itemFound":I
    :cond_0
    :goto_0
    return-void

    .line 230
    .restart local v1    # "itemFound":I
    :cond_1
    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    invoke-virtual {v2, v3}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 232
    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showMessage(I)V
    .locals 2
    .param p1, "stringResId"    # I

    .prologue
    const/16 v1, 0x8

    .line 274
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentSearch;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    return-void
.end method

.method public showNoResult()V
    .locals 1

    .prologue
    .line 269
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/fragment/FragmentSearch;->showMessage(I)V

    .line 270
    return-void
.end method

.method public showProgressbar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 261
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSearch;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    return-void
.end method
