.class public Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;
.super Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;
.source "FragmentTvSeriesSeason.java"


# static fields
.field private static final ARGS_TV_SERIES_SEASON:Ljava/lang/String; = "args.tv.series.season"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mSeason:Lcom/showmax/lib/api/model/catalogue/Asset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;-><init>()V

    return-void
.end method

.method private addTvSerieImagesToEpisodes()V
    .locals 4

    .prologue
    .line 193
    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->mSeason:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->mSeason:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v1, v1, Lcom/showmax/lib/api/model/catalogue/Asset;->episodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 197
    .local v0, "e":Lcom/showmax/lib/api/model/catalogue/Asset;
    new-instance v2, Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-direct {v2}, Lcom/showmax/lib/api/model/catalogue/Asset;-><init>()V

    iput-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 198
    iget-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->mSeason:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v3, v3, Lcom/showmax/lib/api/model/catalogue/Asset;->tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v3, v3, Lcom/showmax/lib/api/model/catalogue/Asset;->images:Ljava/util/ArrayList;

    iput-object v3, v2, Lcom/showmax/lib/api/model/catalogue/Asset;->images:Ljava/util/ArrayList;

    goto :goto_0

    .line 201
    .end local v0    # "e":Lcom/showmax/lib/api/model/catalogue/Asset;
    :cond_0
    return-void
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 176
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "args.tv.series.season"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Asset;

    iput-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->mSeason:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 178
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->addTvSerieImagesToEpisodes()V

    .line 180
    if-eqz p1, :cond_0

    .line 184
    :cond_0
    return-void
.end method

.method public static newInstance(Lcom/showmax/lib/api/model/catalogue/Asset;)Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;
    .locals 3
    .param p0, "season"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 116
    new-instance v1, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;

    invoke-direct {v1}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;-><init>()V

    .line 117
    .local v1, "f":Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "args.tv.series.season"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    invoke-virtual {v1, v0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->setArguments(Landroid/os/Bundle;)V

    .line 120
    return-object v1
.end method

.method private showEpisodes(Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 2
    .param p1, "season"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 188
    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->episodes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->showAssets(Ljava/util/ArrayList;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 189
    return-void
.end method


# virtual methods
.method public getNoDataMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const v0, 0x7f0d00aa

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgressBarId()I
    .locals 1

    .prologue
    .line 132
    const v0, 0x7f0b012c

    return v0
.end method

.method public getRecyclerViewId()I
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f0b012d

    return v0
.end method

.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onActivityCreated(Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->mSeason:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-direct {p0, v0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->showEpisodes(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 80
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->initData(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    const v0, 0x7f030046

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onEvent(Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 160
    const-string v0, "[%s]::[onEvent]::[SubscriptionStatusChangedEvent]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;

    invoke-virtual {v0}, Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;->refreshSubscriptionStatus()V

    .line 165
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onStart()V

    .line 86
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onStop()V

    .line 93
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method public setupAdapter(Landroid/support/v7/widget/RecyclerView;)Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;
    .locals 6
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 144
    new-instance v0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;-><init>(Landroid/content/Context;)V

    .line 145
    .local v0, "adapter":Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 146
    .local v1, "gridLayoutManager":Landroid/support/v7/widget/GridLayoutManager;
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 147
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 148
    return-object v0
.end method
