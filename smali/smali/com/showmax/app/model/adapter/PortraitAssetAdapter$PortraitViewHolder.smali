.class public Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitViewHolder;
.super Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;
.source "PortraitAssetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/model/adapter/PortraitAssetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PortraitViewHolder"
.end annotation


# instance fields
.field image:Lcom/showmax/app/ui/widget/AssetView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/showmax/app/model/adapter/BaseAssetAdapter$AbstractViewHolder;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/showmax/app/model/adapter/PortraitAssetAdapter$PortraitViewHolder;->image:Lcom/showmax/app/ui/widget/AssetView;

    return-void
.end method
