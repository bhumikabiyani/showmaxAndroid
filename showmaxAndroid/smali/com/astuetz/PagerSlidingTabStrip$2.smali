.class Lcom/astuetz/PagerSlidingTabStrip$2;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/astuetz/PagerSlidingTabStrip;->addTab(ILjava/lang/CharSequence;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/astuetz/PagerSlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/astuetz/PagerSlidingTabStrip;I)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    iput p2, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 282
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/astuetz/PagerSlidingTabStrip;->access$200(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->val$position:I

    if-eq v1, v2, :cond_1

    .line 283
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/astuetz/PagerSlidingTabStrip;->access$300(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lcom/astuetz/PagerSlidingTabStrip;->access$200(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 284
    .local v0, "tab":Landroid/view/View;
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # invokes: Lcom/astuetz/PagerSlidingTabStrip;->notSelected(Landroid/view/View;)V
    invoke-static {v1, v0}, Lcom/astuetz/PagerSlidingTabStrip;->access$400(Lcom/astuetz/PagerSlidingTabStrip;Landroid/view/View;)V

    .line 285
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/astuetz/PagerSlidingTabStrip;->access$200(Lcom/astuetz/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->val$position:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 289
    .end local v0    # "tab":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->tabReselectedListener:Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;
    invoke-static {v1}, Lcom/astuetz/PagerSlidingTabStrip;->access$500(Lcom/astuetz/PagerSlidingTabStrip;)Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->this$0:Lcom/astuetz/PagerSlidingTabStrip;

    # getter for: Lcom/astuetz/PagerSlidingTabStrip;->tabReselectedListener:Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;
    invoke-static {v1}, Lcom/astuetz/PagerSlidingTabStrip;->access$500(Lcom/astuetz/PagerSlidingTabStrip;)Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;

    move-result-object v1

    iget v2, p0, Lcom/astuetz/PagerSlidingTabStrip$2;->val$position:I

    invoke-interface {v1, v2}, Lcom/astuetz/PagerSlidingTabStrip$OnTabReselectedListener;->onTabReselected(I)V

    goto :goto_0
.end method
