.class public abstract Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;
.super Lcom/showmax/app/ui/fragment/FragmentBase;
.source "FragmentBaseRecyclerView.java"


# instance fields
.field protected mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;

.field private mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

.field private mOnItemClickListener:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter$OnItemClickListener;

.field protected mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

.field protected mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;-><init>()V

    .line 144
    new-instance v0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView$1;-><init>(Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;)V

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mOnItemClickListener:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;)Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

    return-object v0
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->getSuccessorLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".LIST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getNoDataMessage()Ljava/lang/String;
.end method

.method public abstract getProgressBarId()I
.end method

.method public abstract getRecyclerViewId()I
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->onAttach(Landroid/app/Activity;)V

    .line 68
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 65
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
    .line 53
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;->onDetach()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

    .line 87
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lcom/showmax/app/ui/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->getRecyclerViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 76
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->getProgressBarId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/RefreshProgressBar;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    .line 78
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->setupAdapter(Landroid/support/v7/widget/RecyclerView;)Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;

    .line 79
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mOnItemClickListener:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;->setOnItemClickListener(Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter$OnItemClickListener;)V

    .line 80
    return-void
.end method

.method public abstract setupAdapter(Landroid/support/v7/widget/RecyclerView;)Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;
.end method

.method public showAssets(Ljava/util/ArrayList;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V
    .locals 2
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
    .line 102
    .local p1, "assets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;->setData(Ljava/util/ArrayList;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 103
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->showNoResult()V

    .line 113
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showNoResult()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->getNoDataMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->showMessage(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public showProgressbar()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V
    .locals 1
    .param p1, "sortOption"    # Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;

    invoke-virtual {v0, p1}, Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;->sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 118
    return-void
.end method
