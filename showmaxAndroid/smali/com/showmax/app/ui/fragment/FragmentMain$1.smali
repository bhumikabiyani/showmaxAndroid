.class Lcom/showmax/app/ui/fragment/FragmentMain$1;
.super Ljava/lang/Object;
.source "FragmentMain.java"

# interfaces
.implements Lcom/showmax/app/ui/widget/AssetsTileView$AssetsTileViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/fragment/FragmentMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/fragment/FragmentMain;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/fragment/FragmentMain;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/fragment/FragmentMain;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentMain$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 1
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentMain;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentMain;->mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentMain;->access$100(Lcom/showmax/app/ui/fragment/FragmentMain;)Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;->onAssetClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 277
    return-void
.end method

.method public onSeeAllClick(Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p1, "assetTileView"    # Landroid/view/View;
    .param p3, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 270
    .local p2, "assets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMain$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentMain;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentMain;->mFragmentMainListener:Lcom/showmax/app/ui/fragment/FragmentMain$FragmentMainListener;
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentMain;->access$000(Lcom/showmax/app/ui/fragment/FragmentMain;)Lcom/showmax/app/ui/fragment/FragmentMain$FragmentMainListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/showmax/app/ui/fragment/FragmentMain$FragmentMainListener;->onSeeAllClick(I)V

    .line 271
    return-void
.end method
