.class Lcom/showmax/app/ui/widget/RecommendedGridView$1;
.super Ljava/lang/Object;
.source "RecommendedGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/widget/RecommendedGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/widget/RecommendedGridView;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/widget/RecommendedGridView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/widget/RecommendedGridView;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/showmax/app/ui/widget/RecommendedGridView$1;->this$0:Lcom/showmax/app/ui/widget/RecommendedGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/showmax/app/ui/widget/RecommendedGridView$1;->this$0:Lcom/showmax/app/ui/widget/RecommendedGridView;

    # getter for: Lcom/showmax/app/ui/widget/RecommendedGridView;->mListener:Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;
    invoke-static {v1}, Lcom/showmax/app/ui/widget/RecommendedGridView;->access$000(Lcom/showmax/app/ui/widget/RecommendedGridView;)Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 206
    .local v0, "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/showmax/app/ui/widget/RecommendedGridView$1;->this$0:Lcom/showmax/app/ui/widget/RecommendedGridView;

    # getter for: Lcom/showmax/app/ui/widget/RecommendedGridView;->mListener:Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;
    invoke-static {v1}, Lcom/showmax/app/ui/widget/RecommendedGridView;->access$000(Lcom/showmax/app/ui/widget/RecommendedGridView;)Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;->onAssetClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 211
    .end local v0    # "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    :cond_0
    return-void
.end method
