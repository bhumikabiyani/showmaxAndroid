.class Lcom/showmax/app/ui/ActivityMain$TilesCallback;
.super Lcom/showmax/lib/api/io/ApiCallback;
.source "ActivityMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TilesCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/showmax/lib/api/io/ApiCallback",
        "<",
        "Lcom/showmax/lib/api/model/catalogue/AssetList;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_ERRORS_COUNT:I = 0x3


# instance fields
.field private mCurrentIndex:I

.field private mCurrentIndexError:I

.field private mCurrentLanguage:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

.field private mCurrentSection:Lcom/showmax/lib/api/model/catalogue/Section;

.field final synthetic this$0:Lcom/showmax/app/ui/ActivityMain;


# direct methods
.method public constructor <init>(Lcom/showmax/app/ui/ActivityMain;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 359
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->this$0:Lcom/showmax/app/ui/ActivityMain;

    invoke-direct {p0}, Lcom/showmax/lib/api/io/ApiCallback;-><init>()V

    .line 353
    iput v0, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentIndex:I

    .line 354
    iput v0, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentIndexError:I

    .line 360
    invoke-static {p2}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentLanguage:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .line 361
    invoke-static {p2}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentSection(Landroid/content/Context;)Lcom/showmax/lib/api/model/catalogue/Section;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentSection:Lcom/showmax/lib/api/model/catalogue/Section;

    .line 362
    return-void
.end method

.method private loadNext()V
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentIndex:I

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentIndexError:I

    .line 403
    iget v0, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentIndex:I

    invoke-direct {p0, v0}, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->loadTile(I)V

    .line 404
    return-void
.end method

.method private loadTile(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0xa

    .line 408
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->this$0:Lcom/showmax/app/ui/ActivityMain;

    # getter for: Lcom/showmax/app/ui/ActivityMain;->mTiles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityMain;->access$100(Lcom/showmax/app/ui/ActivityMain;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentIndex:I

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->this$0:Lcom/showmax/app/ui/ActivityMain;

    # getter for: Lcom/showmax/app/ui/ActivityMain;->mTiles:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityMain;->access$100(Lcom/showmax/app/ui/ActivityMain;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->this$0:Lcom/showmax/app/ui/ActivityMain;

    # getter for: Lcom/showmax/app/ui/ActivityMain;->mTiles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityMain;->access$100(Lcom/showmax/app/ui/ActivityMain;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/showmax/app/ui/ActivityMain$Tile;

    .line 412
    .local v9, "tile":Lcom/showmax/app/ui/ActivityMain$Tile;
    sget-object v0, Lcom/showmax/app/ui/ActivityMain$1;->$SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType:[I

    invoke-virtual {v9}, Lcom/showmax/app/ui/ActivityMain$Tile;->getTileType()Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 436
    .end local v9    # "tile":Lcom/showmax/app/ui/ActivityMain$Tile;
    :cond_0
    :goto_0
    return-void

    .line 415
    .restart local v9    # "tile":Lcom/showmax/app/ui/ActivityMain$Tile;
    :pswitch_0
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentSection:Lcom/showmax/lib/api/model/catalogue/Section;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentLanguage:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/showmax/lib/api/io/CatalogueApi;->loadGrossingAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Ljava/lang/Integer;Lretrofit/Callback;)V

    goto :goto_0

    .line 418
    :pswitch_1
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentSection:Lcom/showmax/lib/api/model/catalogue/Section;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentLanguage:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    sget-object v3, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;->PICK:Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

    .line 419
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, p0

    .line 418
    invoke-virtual/range {v0 .. v5}, Lcom/showmax/lib/api/io/CatalogueApi;->loadPromotedAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;Ljava/lang/Integer;Lretrofit/Callback;)V

    goto :goto_0

    .line 422
    :pswitch_2
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentSection:Lcom/showmax/lib/api/model/catalogue/Section;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentLanguage:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-virtual {v9}, Lcom/showmax/app/ui/ActivityMain$Tile;->getCategory()Lcom/showmax/lib/api/model/catalogue/Category;

    move-result-object v3

    sget-object v4, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 423
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v7, p0

    .line 422
    invoke-virtual/range {v0 .. v7}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/String;Ljava/lang/Integer;Lretrofit/Callback;)V

    goto :goto_0

    .line 427
    :pswitch_3
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentSection:Lcom/showmax/lib/api/model/catalogue/Section;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentLanguage:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-virtual {v9}, Lcom/showmax/app/ui/ActivityMain$Tile;->getCategory()Lcom/showmax/lib/api/model/catalogue/Category;

    move-result-object v3

    sget-object v4, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->TV_SERIES:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 428
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v7, p0

    .line 427
    invoke-virtual/range {v0 .. v7}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/String;Ljava/lang/Integer;Lretrofit/Callback;)V

    goto :goto_0

    .line 432
    :pswitch_4
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentSection:Lcom/showmax/lib/api/model/catalogue/Section;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentLanguage:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-virtual {v9}, Lcom/showmax/app/ui/ActivityMain$Tile;->getCategory()Lcom/showmax/lib/api/model/catalogue/Category;

    move-result-object v4

    .line 433
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v6, v5

    move-object v8, p0

    .line 432
    invoke-virtual/range {v1 .. v8}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/String;Ljava/lang/Integer;Lretrofit/Callback;)V

    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private resetIndex()V
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    iput v0, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentIndex:I

    .line 441
    return-void
