.class Lcom/showmax/app/ui/ActivityAssetList$1;
.super Ljava/lang/Object;
.source "ActivityAssetList.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityAssetList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityAssetList;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityAssetList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityAssetList;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityAssetList$1;->this$0:Lcom/showmax/app/ui/ActivityAssetList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 300
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 280
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 285
    const-string v0, "[%s]::[mOnPageChangeListener]::[onPageSelected]::[position: %d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivityAssetList;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    if-nez p1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList$1;->this$0:Lcom/showmax/app/ui/ActivityAssetList;

    const/4 v1, 0x0

    # setter for: Lcom/showmax/app/ui/ActivityAssetList;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;
    invoke-static {v0, v1}, Lcom/showmax/app/ui/ActivityAssetList;->access$002(Lcom/showmax/app/ui/ActivityAssetList;Lcom/showmax/lib/api/model/catalogue/Category;)Lcom/showmax/lib/api/model/catalogue/Category;

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityAssetList$1;->this$0:Lcom/showmax/app/ui/ActivityAssetList;

    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList$1;->this$0:Lcom/showmax/app/ui/ActivityAssetList;

    # getter for: Lcom/showmax/app/ui/ActivityAssetList;->mCategories:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityAssetList;->access$100(Lcom/showmax/app/ui/ActivityAssetList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Category;

    # setter for: Lcom/showmax/app/ui/ActivityAssetList;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;
    invoke-static {v1, v0}, Lcom/showmax/app/ui/ActivityAssetList;->access$002(Lcom/showmax/app/ui/ActivityAssetList;Lcom/showmax/lib/api/model/catalogue/Category;)Lcom/showmax/lib/api/model/catalogue/Category;

    goto :goto_0
.end method
