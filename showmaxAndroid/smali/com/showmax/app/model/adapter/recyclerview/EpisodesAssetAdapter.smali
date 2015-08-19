.class public Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;
.super Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;
.source "EpisodesAssetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;
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
    .line 23
    const-class v0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter;-><init>(Landroid/content/Context;)V

    .line 38
    const v0, 0x7f0d0098

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;->mEpisodeString:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private getEpisodeText(I)Ljava/lang/String;
    .locals 4
    .param p1, "episodeNo"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;->mEpisodeString:Ljava/lang/String;

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
    .line 44
    sget-object v0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 6
    .param p1, "rawHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 56
    iget-object v2, p0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;->mAssets:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    .local v0, "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    move-object v1, p1

    .line 57
    check-cast v1, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;

    .line 59
    .local v1, "viewHolder":Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;
    new-instance v2, Lcom/showmax/app/ui/widget/AssetViewAware;

    iget-object v3, v1, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    invoke-direct {v2, v3}, Lcom/showmax/app/ui/widget/AssetViewAware;-><init>(Lcom/showmax/app/ui/widget/AssetView;)V

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/catalogue/Asset;->getLandscapeImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v3

    sget-object v4, Lcom/showmax/lib/api/utils/MauImage$ImageType;->LANDSCAPE:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    sget v5, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_LANDSCAPE_EPISODE_HEIGHT:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;->loadImage(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/model/catalogue/Image;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V

    .line 61
    iget-object v2, v1, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    invoke-virtual {p0, v0, v2}, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;->setVodModel(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/app/ui/widget/AssetView;)V

    .line 63
    iget-object v2, v1, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;->episodeNo:Landroid/widget/TextView;

    iget v3, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->number:I

    invoke-direct {p0, v3}, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;->getEpisodeText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, v1, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v2, v1, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v2, v1, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$1;-><init>(Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;Lcom/showmax/lib/api/model/catalogue/Asset;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 50
    new-instance v0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;

    iget-object v1, p0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03004f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
