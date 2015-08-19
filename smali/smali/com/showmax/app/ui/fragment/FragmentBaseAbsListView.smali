.class public abstract Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;
.super Lcom/showmax/app/ui/fragment/FragmentBase;
.source "FragmentBaseAbsListView.java"


# instance fields
.field protected mAbsListView:Landroid/widget/AbsListView;

.field protected mAssetAdapter:Lcom/showmax/app/model/adapter/BaseAssetAdapter;

.field private mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;-><init>()V

    .line 151
    new-instance v0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView$1;-><init>(Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;)V

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;)Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

    return-object v0
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->getSuccessorLogTag()Ljava/lang/String;

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
.method public abstract getAbsListViewId()I
.end method

.method public abstract getAdapter()Lcom/showmax/app/model/adapter/BaseAssetAdapter;
.end method

.method public abstract getNoDataMessage()Ljava/lang/String;
.end method

.method public abstract getProgressBarId()I
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->onAttach(Landroid/app/Activity;)V

    .line 71
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 68
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
    .line 56
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;->onDetach()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

    .line 94
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/showmax/app/ui/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->getAbsListViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mAbsListView:Landroid/widget/AbsListView;

    .line 79
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->getProgressBarId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/RefreshProgressBar;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    .line 81
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mAssetAdapter:Lcom/showmax/app/model/adapter/BaseAssetAdapter;

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->getAdapter()Lcom/showmax/app/model/adapter/BaseAssetAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mAssetAdapter:Lcom/showmax/app/model/adapter/BaseAssetAdapter;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mAssetAdapter:Lcom/showmax/app/model/adapter/BaseAssetAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mAbsListView:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 87
    return-void
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
    .line 109
    .local p1, "assets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mAssetAdapter:Lcom/showmax/app/model/adapter/BaseAssetAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->setData(Ljava/util/ArrayList;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 110
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->showNoResult()V

    .line 120
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showNoResult()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mAbsListView:Landroid/widget/AbsListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->getNoDataMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->showMessage(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public showProgressbar()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mAbsListView:Landroid/widget/AbsListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 131
    return-void
.end method

.method public sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V
    .locals 1
    .param p1, "sortOption"    # Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mAssetAdapter:Lcom/showmax/app/model/adapter/BaseAssetAdapter;

    invoke-virtual {v0, p1}, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 125
    return-void
.end method
