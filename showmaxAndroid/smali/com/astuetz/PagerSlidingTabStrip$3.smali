.class Lcom/astuetz/PagerSlidingTabStrip$3;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/astuetz/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/astuetz/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/astuetz/PagerSlidingTabStrip;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 381
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/astuetz/PagerSlidingTabStrip;->access$300(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 383
    .local v1, "view":Landroid/view/View;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_2

    .line 384
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v2}, Lcom/astuetz/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 389
    :goto_0
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->isPaddingMiddle:Z
    invoke-static {v2}, Lcom/astuetz/PagerSlidingTabStrip;->access$600(Lcom/astuetz/PagerSlidingTabStrip;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 391
    .local v0, "mHalfWidthFirstTab":I
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v4, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v4}, Lcom/astuetz/PagerSlidingTabStrip;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    # setter for: Lcom/astuetz/PagerSlidingTabStrip;->paddingRight:I
    invoke-static {v3, v4}, Lcom/astuetz/PagerSlidingTabStrip;->access$802(Lcom/astuetz/PagerSlidingTabStrip;I)I

    move-result v3

    # setter for: Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I
    invoke-static {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->access$702(Lcom/astuetz/PagerSlidingTabStrip;I)I

    .line 393
    .end local v0    # "mHalfWidthFirstTab":I
    :cond_0
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I
    invoke-static {v3}, Lcom/astuetz/PagerSlidingTabStrip;->access$700(Lcom/astuetz/PagerSlidingTabStrip;)I

    move-result v3

    iget-object v4, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v4}, Lcom/astuetz/PagerSlidingTabStrip;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->paddingRight:I
    invoke-static {v5}, Lcom/astuetz/PagerSlidingTabStrip;->access$800(Lcom/astuetz/PagerSlidingTabStrip;)I

    move-result v5

    iget-object v6, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v6}, Lcom/astuetz/PagerSlidingTabStrip;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/astuetz/PagerSlidingTabStrip;->setPadding(IIII)V

    .line 394
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I
    invoke-static {v2}, Lcom/astuetz/PagerSlidingTabStrip;->access$900(Lcom/astuetz/PagerSlidingTabStrip;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v3}, Lcom/astuetz/PagerSlidingTabStrip;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->paddingLeft:I
    invoke-static {v4}, Lcom/astuetz/PagerSlidingTabStrip;->access$700(Lcom/astuetz/PagerSlidingTabStrip;)I

    move-result v4

    sub-int/2addr v3, v4

    # setter for: Lcom/astuetz/PagerSlidingTabStrip;->scrollOffset:I
    invoke-static {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->access$902(Lcom/astuetz/PagerSlidingTabStrip;I)I

    .line 396
    :cond_1
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v3}, Lcom/astuetz/PagerSlidingTabStrip;->access$200(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    # setter for: Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->access$1002(Lcom/astuetz/PagerSlidingTabStrip;I)I

    .line 397
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    const/4 v3, 0x0

    # setter for: Lcom/astuetz/PagerSlidingTabStrip;->currentPositionOffset:F
    invoke-static {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->access$1102(Lcom/astuetz/PagerSlidingTabStrip;F)F

    .line 398
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v3}, Lcom/astuetz/PagerSlidingTabStrip;->access$1000(Lcom/astuetz/PagerSlidingTabStrip;)I

    move-result v3

    # invokes: Lcom/astuetz/PagerSlidingTabStrip;->scrollToChild(II)V
    invoke-static {v2, v3, v7}, Lcom/astuetz/PagerSlidingTabStrip;->access$1200(Lcom/astuetz/PagerSlidingTabStrip;II)V

    .line 399
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v3}, Lcom/astuetz/PagerSlidingTabStrip;->access$1000(Lcom/astuetz/PagerSlidingTabStrip;)I

    move-result v3

    # invokes: Lcom/astuetz/PagerSlidingTabStrip;->updateSelection(I)V
    invoke-static {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->access$1300(Lcom/astuetz/PagerSlidingTabStrip;I)V

    .line 400
    return-void

    .line 386
    :cond_2
    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip$3;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v2}, Lcom/astuetz/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_0
.end method
