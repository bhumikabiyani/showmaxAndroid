.class public Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SearchAssetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field assetType:Landroid/widget/TextView;

.field audioLanguages:Landroid/widget/TextView;

.field image:Lcom/showmax/app/ui/widget/AssetView;

.field section:Landroid/widget/TextView;

.field subtitlesLanguages:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 227
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 218
    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    .line 219
    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->section:Landroid/widget/TextView;

    .line 220
    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->assetType:Landroid/widget/TextView;

    .line 221
    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 222
    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->audioLanguages:Landroid/widget/TextView;

    .line 223
    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->subtitlesLanguages:Landroid/widget/TextView;

    .line 229
    const v0, 0x7f0b0145

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/AssetView;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    .line 230
    const v0, 0x7f0b0146

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->section:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f0b0148

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->assetType:Landroid/widget/TextView;

    .line 232
    const v0, 0x7f0b0149

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 233
    const v0, 0x7f0b014a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->audioLanguages:Landroid/widget/TextView;

    .line 234
    const v0, 0x7f0b014b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/SearchAssetAdapter$ViewHolder;->subtitlesLanguages:Landroid/widget/TextView;

    .line 235
    return-void
.end method
