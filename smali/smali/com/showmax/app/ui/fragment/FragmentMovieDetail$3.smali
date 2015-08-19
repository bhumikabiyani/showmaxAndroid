.class Lcom/showmax/app/ui/fragment/FragmentMovieDetail$3;
.super Ljava/lang/Object;
.source "FragmentMovieDetail.java"

# interfaces
.implements Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/fragment/FragmentMovieDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/fragment/FragmentMovieDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$3;->this$0:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssetClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 1
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$3;->this$0:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->access$200(Lcom/showmax/app/ui/fragment/FragmentMovieDetail;)Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;->onAssetClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 503
    return-void
.end method
