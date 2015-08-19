.class public Lcom/showmax/app/ui/ActivityAssetList$AssetsViewPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ActivityAssetList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityAssetList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetsViewPagerAdapter"
.end annotation


# instance fields
.field private mAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "assetType"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Lcom/showmax/lib/api/model/catalogue/Asset$Type;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p3, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 348
    iput-object p3, p0, Lcom/showmax/app/ui/ActivityAssetList$AssetsViewPagerAdapter;->mCategories:Ljava/util/ArrayList;

    .line 349
    iput-object p2, p0, Lcom/showmax/app/ui/ActivityAssetList$AssetsViewPagerAdapter;->mAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 350
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList$AssetsViewPagerAdapter;->mCategories:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList$AssetsViewPagerAdapter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 361
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAssetList$AssetsViewPagerAdapter;->mAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityAssetList$AssetsViewPagerAdapter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Category;

    invoke-static {v2, v1}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->newInstance(Lcom/showmax/lib/api/model/catalogue/Asset$Type;Lcom/showmax/lib/api/model/catalogue/Category;)Lcom/showmax/app/ui/fragment/FragmentAssetGrid;

    move-result-object v0

    .line 362
    .local v0, "f":Lcom/showmax/app/ui/fragment/FragmentAssetGrid;
    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetList$AssetsViewPagerAdapter;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v0, v0, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    return-object v0
.end method
