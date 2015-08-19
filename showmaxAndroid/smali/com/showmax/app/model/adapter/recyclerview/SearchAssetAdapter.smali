.class public Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;
.super Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;
.source "SearchAssetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSelectedAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

.field private mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

.field private mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

.field private mUnfilteredAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method private applyFilter()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    iget-object v1, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v2, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mSelectedAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {p0, v0, v1, v2}, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->filter(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V

    .line 210
    return-void
.end method

.method private isCategoryMatching(Lcom/showmax/lib/api/model/catalogue/Category;Ljava/util/ArrayList;)Z
    .locals 3
    .param p1, "selectedCategory"    # Lcom/showmax/lib/api/model/catalogue/Category;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 192
    .local p2, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    if-nez p1, :cond_0

    .line 195
    const/4 v1, 0x1

    .line 204
    :goto_0
    return v1

    .line 197
    :cond_0
    if-eqz p2, :cond_1

    .line 199
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Category;

    .line 201
    .local v0, "category":Lcom/showmax/lib/api/model/catalogue/Category;
    invoke-virtual {p1, v0}, Lcom/showmax/lib/api/model/catalogue/Category;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 204
    .end local v0    # "category":Lcom/showmax/lib/api/model/catalogue/Category;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public filter(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V
    .locals 9
    .param p1, "selectedSection"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "selectedCategory"    # Lcom/showmax/lib/api/model/catalogue/Category;
    .param p3, "selectedAssetType"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 111
    const-string v4, "[SearchAssetAdapter]::[filter]"

    invoke-static {v4}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    .line 113
    iput-object p2, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    .line 114
    iput-object p3, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mSelectedAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 116
    const-string v4, "[SearchAssetAdapter]::[0]::[unfiltered]::[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v4, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 119
    const-string v4, "[SearchAssetAdapter]::[unfiltered]::[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v3, "sectionResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    iget-object v4, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    if-nez v4, :cond_4

    .line 126
    iget-object v4, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    :cond_0
    const-string v4, "[SearchAssetAdapter]::[section filtered]::[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v1, "assetTypeResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    iget-object v4, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mSelectedAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-nez v4, :cond_6

    .line 146
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    :cond_1
    const-string v4, "[SearchAssetAdapter]::[asset type filtered]::[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v2, "categoryResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    iget-object v4, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    if-nez v4, :cond_8

    .line 166
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 178
    :cond_2
    const-string v4, "[SearchAssetAdapter]::[cateogory filtered]::[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iput-object v2, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mAssets:Ljava/util/ArrayList;

    .line 182
    const-string v4, "[SearchAssetAdapter]::[total filtered]::[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mAssets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    iget-object v4, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mSortOption:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-virtual {p0, v4}, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 185
    .end local v1    # "assetTypeResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    .end local v2    # "categoryResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    .end local v3    # "sectionResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    :cond_3
    return-void

    .line 130
    .restart local v3    # "sectionResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    :cond_4
    iget-object v4, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 132
    .local v0, "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    iget-object v5, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    iget-object v5, v5, Lcom/showmax/lib/api/model/catalogue/Section;->slug:Ljava/lang/String;

    iget-object v6, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->sectionSlug:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 134
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    .end local v0    # "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    .restart local v1    # "assetTypeResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 152
    .restart local v0    # "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    iget-object v5, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    iget-object v6, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mSelectedAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne v5, v6, :cond_7

    .line 154
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 170
    .end local v0    # "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    .restart local v2    # "categoryResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 172
    .restart local v0    # "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    iget-object v5, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v6, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->categories:Ljava/util/ArrayList;

    invoke-direct {p0, v5, v6}, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->isCategoryMatching(Lcom/showmax/lib/api/model/catalogue/Category;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 174
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1, "rawHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 64
    iget-object v3, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mAssets:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    .local v0, "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    move-object v2, p1

    .line 65
    check-cast v2, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;

    .line 67
    .local v2, "viewHolder":Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;
    new-instance v3, Lcom/showmax/app/ui/widget/AssetViewAware;

    iget-object v4, v2, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    invoke-direct {v3, v4}, Lcom/showmax/app/ui/widget/AssetViewAware;-><init>(Lcom/showmax/app/ui/widget/AssetView;)V

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/catalogue/Asset;->getPosterImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v4

    sget-object v5, Lcom/showmax/lib/api/utils/MauImage$ImageType;->PORTRAIT:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    sget v6, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_PORTRAIT_ASSET_HEIGHT:I

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->loadImage(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/model/catalogue/Image;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V

    .line 69
    iget-object v3, v2, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    invoke-virtual {p0, v0, v3}, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->setVodModel(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/app/ui/widget/AssetView;)V

    .line 71
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v3

    iget-object v4, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->sectionSlug:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/showmax/app/ShowMaxApp;->getSection(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Section;

    move-result-object v1

    .line 72
    .local v1, "section":Lcom/showmax/lib/api/model/catalogue/Section;
    if-eqz v1, :cond_0

    .line 74
    iget-object v3, v2, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->section:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/showmax/lib/api/model/catalogue/Section;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
    iget-object v3, v2, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->assetType:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->assetType:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-static {v4, v5}, Lcom/showmax/app/util/StringUtils;->getAssetTypeString(Landroid/content/Context;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v3, v2, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v3, v2, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->audioLanguages:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->audioLanguages:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/showmax/app/util/StringUtils;->getLanguagesFromIso(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v3, v2, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->subtitlesLanguages:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->subtitlesLanguages:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/showmax/app/util/StringUtils;->getLanguagesFromIso(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v3, v2, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$1;

    invoke-direct {v4, p0, v0}, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$1;-><init>(Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;Lcom/showmax/lib/api/model/catalogue/Asset;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 58
    new-instance v0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;

    iget-object v1, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030051

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 5
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
    .local p1, "searchAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    const-string v0, "[SearchAssetAdapter]::[0]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    if-eqz p1, :cond_0

    .line 101
    const-string v0, "[SearchAssetAdapter]::[1]::[size %d]"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    :cond_0
    const-string v0, "[SearchAssetAdapter]::[2]::[size %d]"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-direct {p0}, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;->applyFilter()V

    .line 107
    return-void
.end method
