.class Lcom/showmax/app/ui/ActivityTutorial$2;
.super Ljava/lang/Object;
.source "ActivityTutorial.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityTutorial;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityTutorial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityTutorial;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityTutorial$2;->this$0:Lcom/showmax/app/ui/ActivityTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 139
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 117
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTutorial$2;->this$0:Lcom/showmax/app/ui/ActivityTutorial;

    # setter for: Lcom/showmax/app/ui/ActivityTutorial;->mCurrentPosition:I
    invoke-static {v1, p1}, Lcom/showmax/app/ui/ActivityTutorial;->access$102(Lcom/showmax/app/ui/ActivityTutorial;I)I

    .line 123
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTutorial$2;->this$0:Lcom/showmax/app/ui/ActivityTutorial;

    # getter for: Lcom/showmax/app/ui/ActivityTutorial;->mCurrentPosition:I
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityTutorial;->access$100(Lcom/showmax/app/ui/ActivityTutorial;)I

    move-result v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityTutorial$2;->this$0:Lcom/showmax/app/ui/ActivityTutorial;

    # getter for: Lcom/showmax/app/ui/ActivityTutorial;->mAdapter:Lcom/showmax/app/ui/ActivityTutorial$TutorialPagerAdapter;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityTutorial;->access$200(Lcom/showmax/app/ui/ActivityTutorial;)Lcom/showmax/app/ui/ActivityTutorial$TutorialPagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/showmax/app/ui/ActivityTutorial$TutorialPagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 125
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTutorial$2;->this$0:Lcom/showmax/app/ui/ActivityTutorial;

    # getter for: Lcom/showmax/app/ui/ActivityTutorial;->mSkip:Landroid/widget/Button;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityTutorial;->access$300(Lcom/showmax/app/ui/ActivityTutorial;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0d00d1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 126
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTutorial$2;->this$0:Lcom/showmax/app/ui/ActivityTutorial;

    # getter for: Lcom/showmax/app/ui/ActivityTutorial;->mSkip:Landroid/widget/Button;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityTutorial;->access$300(Lcom/showmax/app/ui/ActivityTutorial;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTutorial$2;->this$0:Lcom/showmax/app/ui/ActivityTutorial;

    # getter for: Lcom/showmax/app/ui/ActivityTutorial;->mSkip:Landroid/widget/Button;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityTutorial;->access$300(Lcom/showmax/app/ui/ActivityTutorial;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0d00d2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 131
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTutorial$2;->this$0:Lcom/showmax/app/ui/ActivityTutorial;

    # getter for: Lcom/showmax/app/ui/ActivityTutorial;->mSkip:Landroid/widget/Button;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityTutorial;->access$300(Lcom/showmax/app/ui/ActivityTutorial;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityTutorial$2;->this$0:Lcom/showmax/app/ui/ActivityTutorial;

    # getter for: Lcom/showmax/app/ui/ActivityTutorial;->mCanSkip:Z
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityTutorial;->access$400(Lcom/showmax/app/ui/ActivityTutorial;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method
