.class public Lcom/showmax/app/ui/widget/AssetsTileView;
.super Landroid/widget/LinearLayout;
.source "AssetsTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;,
        Lcom/showmax/app/ui/widget/AssetsTileView$TileType;
    }
.end annotation


# static fields
.field public static final MAX_AUTOMATIC_REFRESH_COUNT:I = 0x2


# instance fields
.field private mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;

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

.field private mAssetManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mAssetsListView:Landroid/support/v7/widget/RecyclerView;

.field private mAssetsProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

.field private mAutomaticRefreshCount:I

.field private mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

.field private mIndicatorHolder:Landroid/widget/RelativeLayout;

.field private mIndicatorTextTv:Landroid/widget/TextView;

.field private mListener:Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;

.field private mMaxAutomaticRefreshCount:I

.field protected mOnItemClickListener:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter$OnItemClickListener;

.field private mOnSeeAllClickListener:Landroid/view/View$OnClickListener;

.field private mRefreshProgressbarListener:Lcom/showmax/app/ui/widget/RefreshProgressBar$RefreshProgressBarListener;

.field private mSeeAllTv:Landroid/widget/TextView;

.field private mTileType:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mMaxAutomaticRefreshCount:I

    .line 223
    new-instance v0, Lcom/showmax/app/ui/widget/AssetsTileView$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/AssetsTileView$1;-><init>(Lcom/showmax/app/ui/widget/AssetsTileView;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    .line 307
    new-instance v0, Lcom/showmax/app/ui/widget/AssetsTileView$2;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/AssetsTileView$2;-><init>(Lcom/showmax/app/ui/widget/AssetsTileView;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mOnSeeAllClickListener:Landroid/view/View$OnClickListener;

    .line 319
    new-instance v0, Lcom/showmax/app/ui/widget/AssetsTileView$3;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/AssetsTileView$3;-><init>(Lcom/showmax/app/ui/widget/AssetsTileView;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mRefreshProgressbarListener:Lcom/showmax/app/ui/widget/RefreshProgressBar$RefreshProgressBarListener;

    .line 328
    new-instance v0, Lcom/showmax/app/ui/widget/AssetsTileView$4;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/AssetsTileView$4;-><init>(Lcom/showmax/app/ui/widget/AssetsTileView;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mOnItemClickListener:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter$OnItemClickListener;

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/showmax/app/ui/widget/AssetsTileView;->init(Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mMaxAutomaticRefreshCount:I

    .line 223
    new-instance v0, Lcom/showmax/app/ui/widget/AssetsTileView$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/AssetsTileView$1;-><init>(Lcom/showmax/app/ui/widget/AssetsTileView;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    .line 307
    new-instance v0, Lcom/showmax/app/ui/widget/AssetsTileView$2;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/AssetsTileView$2;-><init>(Lcom/showmax/app/ui/widget/AssetsTileView;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mOnSeeAllClickListener:Landroid/view/View$OnClickListener;

    .line 319
    new-instance v0, Lcom/showmax/app/ui/widget/AssetsTileView$3;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/AssetsTileView$3;-><init>(Lcom/showmax/app/ui/widget/AssetsTileView;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mRefreshProgressbarListener:Lcom/showmax/app/ui/widget/RefreshProgressBar$RefreshProgressBarListener;

    .line 328
    new-instance v0, Lcom/showmax/app/ui/widget/AssetsTileView$4;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/AssetsTileView$4;-><init>(Lcom/showmax/app/ui/widget/AssetsTileView;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mOnItemClickListener:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter$OnItemClickListener;

    .line 105
    invoke-direct {p0, p2, p3}, Lcom/showmax/app/ui/widget/AssetsTileView;->init(Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/widget/AssetsTileView;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/AssetsTileView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/AssetsTileView;->hideProgressbar()V

    return-void
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/widget/AssetsTileView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/AssetsTileView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/showmax/app/ui/widget/AssetsTileView;)I
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/AssetsTileView;

    .prologue
    .line 42
    iget v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAutomaticRefreshCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/showmax/app/ui/widget/AssetsTileView;)I
    .locals 2
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/AssetsTileView;

    .prologue
    .line 42
    iget v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAutomaticRefreshCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAutomaticRefreshCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/showmax/app/ui/widget/AssetsTileView;)I
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/AssetsTileView;

    .prologue
    .line 42
    iget v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mMaxAutomaticRefreshCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/showmax/app/ui/widget/AssetsTileView;)Lcom/showmax/app/ui/widget/AssetsTileView$TileType;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/AssetsTileView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mTileType:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    return-object v0
.end method

.method static synthetic access$500(Lcom/showmax/app/ui/widget/AssetsTileView;)Lcom/showmax/lib/api/model/catalogue/Category;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/AssetsTileView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    return-object v0
.end method

.method static synthetic access$600(Lcom/showmax/app/ui/widget/AssetsTileView;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/AssetsTileView;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/AssetsTileView;->showAssetsRefreshButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/showmax/app/ui/widget/AssetsTileView;)Lcom/showmax/lib/api/io/ApiCallback;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/AssetsTileView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/showmax/app/ui/widget/AssetsTileView;)Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/AssetsTileView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mListener:Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/showmax/app/ui/widget/AssetsTileView;)Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/AssetsTileView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;

    return-object v0
.end method

.method private hideProgressbar()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsListView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 291
    :cond_0
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    .line 250
    new-instance v0, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;

    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/AssetsTileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;

    .line 251
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/widget/AssetsTileView;->setOrientation(I)V

    .line 252
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/AssetsTileView;->initViews()V

    .line 253
    return-void
.end method

.method private initViews()V
    .locals 3

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/AssetsTileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 258
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030089

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 260
    const v1, 0x7f0b0197

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/widget/AssetsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/showmax/app/ui/widget/RefreshProgressBar;

    iput-object v1, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    .line 261
    const v1, 0x7f0b0198

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/widget/AssetsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsListView:Landroid/support/v7/widget/RecyclerView;

    .line 262
    const v1, 0x7f0b0194

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/widget/AssetsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mIndicatorTextTv:Landroid/widget/TextView;

    .line 263
    const v1, 0x7f0b0196

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/widget/AssetsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mSeeAllTv:Landroid/widget/TextView;

    .line 264
    const v1, 0x7f0b0193

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/widget/AssetsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mIndicatorHolder:Landroid/widget/RelativeLayout;

    .line 265
    return-void
.end method

.method private setTitle(Lcom/showmax/app/ui/widget/AssetsTileView$TileType;Lcom/showmax/lib/api/model/catalogue/Category;)V
    .locals 2
    .param p1, "tileType"    # Lcom/showmax/app/ui/widget/AssetsTileView$TileType;
    .param p2, "category"    # Lcom/showmax/lib/api/model/catalogue/Category;

    .prologue
    .line 206
    iput-object p2, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    .line 207
    sget-object v0, Lcom/showmax/app/ui/widget/AssetsTileView$5;->$SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType:[I

    invoke-virtual {p1}, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 221
    :goto_0
    return-void

    .line 210
    :pswitch_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/AssetsTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d00bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 213
    :pswitch_1
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/AssetsTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0097

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 218
    :pswitch_2
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v0, v0, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mIndicatorTextTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mIndicatorTextTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :cond_0
    return-void
.end method

.method private showAssetsRefreshButton()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 295
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mIndicatorHolder:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mIndicatorHolder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 299
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mSeeAllTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    invoke-virtual {v0, v2}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mRefreshProgressbarListener:Lcom/showmax/app/ui/widget/RefreshProgressBar$RefreshProgressBarListener;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setRefreshProgressBarListener(Lcom/showmax/app/ui/widget/RefreshProgressBar$RefreshProgressBarListener;)V

    .line 302
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    invoke-virtual {v0}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->showRefresh()V

    .line 303
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 305
    :cond_0
    return-void
.end method

.method private showProgressbar()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsListView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 282
    :cond_0
    return-void
.end method


# virtual methods
.method public loadAssetsTile(Lcom/showmax/app/ui/widget/AssetsTileView$TileType;Lcom/showmax/lib/api/model/catalogue/Category;)V
    .locals 13
    .param p1, "tileType"    # Lcom/showmax/app/ui/widget/AssetsTileView$TileType;
    .param p2, "category"    # Lcom/showmax/lib/api/model/catalogue/Category;

    .prologue
    const/4 v4, 0x0

    .line 110
    iput-object p1, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mTileType:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    .line 111
    iput-object p2, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    .line 113
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/AssetsTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v2

    .line 114
    .local v2, "currentLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/AssetsTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentSection(Landroid/content/Context;)Lcom/showmax/lib/api/model/catalogue/Section;

    move-result-object v1

    .line 115
    .local v1, "currentSection":Lcom/showmax/lib/api/model/catalogue/Section;
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/AssetsTileView;->showProgressbar()V

    .line 116
    sget-object v0, Lcom/showmax/app/ui/widget/AssetsTileView$5;->$SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType:[I

    iget-object v3, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mTileType:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    invoke-virtual {v3}, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mTitle:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/showmax/app/ui/widget/AssetsTileView;->setTitle(Ljava/lang/String;)V

    .line 144
    return-void

    .line 119
    :pswitch_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/AssetsTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0d00bf

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mTitle:Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mTitle:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/showmax/app/ui/widget/AssetsTileView;->setTitle(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    iget-object v3, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/showmax/lib/api/io/CatalogueApi;->loadGrossingAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Ljava/lang/Integer;Lretrofit/Callback;)V

    goto :goto_0

    .line 124
    :pswitch_1
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/AssetsTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0d0097

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mTitle:Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    sget-object v3, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;->PICK:Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

    iget-object v5, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/showmax/lib/api/io/CatalogueApi;->loadPromotedAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;Ljava/lang/Integer;Lretrofit/Callback;)V

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v0, v0, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mTitle:Ljava/lang/String;

    .line 130
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v5

    iget-object v8, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    sget-object v9, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    iget-object v12, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    move-object v6, v1

    move-object v7, v2

    move-object v10, v4

    move-object v11, v4

    invoke-virtual/range {v5 .. v12}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/String;Ljava/lang/Integer;Lretrofit/Callback;)V

    goto :goto_0

    .line 134
    :pswitch_3
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v0, v0, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mTitle:Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v5

    iget-object v8, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    sget-object v9, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->TV_SERIES:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    iget-object v12, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    move-object v6, v1

    move-object v7, v2

    move-object v10, v4

    move-object v11, v4

    invoke-virtual/range {v5 .. v12}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/String;Ljava/lang/Integer;Lretrofit/Callback;)V

    goto :goto_0

    .line 139
    :pswitch_4
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v0, v0, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mTitle:Ljava/lang/String;

    .line 140
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    iget-object v3, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v7, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/String;Ljava/lang/Integer;Lretrofit/Callback;)V

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public refreshSubscriptionStatus()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;

    invoke-virtual {v0}, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;->refreshSubscriptionStatus()V

    .line 157
    :cond_0
    return-void
.end method

.method public setAssetsTileViewListener(Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mListener:Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;

    .line 149
    return-void
.end method

.method public showAssets(Ljava/util/ArrayList;Lcom/showmax/app/ui/widget/AssetsTileView$TileType;Lcom/showmax/lib/api/model/catalogue/Category;)V
    .locals 1
    .param p2, "tileType"    # Lcom/showmax/app/ui/widget/AssetsTileView$TileType;
    .param p3, "category"    # Lcom/showmax/lib/api/model/catalogue/Category;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;",
            "Lcom/showmax/app/ui/widget/AssetsTileView$TileType;",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ")V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "assets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    invoke-direct {p0, p2, p3}, Lcom/showmax/app/ui/widget/AssetsTileView;->setTitle(Lcom/showmax/app/ui/widget/AssetsTileView$TileType;Lcom/showmax/lib/api/model/catalogue/Category;)V

    .line 197
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/showmax/app/ui/widget/AssetsTileView;->showAssets(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public showAssets(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .param p2, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "assets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 162
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const v1, 0x7f0d00aa

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->showMessage(I)V

    .line 167
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    invoke-virtual {v0, v2}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 188
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mIndicatorHolder:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mOnSeeAllClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mSeeAllTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iput-object p2, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mTitle:Ljava/lang/String;

    .line 191
    invoke-direct {p0, p2}, Lcom/showmax/app/ui/widget/AssetsTileView;->setTitle(Ljava/lang/String;)V

    .line 192
    return-void

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    invoke-virtual {v0, v3}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;

    invoke-virtual {v0, p1}, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;->setData(Ljava/util/ArrayList;)V

    .line 177
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/AssetsTileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 178
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 179
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 181
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsListView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 182
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsListView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHorizontalScrollBarEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetsListView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 185
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/AssetsTileView;->mOnItemClickListener:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;->setOnItemClickListener(Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter$OnItemClickListener;)V

    goto :goto_0
.end method
