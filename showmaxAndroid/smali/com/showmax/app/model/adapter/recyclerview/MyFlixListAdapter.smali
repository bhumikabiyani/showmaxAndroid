.class public Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;
.super Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;
.source "MyFlixListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSeasonString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;-><init>(Landroid/content/Context;)V

    .line 40
    const v0, 0x7f0d00c2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;->mSeasonString:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private getSeasonText(I)Ljava/lang/String;
    .locals 4
    .param p1, "seasonNo"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;->mSeasonString:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 8
    .param p1, "rawHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 58
    iget-object v4, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;->mAssets:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    .local v0, "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    move-object v3, p1

    .line 59
    check-cast v3, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;

    .line 61
    .local v3, "viewHolder":Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;
    iget-object v4, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    sget-object v5, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->EPISODE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne v4, v5, :cond_0

    iget-object v4, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v4, :cond_0

    .line 64
    new-instance v4, Lcom/showmax/app/ui/widget/AssetViewAware;

    iget-object v5, v3, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    invoke-direct {v4, v5}, Lcom/showmax/app/ui/widget/AssetViewAware;-><init>(Lcom/showmax/app/ui/widget/AssetView;)V

    iget-object v5, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v5}, Lcom/showmax/lib/api/model/catalogue/Asset;->getPosterImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v5

    sget-object v6, Lcom/showmax/lib/api/utils/MauImage$ImageType;->PORTRAIT:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    sget v7, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_PORTRAIT_ASSET_HEIGHT:I

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;->loadImage(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/model/catalogue/Image;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V

    .line 71
    :goto_0
    iget-object v4, v3, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    invoke-virtual {p0, v0, v4}, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;->setVodModel(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/app/ui/widget/AssetView;)V

    .line 73
    iget-object v4, v3, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v4, v3, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->description:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 77
    .local v1, "assetType":Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    sget-object v4, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->EPISODE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne v1, v4, :cond_1

    .line 79
    iget-object v4, v3, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->labelFirst:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v5, v5, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v4, v3, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->labelLast:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->season:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget v5, v5, Lcom/showmax/lib/api/model/catalogue/Asset;->number:I

    invoke-direct {p0, v5}, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;->getSeasonText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_1
    iget-object v4, v3, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v5, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$1;

    invoke-direct {v5, p0, v0}, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$1;-><init>(Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;Lcom/showmax/lib/api/model/catalogue/Asset;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void

    .line 68
    .end local v1    # "assetType":Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    :cond_0
    new-instance v4, Lcom/showmax/app/ui/widget/AssetViewAware;

    iget-object v5, v3, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    invoke-direct {v4, v5}, Lcom/showmax/app/ui/widget/AssetViewAware;-><init>(Lcom/showmax/app/ui/widget/AssetView;)V

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/catalogue/Asset;->getPosterImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v5

    sget-object v6, Lcom/showmax/lib/api/utils/MauImage$ImageType;->PORTRAIT:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    sget v7, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_PORTRAIT_ASSET_HEIGHT:I

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;->loadImage(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/model/catalogue/Image;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V

    goto :goto_0

    .line 83
    .restart local v1    # "assetType":Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    :cond_1
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v4

    iget-object v5, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->sectionSlug:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/showmax/app/ShowMaxApp;->getSection(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Section;

    move-result-object v2

    .line 84
    .local v2, "section":Lcom/showmax/lib/api/model/catalogue/Section;
    if-eqz v2, :cond_2

    .line 86
    iget-object v4, v3, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->labelFirst:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/showmax/lib/api/model/catalogue/Section;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_2
    iget-object v4, v3, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->labelLast:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;->labelLast:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-static {v5, v6}, Lcom/showmax/app/util/StringUtils;->getAssetTypeString(Landroid/content/Context;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 52
    new-instance v0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;

    iget-object v1, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030050

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