.end method


# virtual methods
.method public failure(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 381
    iget v0, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentIndexError:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentIndexError:I

    .line 382
    iget v0, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentIndexError:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 384
    iget v0, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentIndex:I

    invoke-direct {p0, v0}, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->loadTile(I)V

    .line 390
    :goto_0
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/ApiErrorEvent;

    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->getError()Lretrofit/RetrofitError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 391
    return-void

    .line 388
    :cond_0
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->loadNext()V

    goto :goto_0
.end method

.method public startLoading()V
    .locals 1

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->resetIndex()V

    .line 396
    iget v0, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentIndex:I

    invoke-direct {p0, v0}, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->loadTile(I)V

    .line 397
    return-void
.end method

.method public success(Lcom/showmax/lib/api/model/catalogue/AssetList;I)V
    .locals 6
    .param p1, "data"    # Lcom/showmax/lib/api/model/catalogue/AssetList;
    .param p2, "status"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 367
    const-string v3, "[%s]::[TilesCallback]::[success]::[mCurrentIndex %d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/showmax/app/ui/ActivityMain;->TAG:Ljava/lang/String;

    aput-object v5, v4, v2

    iget v5, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget-object v3, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->this$0:Lcom/showmax/app/ui/ActivityMain;

    iget-object v4, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->this$0:Lcom/showmax/app/ui/ActivityMain;

    # getter for: Lcom/showmax/app/ui/ActivityMain;->mFragmentMain:Lcom/showmax/app/ui/fragment/FragmentMain;
    invoke-static {v4}, Lcom/showmax/app/ui/ActivityMain;->access$000(Lcom/showmax/app/ui/ActivityMain;)Lcom/showmax/app/ui/fragment/FragmentMain;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/showmax/app/ui/ActivityMain;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentIndex:I

    iget-object v4, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->this$0:Lcom/showmax/app/ui/ActivityMain;

    # getter for: Lcom/showmax/app/ui/ActivityMain;->mTiles:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/showmax/app/ui/ActivityMain;->access$100(Lcom/showmax/app/ui/ActivityMain;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 370
    iget-object v3, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->this$0:Lcom/showmax/app/ui/ActivityMain;

    # getter for: Lcom/showmax/app/ui/ActivityMain;->mTiles:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityMain;->access$100(Lcom/showmax/app/ui/ActivityMain;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/ActivityMain$Tile;

    .line 371
    .local v0, "tile":Lcom/showmax/app/ui/ActivityMain$Tile;
    iget-object v3, p1, Lcom/showmax/lib/api/model/catalogue/AssetList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lcom/showmax/app/ui/ActivityMain$Tile;->setAssets(Ljava/util/ArrayList;)V

    .line 372
    iget-object v3, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->this$0:Lcom/showmax/app/ui/ActivityMain;

    # getter for: Lcom/showmax/app/ui/ActivityMain;->mFragmentMain:Lcom/showmax/app/ui/fragment/FragmentMain;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityMain;->access$000(Lcom/showmax/app/ui/ActivityMain;)Lcom/showmax/app/ui/fragment/FragmentMain;

    move-result-object v3

    iget v4, p0, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->mCurrentIndex:I

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {v3, v0, v1}, Lcom/showmax/app/ui/fragment/FragmentMain;->appendAssetTile(Lcom/showmax/app/ui/ActivityMain$Tile;Z)V

    .line 375
    .end local v0    # "tile":Lcom/showmax/app/ui/ActivityMain$Tile;
    :cond_0
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->loadNext()V

    .line 376
    return-void

    .restart local v0    # "tile":Lcom/showmax/app/ui/ActivityMain$Tile;
    :cond_1
    move v1, v2

    .line 372
    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 349
    check-cast p1, Lcom/showmax/lib/api/model/catalogue/AssetList;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/ui/ActivityMain$TilesCallback;->success(Lcom/showmax/lib/api/model/catalogue/AssetList;I)V

    return-void
.end method
