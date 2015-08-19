.class public abstract Lcom/showmax/app/model/adapter/BaseAssetAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseAssetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;
    }
.end annotation


# instance fields
.field protected mAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutResId:I

.field private mSortOption:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

.field private mSubscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutResId"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mAssets:Ljava/util/ArrayList;

    .line 55
    iput p2, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mItemLayoutResId:I

    .line 56
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/app/ShowMaxApp;->getSubscriptionStatus()Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mSubscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    .line 58
    return-void
.end method


# virtual methods
.method protected abstract bindViewHolderWithData(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;)V
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mAssets:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mAssets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Lcom/showmax/lib/api/model/catalogue/Asset;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->getItem(I)Lcom/showmax/lib/api/model/catalogue/Asset;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 97
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method public getSubscriptionStatus()Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mSubscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 65
    if-nez p2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mItemLayoutResId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 68
    invoke-virtual {p0, p2}, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->initViewHolder(Landroid/view/View;)Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;

    move-result-object v1

    .line 75
    .local v1, "holder":Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;
    :goto_0
    iget-object v2, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mAssets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 76
    .local v0, "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    invoke-virtual {p0, v0, v1}, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->bindViewHolderWithData(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;)V

    .line 78
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    return-object p2

    .line 72
    .end local v0    # "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    .end local v1    # "holder":Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;

    .restart local v1    # "holder":Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;
    goto :goto_0
.end method

.method protected abstract initViewHolder(Landroid/view/View;)Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;
.end method

.method protected loadImage(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/model/catalogue/Image;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V
    .locals 7
    .param p1, "imageHolder"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p2, "image"    # Lcom/showmax/lib/api/model/catalogue/Image;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "imageType"    # Lcom/showmax/lib/api/utils/MauImage$ImageType;
    .param p4, "imageHeight"    # I

    .prologue
    const/4 v4, 0x1

    .line 195
    if-eqz p1, :cond_3

    .line 197
    if-nez p2, :cond_0

    const/4 v1, 0x0

    .line 198
    .local v1, "imageUrl":Ljava/lang/String;
    :goto_0
    if-nez p3, :cond_1

    sget-object v2, Lcom/showmax/lib/api/utils/MauImage$ImageType;->PORTRAIT:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    .line 199
    .local v2, "type":Lcom/showmax/lib/api/utils/MauImage$ImageType;
    :goto_1
    if-ge p4, v4, :cond_2

    sget v0, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_PORTRAIT_ASSET_HEIGHT:I

    .line 200
    .local v0, "height":I
    :goto_2
    invoke-static {v1, p1, v2, v0}, Lcom/showmax/lib/api/utils/MauImage;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V

    .line 206
    .end local v0    # "height":I
    .end local v1    # "imageUrl":Ljava/lang/String;
    .end local v2    # "type":Lcom/showmax/lib/api/utils/MauImage$ImageType;
    :goto_3
    return-void

    .line 197
    :cond_0
    iget-object v1, p2, Lcom/showmax/lib/api/model/catalogue/Image;->link:Ljava/lang/String;

    goto :goto_0

    .restart local v1    # "imageUrl":Ljava/lang/String;
    :cond_1
    move-object v2, p3

    .line 198
    goto :goto_1

    .restart local v2    # "type":Lcom/showmax/lib/api/utils/MauImage$ImageType;
    :cond_2
    move v0, p4

    .line 199
    goto :goto_2

    .line 204
    .end local v1    # "imageUrl":Ljava/lang/String;
    .end local v2    # "type":Lcom/showmax/lib/api/utils/MauImage$ImageType;
    :cond_3
    const-string v3, "[%s]::[loadImage]::[image holder is null]"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/mautilus/lib/common/util/MauLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    iget-object v1, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mSortOption:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mAssets:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mSortOption:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    sget-object v2, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_ASC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    if-ne v1, v2, :cond_1

    .line 160
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Asset$TitleComparator;

    invoke-direct {v0, v3}, Lcom/showmax/lib/api/model/catalogue/Asset$TitleComparator;-><init>(Z)V

    .line 174
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    :goto_0
    iget-object v1, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mAssets:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 176
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 177
    return-void

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mSortOption:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    sget-object v2, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_DESC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    if-ne v1, v2, :cond_2

    .line 164
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Asset$TitleComparator;

    invoke-direct {v0, v4}, Lcom/showmax/lib/api/model/catalogue/Asset$TitleComparator;-><init>(Z)V

    .restart local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    goto :goto_0

    .line 166
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    :cond_2
    iget-object v1, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mSortOption:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    sget-object v2, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_OLDEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    if-ne v1, v2, :cond_3

    .line 168
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Asset$YearComparator;

    invoke-direct {v0, v3}, Lcom/showmax/lib/api/model/catalogue/Asset$YearComparator;-><init>(Z)V

    .restart local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    goto :goto_0

    .line 172
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    :cond_3
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Asset$YearComparator;

    invoke-direct {v0, v4}, Lcom/showmax/lib/api/model/catalogue/Asset$YearComparator;-><init>(Z)V

    .restart local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    goto :goto_0
.end method

.method public refreshSubscriptionStatus()V
    .locals 5

    .prologue
    .line 143
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/showmax/app/ShowMaxApp;->getSubscriptionStatus()Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    move-result-object v0

    .line 144
    .local v0, "subscriptionStatus":Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;
    const-string v1, "[%s]::[refreshSubscriptionStatus]::[old: %s]::[new: %s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->getLogTag()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mSubscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mSubscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    if-eq v0, v1, :cond_0

    .line 147
    iput-object v0, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mSubscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    .line 148
    invoke-virtual {p0}, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->notifyDataSetChanged()V

    .line 150
    :cond_0
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 102
    .local p1, "assets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->setData(Ljava/util/ArrayList;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 103
    return-void
.end method

.method public setData(Ljava/util/ArrayList;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V
    .locals 1
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
    .line 107
    .local p1, "assets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    iget-object v0, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    if-eqz p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    :cond_0
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/app/ShowMaxApp;->getSubscriptionStatus()Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mSubscriptionStatus:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    .line 113
    iput-object p2, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mSortOption:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    .line 114
    invoke-virtual {p0}, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->notifyDataSetChanged()V

    .line 115
    return-void
.end method

.method protected setVodModel(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/app/ui/widget/AssetView;)V
    .locals 2
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p2, "assetView"    # Lcom/showmax/app/ui/widget/AssetView;

    .prologue
    .line 210
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->getSubscriptionStatus()Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    move-result-object v0

    sget-object v1, Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;->FULL:Lcom/showmax/lib/api/model/user/UserProfile$SubscriptionStatus;

    if-eq v0, v1, :cond_1

    .line 215
    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->vodModel:Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;

    invoke-virtual {p2, v0}, Lcom/showmax/app/ui/widget/AssetView;->setVodModel(Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/showmax/app/ui/widget/AssetView;->setVodModel(Lcom/showmax/lib/api/model/catalogue/Asset$VodModel;)V

    goto :goto_0
.end method

.method public sort(Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V
    .locals 1
    .param p1, "sortOption"    # Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mSortOption:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    if-eq v0, p1, :cond_0

    .line 121
    iput-object p1, p0, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->mSortOption:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    .line 122
    invoke-virtual {p0}, Lcom/showmax/app/model/adapter/BaseAssetAdapter;->notifyDataSetChanged()V

    .line 124
    :cond_0
    return-void
.end method
