.class public Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;
.super Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;
.source "PortraitAssetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "rawHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 52
    iget-object v2, p0, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;->mAssets:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    .local v0, "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    move-object v1, p1

    .line 53
    check-cast v1, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter$ViewHolder;

    .line 55
    .local v1, "viewHolder":Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter$ViewHolder;
    new-instance v2, Lcom/showmax/app/ui/widget/AssetViewAware;

    iget-object v3, v1, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter$ViewHolder;->cover:Lcom/showmax/app/ui/widget/AssetView;

    invoke-direct {v2, v3}, Lcom/showmax/app/ui/widget/AssetViewAware;-><init>(Lcom/showmax/app/ui/widget/AssetView;)V

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/catalogue/Asset;->getPosterImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v3

    sget-object v4, Lcom/showmax/lib/api/utils/MauImage$ImageType;->PORTRAIT:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    sget v5, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_PORTRAIT_ASSET_HEIGHT:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;->loadImage(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/model/catalogue/Image;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V

    .line 58
    iget-object v2, v1, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter$ViewHolder;->cover:Lcom/showmax/app/ui/widget/AssetView;

    invoke-virtual {p0, v0, v2}, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;->setVodModel(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/app/ui/widget/AssetView;)V

    .line 60
    iget-object v2, v1, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter$ViewHolder;->cover:Lcom/showmax/app/ui/widget/AssetView;

    new-instance v3, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter$1;-><init>(Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;Lcom/showmax/lib/api/model/catalogue/Asset;)V

    invoke-virtual {v2, v3}, Lcom/showmax/app/ui/widget/AssetView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 46
    new-instance v1, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter$ViewHolder;

    iget-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03004c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/AssetView;

    invoke-direct {v1, v0}, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter$ViewHolder;-><init>(Lcom/showmax/app/ui/widget/AssetView;)V

    return-object v1
.end method
