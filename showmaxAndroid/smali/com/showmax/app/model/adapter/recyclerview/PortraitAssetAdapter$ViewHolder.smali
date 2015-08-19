.class public Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PortraitAssetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public final cover:Lcom/showmax/app/ui/widget/AssetView;


# direct methods
.method public constructor <init>(Lcom/showmax/app/ui/widget/AssetView;)V
    .locals 0
    .param p1, "cover"    # Lcom/showmax/app/ui/widget/AssetView;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 84
    iput-object p1, p0, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter$ViewHolder;->cover:Lcom/showmax/app/ui/widget/AssetView;

    .line 85
    return-void
.end method
