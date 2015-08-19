.class Lcom/showmax/app/ui/widget/ThreeViewPager$2;
.super Ljava/lang/Object;
.source "ThreeViewPager.java"

# interfaces
.implements Lcom/showmax/app/model/adapter/AdvertisementAdapter$OnItemClickListener;


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
    .line 232
    iput-object p1, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$2;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/showmax/lib/api/model/catalogue/Advertisement;)V
    .locals 2
    .param p1, "advertisement"    # Lcom/showmax/lib/api/model/catalogue/Advertisement;

    .prologue
    .line 237
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$2;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    # getter for: Lcom/showmax/app/ui/widget/ThreeViewPager;->mThreeViewPagerListener:Lcom/showmax/app/ui/widget/ThreeViewPager$ThreeViewPagerListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->access$000(Lcom/showmax/app/ui/widget/ThreeViewPager;)Lcom/showmax/app/ui/widget/ThreeViewPager$ThreeViewPagerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$2;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    # getter for: Lcom/showmax/app/ui/widget/ThreeViewPager;->mThreeViewPagerListener:Lcom/showmax/app/ui/widget/ThreeViewPager$ThreeViewPagerListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/ThreeViewPager;->access$000(Lcom/showmax/app/ui/widget/ThreeViewPager;)Lcom/showmax/app/ui/widget/ThreeViewPager$ThreeViewPagerListener;

    move-result-object v0

    iget-object v1, p1, Lcom/showmax/lib/api/model/catalogue/Advertisement;->asset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-interface {v0, v1}, Lcom/showmax/app/ui/widget/ThreeViewPager$ThreeViewPagerListener;->onAdvertisementClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 241
    :cond_0
    return-void
.end method
