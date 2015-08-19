.class Lcom/showmax/app/ui/fragment/FragmentMovieDetail$2;
.super Ljava/lang/Object;
.source "FragmentMovieDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 464
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$2;->this$0:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 469
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 471
    .local v0, "id":I
    const v1, 0x7f0b00e5

    if-ne v0, v1, :cond_2

    .line 473
    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$2;->this$0:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mPlayBtn:Lcom/showmax/app/ui/widget/PlayButton;
    invoke-static {v1}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->access$100(Lcom/showmax/app/ui/fragment/FragmentMovieDetail;)Lcom/showmax/app/ui/widget/PlayButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/showmax/app/ui/widget/PlayButton;->getState()Lcom/showmax/app/ui/widget/PlayButton$State;

    move-result-object v1

    sget-object v2, Lcom/showmax/app/ui/widget/PlayButton$State;->PURCHASE:Lcom/showmax/app/ui/widget/PlayButton$State;

    if-ne v1, v2, :cond_1

    .line 475
    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$2;->this$0:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mFragmentAssetDetailListener:Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;
    invoke-static {v1}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->access$000(Lcom/showmax/app/ui/fragment/FragmentMovieDetail;)Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;->onPurchaseClick()V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$2;->this$0:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mFragmentAssetDetailListener:Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;
    invoke-static {v1}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->access$000(Lcom/showmax/app/ui/fragment/FragmentMovieDetail;)Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;->onPlayClick()V

    goto :goto_0

    .line 482
    :cond_2
    const v1, 0x7f0b00ea

    if-ne v0, v1, :cond_3

    .line 484
    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$2;->this$0:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mFragmentAssetDetailListener:Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;
    invoke-static {v1}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->access$000(Lcom/showmax/app/ui/fragment/FragmentMovieDetail;)Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$2;->this$0:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mFragmentAssetDetailListener:Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;
    invoke-static {v1}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->access$000(Lcom/showmax/app/ui/fragment/FragmentMovieDetail;)Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;->onTrailerClick()V

    goto :goto_0

    .line 489
    :cond_3
    const v1, 0x7f0b00e6

    if-ne v0, v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$2;->this$0:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mFragmentAssetDetailListener:Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;
    invoke-static {v1}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->access$000(Lcom/showmax/app/ui/fragment/FragmentMovieDetail;)Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;->onFavouritesClick()V

    goto :goto_0
.end method
