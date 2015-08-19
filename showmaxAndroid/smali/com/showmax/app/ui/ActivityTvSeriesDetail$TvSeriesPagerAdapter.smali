.class Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "ActivityTvSeriesDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityTvSeriesDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TvSeriesPagerAdapter"
.end annotation


# instance fields
.field private mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mFragmentTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPagesCount:I

.field private mSeasonText:Ljava/lang/String;

.field private mSeasons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 2
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 391
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 393
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 394
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->mFragmentTags:Ljava/util/Map;

    .line 396
    iput-object p2, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 397
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v0, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->seasons:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->mSeasons:Ljava/util/ArrayList;

    .line 399
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->mSeasons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->mPagesCount:I

    .line 400
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v0

    const v1, 0x7f0d00c2

    invoke-virtual {v0, v1}, Lcom/showmax/app/ShowMaxApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->mSeasonText:Ljava/lang/String;

    .line 401
    return-void
.end method

.method private getSeasonText(I)Ljava/lang/String;
    .locals 4
    .param p1, "seasonNo"    # I

    .prologue
    .line 466
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->mSeasonText:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->mPagesCount:I

    return v0
.end method

.method public getFragment(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 451
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->mFragmentTags:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 452
    .local v0, "tag":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 454
    const/4 v1, 0x0

    .line 456
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    goto :goto_0
.end method

.method public getFragmentTvSeriesDetail()Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->getFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;

    return-object v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 427
    if-nez p1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->newInstance(Lcom/showmax/lib/api/model/catalogue/Asset;)Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;

    move-result-object v0

    .line 432
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->mSeasons:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;->newInstance(Lcom/showmax/lib/api/model/catalogue/Asset;)Lcom/showmax/app/ui/fragment/FragmentTvSeriesSeason;

    move-result-object v0

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 412
    if-nez p1, :cond_0

    .line 415
    invoke-static {}, Lcom/showmax/app/ShowMaxApp;->getInstance()Lcom/showmax/app/ShowMaxApp;

    move-result-object v1

    const v2, 0x7f0d008b

    invoke-virtual {v1, v2}, Lcom/showmax/app/ShowMaxApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 420
    :goto_0
    return-object v1

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->mSeasons:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 420
    .local v0, "season":Lcom/showmax/lib/api/model/catalogue/Asset;
    iget v1, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->number:I

    invoke-direct {p0, v1}, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->getSeasonText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 438
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    .line 439
    .local v1, "obj":Ljava/lang/Object;
    instance-of v3, v1, Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 442
    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 443
    .local v0, "f":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "tag":Ljava/lang/String;
    iget-object v3, p0, Lcom/showmax/app/ui/ActivityTvSeriesDetail$TvSeriesPagerAdapter;->mFragmentTags:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    return-object v1
.end method
