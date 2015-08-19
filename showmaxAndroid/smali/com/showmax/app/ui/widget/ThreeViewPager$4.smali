.class Lcom/showmax/app/ui/widget/ThreeViewPager$4;
.super Ljava/lang/Object;
.source "ThreeViewPager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/widget/ThreeViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPosition:I

.field final synthetic this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/widget/ThreeViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/widget/ThreeViewPager;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f40

    const/4 v2, 0x1

    .line 271
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    # getter for: Lcom/showmax/app/ui/widget/ThreeViewPager;->mPageAutoChangeEnabled:Z
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->access$200(Lcom/showmax/app/ui/widget/ThreeViewPager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    # getter for: Lcom/showmax/app/ui/widget/ThreeViewPager;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->access$300(Lcom/showmax/app/ui/widget/ThreeViewPager;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    # getter for: Lcom/showmax/app/ui/widget/ThreeViewPager;->mAdsAdapter:Lcom/showmax/app/model/adapter/AdvertisementAdapter;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->access$400(Lcom/showmax/app/ui/widget/ThreeViewPager;)Lcom/showmax/app/model/adapter/AdvertisementAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    # getter for: Lcom/showmax/app/ui/widget/ThreeViewPager;->mPageAutoChangePaused:Z
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->access$100(Lcom/showmax/app/ui/widget/ThreeViewPager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    # getter for: Lcom/showmax/app/ui/widget/ThreeViewPager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->access$500(Lcom/showmax/app/ui/widget/ThreeViewPager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    # getter for: Lcom/showmax/app/ui/widget/ThreeViewPager;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->access$300(Lcom/showmax/app/ui/widget/ThreeViewPager;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    # getter for: Lcom/showmax/app/ui/widget/ThreeViewPager;->mAdsAdapter:Lcom/showmax/app/model/adapter/AdvertisementAdapter;
    invoke-static {v1}, Lcom/showmax/app/ui/widget/ThreeViewPager;->access$400(Lcom/showmax/app/ui/widget/ThreeViewPager;)Lcom/showmax/app/model/adapter/AdvertisementAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 284
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    # getter for: Lcom/showmax/app/ui/widget/ThreeViewPager;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->access$300(Lcom/showmax/app/ui/widget/ThreeViewPager;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;->mPosition:I

    .line 285
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    # getter for: Lcom/showmax/app/ui/widget/ThreeViewPager;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->access$300(Lcom/showmax/app/ui/widget/ThreeViewPager;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;->mPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 293
    :goto_1
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    # getter for: Lcom/showmax/app/ui/widget/ThreeViewPager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->access$500(Lcom/showmax/app/ui/widget/ThreeViewPager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 290
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;->mPosition:I

    .line 291
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    # getter for: Lcom/showmax/app/ui/widget/ThreeViewPager;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->access$300(Lcom/showmax/app/ui/widget/ThreeViewPager;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$4;->mPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_1
.end method
