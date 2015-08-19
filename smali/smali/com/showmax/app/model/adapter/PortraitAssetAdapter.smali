.class public Lcom/showmax/app/model/adapter/PortraitAssetAdapter;
.super Lcom/showmax/app/model/adapter/BaseAssetAdapter;
.source "PortraitAssetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitAssetType;,
        Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/showmax/app/model/adapter/PortraitAssetAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/model/adapter/PortraitAssetAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const v0, 0x7f03004a

    invoke-direct {p0, p1, v0}, Lcom/showmax/app/model/adapter/BaseAssetAdapter;-><init>(Landroid/content/Context;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutResId"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/showmax/app/model/adapter/BaseAssetAdapter;-><init>(Landroid/content/Context;I)V

    .line 54
    return-void
.end method


# virtual methods
.method protected bindViewHolderWithData(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;)V
    .locals 5
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p2, "viewHolder"    # Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;

    .prologue
    .line 67
    move-object v0, p2

    check-cast v0, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitViewHolder;

    .line 69
    .local v0, "holder":Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitViewHolder;
    new-instance v1, Lcom/showmax/app/ui/widget/AssetViewAware;

    iget-object v2, v0, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    invoke-direct {v1, v2}, Lcom/showmax/app/ui/widget/AssetViewAware;-><init>(Lcom/showmax/app/ui/widget/AssetView;)V

    invoke-virtual {p1}, Lcom/showmax/lib/api/model/catalogue/Asset;->getPosterImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v2

    sget-object v3, Lcom/showmax/lib/api/utils/MauImage$ImageType;->PORTRAIT:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    sget v4, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_PORTRAIT_ASSET_HEIGHT:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/showmax/app/model/adapter/PortraitAssetAdapter;->loadImage(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/model/catalogue/Image;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V

    .line 71
    iget-object v1, v0, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    invoke-virtual {p0, p1, v1}, Lcom/showmax/app/model/adapter/PortraitAssetAdapter;->setVodModel(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/app/ui/widget/AssetView;)V

    .line 72
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/showmax/app/model/adapter/PortraitAssetAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initViewHolder(Landroid/view/View;)Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 59
    new-instance v0, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitViewHolder;

    invoke-direct {v0}, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitViewHolder;-><init>()V

    .line 60
    .local v0, "viewHolder":Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitViewHolder;
    check-cast p1, Lcom/showmax/app/ui/widget/AssetView;

    .end local p1    # "convertView":Landroid/view/View;
    iput-object p1, v0, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    .line 61
    return-object v0
.end method
