.class public Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;
.super Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;
.source "MyFlixListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/model/adapter/MyFlixListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyFlixViewHolder"
.end annotation


# instance fields
.field description:Landroid/widget/TextView;

.field image:Lcom/showmax/app/ui/widget/AssetView;

.field labelFirst:Landroid/widget/TextView;

.field labelLast:Landroid/widget/TextView;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;-><init>()V

    .line 111
    iput-object v0, p0, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    .line 112
    iput-object v0, p0, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->labelFirst:Landroid/widget/TextView;

    .line 113
    iput-object v0, p0, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->labelLast:Landroid/widget/TextView;

    .line 114
    iput-object v0, p0, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->title:Landroid/widget/TextView;

    .line 115
    iput-object v0, p0, Lcom/showmax/app/model/adapter/MyFlixListAdapter$MyFlixViewHolder;->description:Landroid/widget/TextView;

    return-void
.end method
