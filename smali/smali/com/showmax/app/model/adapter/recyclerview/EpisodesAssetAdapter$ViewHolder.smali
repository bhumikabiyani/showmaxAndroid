.class public Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EpisodesAssetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field description:Landroid/widget/TextView;

.field episodeNo:Landroid/widget/TextView;

.field image:Lcom/showmax/app/ui/widget/AssetView;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 95
    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    .line 96
    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;->episodeNo:Landroid/widget/TextView;

    .line 97
    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 98
    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0b013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/AssetView;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    .line 105
    const v0, 0x7f0b013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;->episodeNo:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0b013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0b013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 108
    return-void
.end method
