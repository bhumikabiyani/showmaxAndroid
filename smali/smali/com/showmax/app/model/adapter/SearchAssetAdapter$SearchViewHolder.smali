.class public Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;
.super Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;
.source "SearchAssetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/model/adapter/SearchAssetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchViewHolder"
.end annotation


# instance fields
.field assetType:Landroid/widget/TextView;

.field audioLanguages:Landroid/widget/TextView;

.field image:Lcom/showmax/app/ui/widget/AssetView;

.field section:Landroid/widget/TextView;

.field subtitlesLanguages:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-direct {p0}, Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;-><init>()V

    .line 223
    iput-object v0, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    .line 224
    iput-object v0, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->section:Landroid/widget/TextView;

    .line 225
    iput-object v0, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->assetType:Landroid/widget/TextView;

    .line 226
    iput-object v0, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->title:Landroid/widget/TextView;

    .line 227
    iput-object v0, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->audioLanguages:Landroid/widget/TextView;

    .line 228
    iput-object v0, p0, Lcom/showmax/app/model/adapter/SearchAssetAdapter$SearchViewHolder;->subtitlesLanguages:Landroid/widget/TextView;

    return-void
.end method
