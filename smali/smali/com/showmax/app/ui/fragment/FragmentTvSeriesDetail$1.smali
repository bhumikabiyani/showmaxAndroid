.class Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$1;
.super Ljava/lang/Object;
.source "FragmentTvSeriesDetail.java"

# interfaces
.implements Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;


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
    .line 357
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagClicked(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mFragmentTvSeriesDetailListener:Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->access$000(Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;)Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mFragmentTvSeriesDetailListener:Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->access$000(Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;)Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;->onTagClicked(Ljava/lang/String;)V

    .line 365
    :cond_0
    return-void
.end method
