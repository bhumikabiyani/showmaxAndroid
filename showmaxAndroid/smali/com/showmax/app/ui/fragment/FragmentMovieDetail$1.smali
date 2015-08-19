.class Lcom/showmax/app/ui/fragment/FragmentMovieDetail$1;
.super Ljava/lang/Object;
.source "FragmentMovieDetail.java"

# interfaces
.implements Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;


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
    .line 452
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagClicked(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mFragmentAssetDetailListener:Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->access$000(Lcom/showmax/app/ui/fragment/FragmentMovieDetail;)Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mFragmentAssetDetailListener:Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->access$000(Lcom/showmax/app/ui/fragment/FragmentMovieDetail;)Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;->onTagClicked(Ljava/lang/String;)V

    .line 460
    :cond_0
    return-void
.end method
