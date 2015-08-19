.class public Lcom/showmax/app/model/adapter/MyFlixListAdapter;
.super Lcom/showmax/app/model/adapter/BaseAssetAdapter;
.source "MyFlixListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;
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
    .line 35
    const-class v0, Lcom/showmax/app/model/adapter/MyFlixListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/model/adapter/MyFlixListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const v0, 0x7f030050

    invoke-direct {p0, p1, v0}, Lcom/showmax/app/model/adapter/BaseAssetAdapter;-><init>(Landroid/content/Context;I)V

    .line 50
    const v0, 0x7f0d00c2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/model/adapter/MyFlixListAdapter;->mSeasonString:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private getSeasonText(I)Ljava/lang/String;
    .locals 4
    .param p1, "seasonNo"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/showmax/app/model/adapter/MyFlixListAdapter;->mSeasonString:Ljava/lang/String;

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
.method protected bindViewHolderWithData(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;)V
    .locals 7
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p2, "viewHolder"    # Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;

    .prologue
    .line 74
    move-object v1, p2

    check-cast v1, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;

    .line 76
    .local v1, "holder":Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;
    new-instance v3, Lcom/showmax/app/ui/widget/AssetViewAware;

    iget-object v4, v1, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    invoke-direct {v3, v4}, Lcom/showmax/app/ui/widget/AssetViewAware;-><init>(Lcom/showmax/app/ui/widget/AssetView;)V

    invoke-virtual {p1}, Lcom/showmax/lib/api/model/catalogue/Asset;->getPosterImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v4

    sget-object v5, Lcom/showmax/lib/api/utils/MauImage$ImageType;->PORTRAIT:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    sget v6, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_PORTRAIT_ASSET_HEIGHT:I

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/showmax/app/model/adapter/MyFlixListAdapter;->loadImage(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/model/catalogue/Image;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V

    .line 78
    iget-object v3, v1, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    invoke-virtual {p0, p1, v3}, Lcom/showmax/app/model/adapter/MyFlixListAdapter;->setVodModel(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/app/ui/widget/AssetView;)V

    .line 80
    iget-object v3, v1, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v3, v1, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->description:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 84
    .local v0, "assetType":Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->EPISODE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne v0, v3, :cond_0

    .line 86
    iget-object v3, v1, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->labelFirst:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v4, v4, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v3, v1, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->labelLast:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->season:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget v4, v4, Lcom/showmax/lib/api/model/catalogue/Asset;->number:I

    invoke-direct {p0, v4}, Lcom/showmax/app/model/adapter/MyFlixListAdapter;->getSeasonText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v3

    iget-object v4, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->sectionSlug:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/showmax/app/ShowMaxApp;->getSection(Ljava/lang/String;)Lcom/showmax/lib/api/model/catalogue/Section;

    move-result-object v2

    .line 91
    .local v2, "section":Lcom/showmax/lib/api/model/catalogue/Section;
    if-eqz v2, :cond_1

    .line 93
    iget-object v3, v1, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->labelFirst:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/showmax/lib/api/model/catalogue/Section;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_1
    iget-object v3, v1, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->labelLast:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->labelLast:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-static {v4, v5}, Lcom/showmax/app/util/StringUtils;->getAssetTypeString(Landroid/content/Context;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/showmax/app/model/adapter/MyFlixListAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initViewHolder(Landroid/view/View;)Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 62
    new-instance v0, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;

    invoke-direct {v0}, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;-><init>()V

    .line 63
    .local v0, "viewHolder":Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;
    const v1, 0x7f0b013e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/showmax/app/ui/widget/AssetView;

    iput-object v1, v0, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    .line 64
    const v1, 0x7f0b0140

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->labelFirst:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f0b0142

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->labelLast:Landroid/widget/TextView;

    .line 66
    const v1, 0x7f0b0143

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->title:Landroid/widget/TextView;

    .line 67
    const v1, 0x7f0b0144

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->description:Landroid/widget/TextView;

    .line 68
    return-object v0
.end method
