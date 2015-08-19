.class Lcom/showmax/app/ui/ActivityTvSeriesDetail$1;
.super Ljava/lang/Object;
.source "ActivityTvSeriesDetail.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityTvSeriesDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityTvSeriesDetail;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityTvSeriesDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityTvSeriesDetail;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$1;->this$0:Lcom/showmax/app/ui/ActivityTvSeriesDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 301
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 296
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$1;->this$0:Lcom/showmax/app/ui/ActivityTvSeriesDetail;

    # setter for: Lcom/showmax/app/ui/ActivityTvSeriesDetail;->mCurrentFragmentPosition:I
    invoke-static {v0, p1}, Lcom/showmax/app/ui/ActivityTvSeriesDetail;->access$002(Lcom/showmax/app/ui/ActivityTvSeriesDetail;I)I

    .line 291
    return-void
.end method
