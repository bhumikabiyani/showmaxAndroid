.class Lcom/showmax/app/ui/widget/AssetsTileView$3;
.super Ljava/lang/Object;
.source "AssetsTileView.java"

# interfaces
.implements Lcom/showmax/app/ui/widget/RefreshProgressBar$RefreshProgressBarListener;


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
    .line 320
    iput-object p1, p0, Lcom/showmax/app/ui/widget/AssetsTileView$3;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshClick()V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView$3;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/AssetsTileView$3;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    # getter for: Lcom/showmax/app/ui/widget/AssetsTileView;->mTileType:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;
    invoke-static {v1}, Lcom/showmax/app/ui/widget/AssetsTileView;->access$400(Lcom/showmax/app/ui/widget/AssetsTileView;)Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/widget/AssetsTileView$3;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    # getter for: Lcom/showmax/app/ui/widget/AssetsTileView;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;
    invoke-static {v2}, Lcom/showmax/app/ui/widget/AssetsTileView;->access$500(Lcom/showmax/app/ui/widget/AssetsTileView;)Lcom/showmax/lib/api/model/catalogue/Category;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/showmax/app/ui/widget/AssetsTileView;->loadAssetsTile(Lcom/showmax/app/ui/widget/AssetsTileView$TileType;Lcom/showmax/lib/api/model/catalogue/Category;)V

    .line 325
    return-void
.end method
