.class Lcom/showmax/app/ui/widget/AssetsTileView$4;
.super Ljava/lang/Object;
.source "AssetsTileView.java"

# interfaces
.implements Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/widget/AssetsTileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/widget/AssetsTileView;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/widget/AssetsTileView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/widget/AssetsTileView;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/showmax/app/ui/widget/AssetsTileView$4;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 1
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView$4;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    # getter for: Lcom/showmax/app/ui/widget/AssetsTileView;->mListener:Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/AssetsTileView;->access$800(Lcom/showmax/app/ui/widget/AssetsTileView;)Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;->onAssetClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 334
    return-void
.end method
