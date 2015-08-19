.class Lcom/showmax/app/ui/widget/ThreeViewPager$1;
.super Ljava/lang/Object;
.source "ThreeViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/widget/ThreeViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/widget/ThreeViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/widget/ThreeViewPager;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$1;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 227
    iget-object v1, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$1;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/showmax/app/ui/widget/ThreeViewPager;->mNeedsRedraw:Z

    .line 228
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$1;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    iget-boolean v0, v0, Lcom/showmax/app/ui/widget/ThreeViewPager;->mNeedsRedraw:Z

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$1;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    invoke-virtual {v0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->invalidate()V

    .line 217
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 222
    return-void
.end method
