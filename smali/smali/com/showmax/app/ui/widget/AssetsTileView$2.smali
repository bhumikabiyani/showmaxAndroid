.class Lcom/showmax/app/ui/widget/AssetsTileView$2;
.super Ljava/lang/Object;
.source "AssetsTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 308
    iput-object p1, p0, Lcom/showmax/app/ui/widget/AssetsTileView$2;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView$2;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    # getter for: Lcom/showmax/app/ui/widget/AssetsTileView;->mListener:Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/AssetsTileView;->access$800(Lcom/showmax/app/ui/widget/AssetsTileView;)Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView$2;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    # getter for: Lcom/showmax/app/ui/widget/AssetsTileView;->mListener:Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/AssetsTileView;->access$800(Lcom/showmax/app/ui/widget/AssetsTileView;)Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/widget/AssetsTileView$2;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    iget-object v2, p0, Lcom/showmax/app/ui/widget/AssetsTileView$2;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    # getter for: Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetAdapter:Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;
    invoke-static {v2}, Lcom/showmax/app/ui/widget/AssetsTileView;->access$900(Lcom/showmax/app/ui/widget/AssetsTileView;)Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/showmax/app/model/adapter/recyclerview/PortraitAssetAdapter;->getData()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/showmax/app/ui/widget/AssetsTileView$2;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    # getter for: Lcom/showmax/app/ui/widget/AssetsTileView;->mTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/showmax/app/ui/widget/AssetsTileView;->access$100(Lcom/showmax/app/ui/widget/AssetsTileView;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;->onSeeAllClick(Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 316
    :cond_0
    return-void
.end method
