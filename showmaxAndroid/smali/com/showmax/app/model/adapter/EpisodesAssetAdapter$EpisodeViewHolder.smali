.class public Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;
.super Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;
.source "EpisodesAssetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/model/adapter/EpisodesAssetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpisodeViewHolder"
.end annotation


# instance fields
.field description:Landroid/widget/TextView;

.field episodeNo:Landroid/widget/TextView;

.field image:Lcom/showmax/app/ui/widget/AssetView;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;-><init>()V

    .line 93
    iput-object v0, p0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    .line 94
    iput-object v0, p0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;->episodeNo:Landroid/widget/TextView;

    .line 95
    iput-object v0, p0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;->title:Landroid/widget/TextView;

    .line 96
    iput-object v0, p0, Lcom/showmax/app/model/adapter/EpisodesAssetAdapter$EpisodeViewHolder;->description:Landroid/widget/TextView;

    return-void
.end method
