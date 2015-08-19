.class public Lcom/showmax/app/ui/widget/RecommendedGridView;
.super Landroid/widget/LinearLayout;
.source "RecommendedGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;
    }
.end annotation


# static fields
.field private static final LOG:Z


# instance fields
.field private mAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private mColumnsCount:I

.field private mGridSpacing:I

.field private mListener:Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;

.field private mOnAssetClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 198
    new-instance v0, Lcom/showmax/app/ui/widget/RecommendedGridView$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/RecommendedGridView$1;-><init>(Lcom/showmax/app/ui/widget/RecommendedGridView;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/RecommendedGridView;->mOnAssetClickListener:Landroid/view/View$OnClickListener;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 198
    new-instance v0, Lcom/showmax/app/ui/widget/RecommendedGridView$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/RecommendedGridView$1;-><init>(Lcom/showmax/app/ui/widget/RecommendedGridView;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/RecommendedGridView;->mOnAssetClickListener:Landroid/view/View$OnClickListener;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/showmax/app/ui/widget/RecommendedGridView;->init(Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 198
    new-instance v0, Lcom/showmax/app/ui/widget/RecommendedGridView$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/widget/RecommendedGridView$1;-><init>(Lcom/showmax/app/ui/widget/RecommendedGridView;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/RecommendedGridView;->mOnAssetClickListener:Landroid/view/View$OnClickListener;

    .line 74
    invoke-direct {p0, p2, p3}, Lcom/showmax/app/ui/widget/RecommendedGridView;->init(Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/widget/RecommendedGridView;)Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/widget/RecommendedGridView;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RecommendedGridView;->mListener:Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;

    return-object v0
.end method

.method private cleanUp()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 217
    const/4 v3, 0x0

    .line 218
    .local v3, "view":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/RecommendedGridView;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 220
    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/widget/RecommendedGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 221
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, "innerView":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    move-object v4, v3

    .line 227
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 228
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 218
    .end local v1    # "innerView":Landroid/view/View;
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_1
    return-void
.end method

.method private createAssetView(Lcom/showmax/lib/api/model/catalogue/Asset;Landroid/widget/LinearLayout;Z)Lcom/showmax/app/ui/widget/AssetView;
    .locals 11
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p2, "parentContainer"    # Landroid/widget/LinearLayout;
    .param p3, "addRightSpacing"    # Z

    .prologue
    const/4 v6, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/RecommendedGridView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 149
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f03004b

    const/4 v8, 0x0

    invoke-virtual {v3, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/AssetView;

    .line 150
    .local v0, "assetView":Lcom/showmax/app/ui/widget/AssetView;
    invoke-virtual {v0}, Lcom/showmax/app/ui/widget/AssetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 152
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 153
    if-eqz p3, :cond_0

    .line 155
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v8, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v9, p0, Lcom/showmax/app/ui/widget/RecommendedGridView;->mGridSpacing:I

    iget v10, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 157
    :cond_0
    invoke-virtual {v0, v4}, Lcom/showmax/app/ui/widget/AssetView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    invoke-virtual {p1}, Lcom/showmax/lib/api/model/catalogue/Asset;->getPosterImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v1

    .line 160
    .local v1, "image":Lcom/showmax/lib/api/model/catalogue/Image;
    if-nez v1, :cond_2

    move-object v2, v6

    .line 161
    .local v2, "imageUrl":Ljava/lang/String;
    :goto_0
    new-instance v7, Lcom/showmax/app/ui/widget/AssetViewAware;

    invoke-direct {v7, v0}, Lcom/showmax/app/ui/widget/AssetViewAware;-><init>(Lcom/showmax/app/ui/widget/AssetView;)V

    sget-object v8, Lcom/showmax/lib/api/utils/MauImage$ImageType;->PORTRAIT:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    sget v9, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_PORTRAIT_ASSET_HEIGHT:I

    invoke-static {v2, v7, v8, v9}, Lcom/showmax/lib/api/utils/MauImage;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V

    .line 163
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/showmax/app/ShowMaxApp;->getSubscriptionStatus()Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    move-result-object v5

    .line 165
    .local v5, "subscriptionStatus":Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 168
    sget-object v7, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;->FULL:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    if-eq v5, v7, :cond_3

    .line 170
    iget-object v6, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->vodModel:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    invoke-virtual {v0, v6}, Lcom/showmax/app/ui/widget/AssetView;->setVodModel(Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;)V

    .line 178
    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Lcom/showmax/app/ui/widget/AssetView;->setTag(Ljava/lang/Object;)V

    .line 179
    iget-object v6, p0, Lcom/showmax/app/ui/widget/RecommendedGridView;->mOnAssetClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Lcom/showmax/app/ui/widget/AssetView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    return-object v0

    .line 160
    .end local v2    # "imageUrl":Ljava/lang/String;
    .end local v5    # "subscriptionStatus":Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;
    :cond_2
    iget-object v2, v1, Lcom/showmax/lib/api/model/catalogue/Image;->link:Ljava/lang/String;

    goto :goto_0

    .line 174
    .restart local v2    # "imageUrl":Ljava/lang/String;
    .restart local v5    # "subscriptionStatus":Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;
    :cond_3
    invoke-virtual {v0, v6}, Lcom/showmax/app/ui/widget/AssetView;->setVodModel(Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;)V

    goto :goto_1
.end method

.method private createRowContainer(Z)Landroid/widget/LinearLayout;
    .locals 5
    .param p1, "addBottomSpacing"    # Z

    .prologue
    const/4 v4, 0x0

    .line 186
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/RecommendedGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 187
    .local v1, "row":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 188
    iget v2, p0, Lcom/showmax/app/ui/widget/RecommendedGridView;->mColumnsCount:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 189
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 190
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 192
    iget v2, p0, Lcom/showmax/app/ui/widget/RecommendedGridView;->mGridSpacing:I

    invoke-virtual {v0, v4, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 194
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    return-object v1
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/RecommendedGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/showmax/app/R$styleable;->RecommendedGridView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 138
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/showmax/app/ui/widget/RecommendedGridView;->mColumnsCount:I

    .line 139
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/widget/RecommendedGridView;->setOrientation(I)V

    .line 142
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/RecommendedGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/showmax/app/ui/widget/RecommendedGridView;->mGridSpacing:I

    .line 143
    return-void
.end method


# virtual methods
.method public refreshSubscriptionStatus()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RecommendedGridView;->mAssets:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/widget/RecommendedGridView;->setData(Ljava/util/ArrayList;)V

    .line 129
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 6
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
    .local p1, "assets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    const/4 v5, 0x1

    .line 84
    iput-object p1, p0, Lcom/showmax/app/ui/widget/RecommendedGridView;->mAssets:Ljava/util/ArrayList;

    .line 86
    iget-object v3, p0, Lcom/showmax/app/ui/widget/RecommendedGridView;->mAssets:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/showmax/app/ui/widget/RecommendedGridView;->mAssets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/RecommendedGridView;->cleanUp()V

    .line 92
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/RecommendedGridView;->removeAllViews()V

    .line 94
    invoke-direct {p0, v5}, Lcom/showmax/app/ui/widget/RecommendedGridView;->createRowContainer(Z)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 95
    .local v2, "row":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 96
    .local v1, "childCount":I
    iget-object v3, p0, Lcom/showmax/app/ui/widget/RecommendedGridView;->mAssets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 98
    .local v0, "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 103
    iget v4, p0, Lcom/showmax/app/ui/widget/RecommendedGridView;->mColumnsCount:I

    if-ge v1, v4, :cond_3

    .line 105
    iget v4, p0, Lcom/showmax/app/ui/widget/RecommendedGridView;->mColumnsCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_2

    .line 108
    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v4}, Lcom/showmax/app/ui/widget/RecommendedGridView;->createAssetView(Lcom/showmax/lib/api/model/catalogue/Asset;Landroid/widget/LinearLayout;Z)Lcom/showmax/app/ui/widget/AssetView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 113
    :cond_2
    invoke-direct {p0, v0, v2, v5}, Lcom/showmax/app/ui/widget/RecommendedGridView;->createAssetView(Lcom/showmax/lib/api/model/catalogue/Asset;Landroid/widget/LinearLayout;Z)Lcom/showmax/app/ui/widget/AssetView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {p0, v2}, Lcom/showmax/app/ui/widget/RecommendedGridView;->addView(Landroid/view/View;)V

    .line 119
    invoke-direct {p0, v5}, Lcom/showmax/app/ui/widget/RecommendedGridView;->createRowContainer(Z)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 120
    invoke-direct {p0, v0, v2, v5}, Lcom/showmax/app/ui/widget/RecommendedGridView;->createAssetView(Lcom/showmax/lib/api/model/catalogue/Asset;Landroid/widget/LinearLayout;Z)Lcom/showmax/app/ui/widget/AssetView;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 123
    .end local v0    # "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    :cond_4
    invoke-virtual {p0, v2}, Lcom/showmax/app/ui/widget/RecommendedGridView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setRecommendedGridViewListener(Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/showmax/app/ui/widget/RecommendedGridView;->mListener:Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;

    .line 80
    return-void
.end method
