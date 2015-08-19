.class Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$3;
.super Ljava/lang/Object;
.source "FragmentTvSeriesDetail.java"

# interfaces
.implements Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$3;->this$0:Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 1
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$3;->this$0:Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mFragmentTvSeriesDetailListener:Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->access$000(Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;)Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;->onRecommendedAssetClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 389
    return-void
.end method
