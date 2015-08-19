.class public Lcom/showmax/app/model/adapter/SearchAssetAdapter;
.super Lcom/showmax/app/model/adapter/BaseAssetAdapter;
.source "SearchAssetAdapter.java"

# interfaces
.implements Lcom/showmax/app/Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;
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
    .line 42
    const-class v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const v0, 0x7f030051

    invoke-direct {p0, p1, v0}, Lcom/showmax/app/model/adapter/BaseAssetAdapter;-><init>(Landroid/content/Context;I)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    .line 61
    return-void
.end method

.method private applyFilter()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    iget-object v1, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v2, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mSelectedAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {p0, v0, v1, v2}, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->filter(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V

    .line 192
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
    .line 196
    .local p2, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    if-nez p1, :cond_0

    .line 199
    const/4 v1, 0x1

    .line 208
    :goto_0
    return v1

    .line 201
    :cond_0
    if-eqz p2, :cond_1

    .line 203
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Category;

    .line 205
    .local v0, "category":Lcom/showmax/lib/api/model/catalogue/Category;
    invoke-virtual {p1, v0}, Lcom/showmax/lib/api/model/catalogue/Category;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 208
    .end local v0    # "category":Lcom/showmax/lib/api/model/catalogue/Category;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bindViewHolderWithData(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;)V
    .locals 6
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p2, "viewHolder"    # Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;

    .prologue
    .line 93
    move-object v0, p2

    check-cast v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;

    .line 95
    .local v0, "holder":Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;
    new-instance v2, Lcom/showmax/app/ui/widget/AssetViewAware;

    iget-object v3, v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    invoke-direct {v2, v3}, Lcom/showmax/app/ui/widget/AssetViewAware;-><init>(Lcom/showmax/app/ui/widget/AssetView;)V

    invoke-virtual {p1}, Lcom/showmax/lib/api/model/catalogue/Asset;->getPosterImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v3

    sget-object v4, Lcom/showmax/lib/api/utils/MauImage$ImageType;->PORTRAIT:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    sget v5, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_PORTRAIT_ASSET_HEIGHT:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->loadImage(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/model/catalogue/Image;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V

    .line 97
    iget-object v2, v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    invoke-virtual {p0, p1, v2}, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->setVodModel(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/app/ui/widget/AssetView;)V

    .line 99
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v2

    iget-object v3, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->sectionSlug:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/showmax/app/ShowMaxApp;->getSection(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Section;

    move-result-object v1

    .line 100
    .local v1, "section":Lcom/showmax/lib/api/model/catalogue/Section;
    if-eqz v1, :cond_0

    .line 102
    iget-object v2, v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->section:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/showmax/lib/api/model/catalogue/Section;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_0
    iget-object v2, v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->assetType:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->assetType:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-static {v3, v4}, Lcom/showmax/app/util/StringUtils;->getAssetTypeString(Landroid/content/Context;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->audioLanguages:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->audioLanguages:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/showmax/app/util/StringUtils;->getLanguagesFromIso(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v2, v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->subtitlesLanguages:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->subtitlesLanguages:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/showmax/app/util/StringUtils;->getLanguagesFromIso(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method public filter(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V
    .locals 9
    .param p1, "selectedSection"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "selectedCategory"    # Lcom/showmax/lib/api/model/catalogue/Category;
    .param p3, "selectedAssetType"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 113
    const-string v4, "[SearchAssetAdapter]::[filter]"

    invoke-static {v4}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    .line 115
    iput-object p2, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    .line 116
    iput-object p3, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mSelectedAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 118
    const-string v4, "[SearchAssetAdapter]::[0]::[unfiltered]::[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iget-object v4, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 121
    const-string v4, "[SearchAssetAdapter]::[unfiltered]::[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v3, "sectionResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    iget-object v4, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    if-nez v4, :cond_4

    .line 128
    iget-object v4, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    :cond_0
    const-string v4, "[SearchAssetAdapter]::[section filtered]::[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v1, "assetTypeResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    iget-object v4, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mSelectedAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-nez v4, :cond_6

    .line 148
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    :cond_1
    const-string v4, "[SearchAssetAdapter]::[asset type filtered]::[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v2, "categoryResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    iget-object v4, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    if-nez v4, :cond_8

    .line 168
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 180
    :cond_2
    const-string v4, "[SearchAssetAdapter]::[cateogory filtered]::[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iput-object v2, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mAssets:Ljava/util/ArrayList;

    .line 184
    const-string v4, "[SearchAssetAdapter]::[total filtered]::[%d]"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mAssets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p0}, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->notifyDataSetChanged()V

    .line 187
    .end local v1    # "assetTypeResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    .end local v2    # "categoryResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    .end local v3    # "sectionResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    :cond_3
    return-void

    .line 132
    .restart local v3    # "sectionResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    :cond_4
    iget-object v4, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

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

    .line 134
    .local v0, "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    iget-object v5, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;

    iget-object v5, v5, Lcom/showmax/lib/api/model/catalogue/Section;->slug:Ljava/lang/String;

    iget-object v6, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->sectionSlug:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 136
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
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

    .line 154
    .restart local v0    # "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    iget-object v5, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    iget-object v6, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mSelectedAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne v5, v6, :cond_7

    .line 156
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
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

    .line 174
    .restart local v0    # "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    iget-object v5, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v6, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->categories:Ljava/util/ArrayList;

    invoke-direct {p0, v5, v6}, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->isCategoryMatching(Lcom/showmax/lib/api/model/catalogue/Category;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 176
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initViewHolder(Landroid/view/View;)Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 80
    new-instance v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;

    invoke-direct {v0}, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;-><init>()V

    .line 81
    .local v0, "holder":Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;
    const v1, 0x7f0b0145

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/showmax/app/ui/widget/AssetView;

    iput-object v1, v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    .line 82
    const v1, 0x7f0b0146

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->section:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f0b0148

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->assetType:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f0b0149

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->title:Landroid/widget/TextView;

    .line 85
    const v1, 0x7f0b014a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->audioLanguages:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f0b014b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->subtitlesLanguages:Landroid/widget/TextView;

    .line 87
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

    .line 65
    const-string v0, "[SearchAssetAdapter]::[0]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 67
    if-eqz p1, :cond_0

    .line 69
    const-string v0, "[SearchAssetAdapter]::[1]::[size %d]"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 73
    :cond_0
    const-string v0, "[SearchAssetAdapter]::[2]::[size %d]"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->mUnfilteredAssets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-direct {p0}, Lcom/showmax/app/model/adapter/SearchAssetAdapter;->applyFilter()V

    .line 75
    return-void
.end method
