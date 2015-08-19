.class Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$2;
.super Ljava/lang/Object;
.source "FragmentTvSeriesDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 369
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$2;->this$0:Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 374
    .local v0, "id":I
    const-string v1, "[%s]::[mOnBtnClickListener]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->TAG:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    const v1, 0x7f0b0117

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$2;->this$0:Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mFragmentTvSeriesDetailListener:Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;
    invoke-static {v1}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->access$000(Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;)Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;->onTrailerClick()V

    .line 380
    :cond_0
    return-void
.end method
