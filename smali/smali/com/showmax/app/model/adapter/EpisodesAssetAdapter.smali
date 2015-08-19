.class public Lcom/showmax/app/model/adapter/EpisodesAssetAdapter;
.super Lcom/showmax/app/model/adapter/BaseAssetAdapter;
.source "EpisodesAssetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEpisodeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const v0, 0x7f03004f

    invoke-direct {p0, p1, v0}, Lcom/showmax/app/model/adapter/BaseAssetAdapter;-><init>(Landroid/content/Context;I)V

    .line 47
    const v0, 0x7f0d0098

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter;->mEpisodeString:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private getEpisodeText(I)Ljava/lang/String;
    .locals 4
    .param p1, "episodeNo"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter;->mEpisodeString:Ljava/lang/String;

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
    .locals 5
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p2, "viewHolder"    # Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;

    .prologue
    .line 70
    move-object v0, p2

    check-cast v0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;

    .line 72
    .local v0, "holder":Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;
    new-instance v1, Lcom/showmax/app/ui/widget/AssetViewAware;

    iget-object v2, v0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    invoke-direct {v1, v2}, Lcom/showmax/app/ui/widget/AssetViewAware;-><init>(Lcom/showmax/app/ui/widget/AssetView;)V

    invoke-virtual {p1}, Lcom/showmax/lib/api/model/catalogue/Asset;->getLandscapeImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v2

    sget-object v3, Lcom/showmax/lib/api/utils/MauImage$ImageType;->LANDSCAPE:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    sget v4, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_LANDSCAPE_EPISODE_HEIGHT:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter;->loadImage(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/model/catalogue/Image;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V

    .line 74
    iget-object v1, v0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    invoke-virtual {p0, p1, v1}, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter;->setVodModel(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/app/ui/widget/AssetView;)V

    .line 76
    iget-object v1, v0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;->episodeNo:Landroid/widget/TextView;

    iget v2, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->number:I

    invoke-direct {p0, v2}, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter;->getEpisodeText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, v0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, v0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;->description:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected initViewHolder(Landroid/view/View;)Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 59
    new-instance v0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;

    invoke-direct {v0}, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;-><init>()V

    .line 60
    .local v0, "viewHolder":Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;
    const v1, 0x7f0b013a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/showmax/app/ui/widget/AssetView;

    iput-object v1, v0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    .line 61
    const v1, 0x7f0b013b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;->episodeNo:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f0b013c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;->title:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0b013d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;->description:Landroid/widget/TextView;

    .line 64
    return-object v0
.end method
