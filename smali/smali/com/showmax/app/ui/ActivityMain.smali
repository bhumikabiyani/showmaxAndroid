.class public Lcom/showmax/app/ui/ActivityMain;
.super Lcom/showmax/app/ui/ActivityBase;
.source "ActivityMain.java"

# interfaces
.implements Lcom/showmax/app/ui/fragment/FragmentMain$FragmentMainListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/ActivityMain$Tile;,
        Lcom/showmax/app/ui/ActivityMain$TilesCallback;
    }
.end annotation


# static fields
.field public static final ARGS_DEEP_LINK_ASSET:Ljava/lang/String; = "args.deep.link.asset"

.field public static final SAVED_STATE_ADS:Ljava/lang/String; = "saved.state.ads"

.field public static final SAVED_STATE_TILES:Ljava/lang/String; = "saved.state.tiles"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdvertisements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Advertisement;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentMain:Lcom/showmax/app/ui/fragment/FragmentMain;

.field private mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/app/ui/ActivityMain$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mTilesCallback:Lcom/showmax/app/ui/ActivityMain$TilesCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/showmax/app/ui/ActivityMain;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/ActivityMain;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mTiles:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mAdvertisements:Ljava/util/ArrayList;

    .line 572
    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/ActivityMain;)Lcom/showmax/app/ui/fragment/FragmentMain;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityMain;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mFragmentMain:Lcom/showmax/app/ui/fragment/FragmentMain;

    return-object v0
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/ActivityMain;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityMain;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mTiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method private handleDeeplink()V
    .locals 8

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMain;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 235
    .local v1, "incoming":Landroid/content/Intent;
    if-eqz v1, :cond_1

    const-string v4, "args.deep.link.asset"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 237
    const-string v4, "args.deep.link.asset"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    .line 238
    .local v0, "deeplinkAsset":Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->type:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    if-eqz v4, :cond_1

    .line 240
    const-string v4, "[%s]::[handleDeeplink]::[Type: %s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/showmax/app/ui/ActivityMain;->TAG:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->type:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    iget-object v4, v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->type:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    sget-object v5, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->MOVIE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    if-eq v4, v5, :cond_0

    iget-object v4, v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->type:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    sget-object v5, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->EPISODE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    if-ne v4, v5, :cond_2

    .line 244
    :cond_0
    iget-object v4, v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->asset:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v4, :cond_1

    .line 246
    iget-object v4, v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->asset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {p0, v4}, Lcom/showmax/app/ui/ActivityMain;->startAssetDetailActivity(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 275
    .end local v0    # "deeplinkAsset":Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    :cond_1
    :goto_0
    return-void

    .line 250
    .restart local v0    # "deeplinkAsset":Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    :cond_2
    iget-object v4, v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->type:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    sget-object v5, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->TV_SERIE:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    if-ne v4, v5, :cond_3

    .line 252
    iget-object v4, v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->asset:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v4, :cond_1

    .line 254
    iget-object v4, v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->asset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v4, v4, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/showmax/app/ui/ActivityMain;->startTvSeriesDetailActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_3
    iget-object v4, v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->type:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    sget-object v5, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->SEASON:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    if-ne v4, v5, :cond_4

    .line 260
    iget-object v4, v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->asset:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v4, :cond_1

    .line 262
    iget-object v4, v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->asset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v3, v4, Lcom/showmax/lib/api/model/catalogue/Asset;->tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 263
    .local v3, "tvShow":Lcom/showmax/lib/api/model/catalogue/Asset;
    iget-object v4, v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->asset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget v2, v4, Lcom/showmax/lib/api/model/catalogue/Asset;->number:I

    .line 264
    .local v2, "seasonToShow":I
    iget-object v4, v3, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {p0, v4, v2}, Lcom/showmax/app/ui/ActivityMain;->startTvSeriesDetailActivity(Ljava/lang/String;I)V

    goto :goto_0

    .line 268
    .end local v2    # "seasonToShow":I
    .end local v3    # "tvShow":Lcom/showmax/lib/api/model/catalogue/Asset;
    :cond_4
    iget-object v4, v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->type:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    sget-object v5, Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;->SEARCH:Lcom/showmax/lib/api/utils/DeeplinkUtils$Type;

    if-ne v4, v5, :cond_1

    .line 270
    iget-object v4, v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->query:Ljava/lang/String;

    iget-object v5, v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->section:Lcom/showmax/lib/api/model/catalogue/Section;

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->searchType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/showmax/app/ui/ActivityMain;->startSearchActivity(Ljava/lang/String;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V

    goto :goto_0
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 227
    const-string v0, "saved.state.tiles"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mTiles:Ljava/util/ArrayList;

    .line 228
    const-string v0, "saved.state.ads"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mAdvertisements:Ljava/util/ArrayList;

    .line 230
    :cond_0
    return-void
.end method

.method private initTiles(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "movieCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    .local p2, "tvSeriesCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 313
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityMain;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 315
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityMain;->mTiles:Ljava/util/ArrayList;

    new-instance v3, Lcom/showmax/app/ui/ActivityMain$Tile;

    sget-object v4, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->PICK:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    invoke-direct {v3, v4}, Lcom/showmax/app/ui/ActivityMain$Tile;-><init>(Lcom/showmax/app/ui/widget/AssetsTileView$TileType;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityMain;->mTiles:Ljava/util/ArrayList;

    new-instance v3, Lcom/showmax/app/ui/ActivityMain$Tile;

    sget-object v4, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->GROSSING:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    invoke-direct {v3, v4}, Lcom/showmax/app/ui/ActivityMain$Tile;-><init>(Lcom/showmax/app/ui/widget/AssetsTileView$TileType;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v0, "categoriesToLoad":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    if-eqz p1, :cond_0

    .line 321
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 324
    :cond_0
    if-eqz p2, :cond_2

    .line 326
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Category;

    .line 328
    .local v1, "category":Lcom/showmax/lib/api/model/catalogue/Category;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 330
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    .end local v1    # "category":Lcom/showmax/lib/api/model/catalogue/Category;
    :cond_2
    const-string v2, "[%s]::[initTiles]::[movie categories: %d]::[series categories: %d]::[together: %d]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/showmax/app/ui/ActivityMain;->TAG:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 336
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    .line 335
    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Category;

    .line 341
    .restart local v1    # "category":Lcom/showmax/lib/api/model/catalogue/Category;
    const-string v3, "category.id.all.fake"

    iget-object v4, v1, Lcom/showmax/lib/api/model/catalogue/Category;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 343
    const-string v3, "[%s]::[initTiles]::[%s]::[%s]"

    new-array v4, v9, [Ljava/lang/Object;

    sget-object v5, Lcom/showmax/app/ui/ActivityMain;->TAG:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, v1, Lcom/showmax/lib/api/model/catalogue/Category;->id:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, v1, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    iget-object v3, p0, Lcom/showmax/app/ui/ActivityMain;->mTiles:Ljava/util/ArrayList;

    new-instance v4, Lcom/showmax/app/ui/ActivityMain$Tile;

    sget-object v5, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->ASSETS:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    invoke-direct {v4, v5, v1}, Lcom/showmax/app/ui/ActivityMain$Tile;-><init>(Lcom/showmax/app/ui/widget/AssetsTileView$TileType;Lcom/showmax/lib/api/model/catalogue/Category;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 347
    .end local v1    # "category":Lcom/showmax/lib/api/model/catalogue/Category;
    :cond_4
    return-void
.end method

.method private loadAdvertisements()V
    .locals 4

    .prologue
    .line 447
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentSection(Landroid/content/Context;)Lcom/showmax/lib/api/model/catalogue/Section;

    move-result-object v1

    .line 448
    .local v1, "currentSection":Lcom/showmax/lib/api/model/catalogue/Section;
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    .line 449
    .local v0, "currentLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    invoke-static {}, Lcom/showmax/app/io/DataManager;->getInstance()Lcom/showmax/app/io/DataManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/showmax/app/io/DataManager;->fetchAdvertisements(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Z)V

    .line 450
    return-void
.end method

.method private loadCategories()V
    .locals 3

    .prologue
    .line 279
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentSection(Landroid/content/Context;)Lcom/showmax/lib/api/model/catalogue/Section;

    move-result-object v0

    .line 280
    .local v0, "section":Lcom/showmax/lib/api/model/catalogue/Section;
    invoke-static {}, Lcom/showmax/app/io/DataManager;->getInstance()Lcom/showmax/app/io/DataManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/showmax/app/io/DataManager;->fetchCategories(Lcom/showmax/lib/api/model/catalogue/Section;Z)V

    .line 281
    return-void
.end method

.method private loadTiles(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "movieCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    .local p2, "tvSeriesCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    invoke-direct {p0, p1, p2}, Lcom/showmax/app/ui/ActivityMain;->initTiles(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 286
    new-instance v0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;

    invoke-direct {v0, p0, p0}, Lcom/showmax/app/ui/ActivityMain$TilesCallback;-><init>(Lcom/showmax/app/ui/ActivityMain;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mTilesCallback:Lcom/showmax/app/ui/ActivityMain$TilesCallback;

    .line 287
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mTilesCallback:Lcom/showmax/app/ui/ActivityMain$TilesCallback;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->startLoading()V

    .line 288
    return-void
.end method

.method private showAdvertisements()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mAdvertisements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mFragmentMain:Lcom/showmax/app/ui/fragment/FragmentMain;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityMain;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mFragmentMain:Lcom/showmax/app/ui/fragment/FragmentMain;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMain;->mAdvertisements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/fragment/FragmentMain;->showAdvertisements(Ljava/util/ArrayList;)V

    .line 309
    :cond_0
    return-void
.end method

.method private showTiles()V
    .locals 4

    .prologue
    .line 292
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityMain;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityMain;->mFragmentMain:Lcom/showmax/app/ui/fragment/FragmentMain;

    invoke-virtual {p0, v2}, Lcom/showmax/app/ui/ActivityMain;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    const/4 v0, 0x1

    .line 295
    .local v0, "clear":Z
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityMain;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/showmax/app/ui/ActivityMain$Tile;

    .line 297
    .local v1, "tile":Lcom/showmax/app/ui/ActivityMain$Tile;
    iget-object v3, p0, Lcom/showmax/app/ui/ActivityMain;->mFragmentMain:Lcom/showmax/app/ui/fragment/FragmentMain;

    invoke-virtual {v3, v1, v0}, Lcom/showmax/app/ui/fragment/FragmentMain;->appendAssetTile(Lcom/showmax/app/ui/ActivityMain$Tile;Z)V

    .line 298
    const/4 v0, 0x0

    .line 299
    goto :goto_0

    .line 301
    .end local v0    # "clear":Z
    .end local v1    # "tile":Lcom/showmax/app/ui/ActivityMain$Tile;
    :cond_0
    return-void
.end method

.method public static startActivityMain(Landroid/support/v4/app/FragmentActivity;ZLcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;)V
    .locals 2
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "finish"    # Z
    .param p2, "deeplinkAsset"    # Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/showmax/app/ui/ActivityMain;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    if-eqz p2, :cond_0

    .line 201
    const-string v1, "args.deep.link.asset"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 203
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 204
    if-eqz p1, :cond_1

    .line 206
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 208
    :cond_1
    return-void
.end method


# virtual methods
.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/showmax/app/ui/ActivityMain;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onAdvertisementClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 2
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 461
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-nez v0, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    sget-object v0, Lcom/showmax/app/ui/ActivityMain$1;->$SwitchMap$com$showmax$lib$api$model$catalogue$Asset$Type:[I

    iget-object v1, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {v1}, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 470
    :pswitch_0
    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    invoke-virtual {p0, v0, v1}, Lcom/showmax/app/ui/ActivityMain;->startAssetDetailActivity(Ljava/lang/String;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V

    goto :goto_0

    .line 473
    :pswitch_1
    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityMain;->startTvSeriesDetailActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :pswitch_2
    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v0, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    iget v1, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->number:I

    invoke-virtual {p0, v0, v1}, Lcom/showmax/app/ui/ActivityMain;->startTvSeriesDetailActivity(Ljava/lang/String;I)V

    goto :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAdvertisementRefreshclick()V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 85
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityMain;->setHasSlidingMenu(Z)V

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/showmax/app/ui/ActivityMain;->setHasToolbar(ZZ)V

    .line 89
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityMain;->setContentView(I)V

    .line 91
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMain;->hideActionBarLogo()V

    .line 93
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivityMain;->initData(Landroid/os/Bundle;)V

    .line 95
    if-eqz p1, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMain;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/showmax/app/ui/fragment/FragmentMain;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/fragment/FragmentMain;

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mFragmentMain:Lcom/showmax/app/ui/fragment/FragmentMain;

    .line 106
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mFragmentMain:Lcom/showmax/app/ui/fragment/FragmentMain;

    invoke-virtual {v0}, Lcom/showmax/app/ui/fragment/FragmentMain;->isInLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMain;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b00a2

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityMain;->mFragmentMain:Lcom/showmax/app/ui/fragment/FragmentMain;

    sget-object v3, Lcom/showmax/app/ui/fragment/FragmentMain;->TAG:Ljava/lang/String;

    .line 110
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 112
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMain;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 115
    :cond_1
    return-void

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mFragmentMain:Lcom/showmax/app/ui/fragment/FragmentMain;

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lcom/showmax/app/ui/fragment/FragmentMain;->newInstance()Lcom/showmax/app/ui/fragment/FragmentMain;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mFragmentMain:Lcom/showmax/app/ui/fragment/FragmentMain;

    goto :goto_0
.end method

.method public onEvent(Lcom/showmax/app/io/event/FetchAdvertisementsFinishedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/showmax/app/io/event/FetchAdvertisementsFinishedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 548
    const-string v0, "[%s]::[onEvent]::[FetchAdvertisementsFinishedEvent]::[success: %b]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivityMain;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/showmax/app/io/event/FetchAdvertisementsFinishedEvent;->success()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    invoke-virtual {p1}, Lcom/showmax/app/io/event/FetchAdvertisementsFinishedEvent;->success()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mAdvertisements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 552
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMain;->mAdvertisements:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/showmax/app/io/event/FetchAdvertisementsFinishedEvent;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/AdvertisementList;

    iget-object v0, v0, Lcom/showmax/lib/api/model/catalogue/AdvertisementList;->advertisements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 559
    :goto_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mFragmentMain:Lcom/showmax/app/ui/fragment/FragmentMain;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityMain;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mFragmentMain:Lcom/showmax/app/ui/fragment/FragmentMain;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMain;->mAdvertisements:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/fragment/FragmentMain;->showAdvertisements(Ljava/util/ArrayList;)V

    .line 563
    :cond_0
    return-void

    .line 556
    :cond_1
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/ApiErrorEvent;

    invoke-virtual {p1}, Lcom/showmax/app/io/event/FetchAdvertisementsFinishedEvent;->getError()Lretrofit/RetrofitError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 532
    const-string v0, "[%s]::[onEvent]::[FetchCategoriesFinishedEvent]::[success: %b]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivityMain;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;->success()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    invoke-virtual {p1}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityMain;->loadAdvertisements()V

    .line 537
    invoke-virtual {p1}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;->getMovieCategories()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;->getTvSeriesCategories()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/showmax/app/ui/ActivityMain;->loadTiles(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 543
    :goto_0
    return-void

    .line 541
    :cond_0
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/ApiErrorEvent;

    invoke-virtual {p1}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;->getError()Lretrofit/RetrofitError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 178
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 175
    :pswitch_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMain;->toggleSlidingMenu()V

    .line 176
    const/4 v0, 0x1

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onPostCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityMain;->handleDeeplink()V

    .line 132
    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v0

    iget-object v0, v0, Lcom/showmax/app/Build;->API_KEY_HOCKEYAPP:Ljava/lang/String;

    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v1

    iget-boolean v1, v1, Lcom/showmax/app/Build;->HOCKEYAPP_CRASH_MANAGER:Z

    invoke-static {p0, v0, v1}, Lcom/showmax/app/util/MauHockeyApp;->registerCrashManager(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 133
    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v0

    iget-object v0, v0, Lcom/showmax/app/Build;->API_KEY_HOCKEYAPP:Ljava/lang/String;

    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v1

    iget-boolean v1, v1, Lcom/showmax/app/Build;->HOCKEYAPP_UPDATE_MANAGER:Z

    invoke-static {p0, v0, v1}, Lcom/showmax/app/util/MauHockeyApp;->registerUpdateManager(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 134
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 139
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onResume()V

    .line 140
    const-string v0, "[%s]::[onResume]::[mTiles: %d]::[mAdvertisements: %d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivityMain;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityMain;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityMain;->mAdvertisements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mAdvertisements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityMain;->loadCategories()V

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityMain;->showAdvertisements()V

    .line 149
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityMain;->showTiles()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    const-string v0, "saved.state.tiles"

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMain;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 158
    const-string v0, "saved.state.ads"

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMain;->mAdvertisements:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 159
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 160
    return-void
.end method

.method public onSectionItemClick(Lcom/showmax/lib/api/model/catalogue/Section;)V
    .locals 4
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;

    .prologue
    .line 511
    const-string v0, "[%s]::[onSectionItemClick]::[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivityMain;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMain;->recheckSubcriptionState()V

    .line 513
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/showmax/lib/api/utils/UserPrefs;->setCurrentSection(Landroid/content/Context;Lcom/showmax/lib/api/model/catalogue/Section;)V

    .line 516
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mFragmentMain:Lcom/showmax/app/ui/fragment/FragmentMain;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityMain;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain;->mFragmentMain:Lcom/showmax/app/ui/fragment/FragmentMain;

    invoke-virtual {v0}, Lcom/showmax/app/ui/fragment/FragmentMain;->showProgressBar()V

    .line 519
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityMain;->loadCategories()V

    .line 521
    :cond_0
    return-void
.end method

.method public onSeeAllClick(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 487
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMain;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/ActivityMain$Tile;

    .line 488
    .local v0, "tile":Lcom/showmax/app/ui/ActivityMain$Tile;
    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityMain$Tile;->getTileType()Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityMain$Tile;->getCategory()Lcom/showmax/lib/api/model/catalogue/Category;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/showmax/app/ui/ActivityMain;->startSeeAllActivity(Lcom/showmax/app/ui/widget/AssetsTileView$TileType;Lcom/showmax/lib/api/model/catalogue/Category;)V

    .line 492
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onStart()V

    .line 122
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onStop()V

    .line 166
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 167
    return-void
.end method
