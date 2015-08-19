.class public Lcom/showmax/app/ui/ActivitySeeAll;
.super Lcom/showmax/app/ui/ActivityBase;
.source "ActivitySeeAll.java"

# interfaces
.implements Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;


# static fields
.field public static final ARGS_CATEGORY:Ljava/lang/String; = "args.category"

.field public static final ARGS_TILE_TYPE:Ljava/lang/String; = "args.tile.type"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/showmax/lib/api/io/ApiCallback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/AssetList;",
            ">;"
        }
    .end annotation
.end field

.field private mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

.field private mFragmentSeeAll:Lcom/showmax/app/ui/fragment/FragmentSeeAll;

.field private mTileType:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/showmax/app/ui/ActivitySeeAll;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/ActivitySeeAll;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;-><init>()V

    .line 241
    new-instance v0, Lcom/showmax/app/ui/ActivitySeeAll$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/showmax/app/ui/ActivitySeeAll$1;-><init>(Lcom/showmax/app/ui/ActivitySeeAll;I)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/ActivitySeeAll;)Lcom/showmax/app/ui/fragment/FragmentSeeAll;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivitySeeAll;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mFragmentSeeAll:Lcom/showmax/app/ui/fragment/FragmentSeeAll;

    return-object v0
.end method

.method private getCategoryTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    sget-object v0, Lcom/showmax/app/ui/ActivitySeeAll$2;->$SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType:[I

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mTileType:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    invoke-virtual {v1}, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 276
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v0, v0, Lcom/showmax/lib/api/model/catalogue/Category;->title:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 270
    :pswitch_0
    const v0, 0x7f0d00bf

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivitySeeAll;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 272
    :pswitch_1
    const v0, 0x7f0d0097

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivitySeeAll;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 276
    :cond_0
    const-string v0, "-"

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySeeAll;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 202
    .local v0, "incoming":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "args.tile.type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    iput-object v1, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mTileType:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    .line 203
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "args.category"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Category;

    iput-object v1, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    .line 205
    if-eqz p1, :cond_0

    .line 209
    :cond_0
    return-void
.end method

.method private loadAssets()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 213
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mFragmentSeeAll:Lcom/showmax/app/ui/fragment/FragmentSeeAll;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivitySeeAll;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mFragmentSeeAll:Lcom/showmax/app/ui/fragment/FragmentSeeAll;

    invoke-virtual {v0}, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->showProgressbar()V

    .line 218
    :cond_0
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v2

    .line 219
    .local v2, "language":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentSection(Landroid/content/Context;)Lcom/showmax/lib/api/model/catalogue/Section;

    move-result-object v1

    .line 221
    .local v1, "section":Lcom/showmax/lib/api/model/catalogue/Section;
    sget-object v0, Lcom/showmax/app/ui/ActivitySeeAll$2;->$SwitchMap$com$showmax$app$ui$widget$AssetsTileView$TileType:[I

    iget-object v3, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mTileType:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    invoke-virtual {v3}, Lcom/showmax/app/ui/widget/AssetsTileView$TileType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 239
    :goto_0
    return-void

    .line 224
    :pswitch_0
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    iget-object v3, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/showmax/lib/api/io/CatalogueApi;->loadGrossingAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Ljava/lang/Integer;Lretrofit/Callback;)V

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    sget-object v3, Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;->PICK:Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;

    iget-object v5, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/showmax/lib/api/io/CatalogueApi;->loadPromotedAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/io/ApiConstants$PromotedAssetType;Ljava/lang/Integer;Lretrofit/Callback;)V

    goto :goto_0

    .line 231
    :pswitch_2
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v5

    iget-object v8, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    sget-object v9, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->MOVIE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    iget-object v12, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    move-object v6, v1

    move-object v7, v2

    move-object v10, v4

    move-object v11, v4

    invoke-virtual/range {v5 .. v12}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/String;Ljava/lang/Integer;Lretrofit/Callback;)V

    goto :goto_0

    .line 234
    :pswitch_3
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v5

    iget-object v8, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    sget-object v9, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->TV_SERIES:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    iget-object v12, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    move-object v6, v1

    move-object v7, v2

    move-object v10, v4

    move-object v11, v4

    invoke-virtual/range {v5 .. v12}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/String;Ljava/lang/Integer;Lretrofit/Callback;)V

    .line 236
    :pswitch_4
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    iget-object v3, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v7, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAssets(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/String;Ljava/lang/Integer;Lretrofit/Callback;)V

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static startSeeAllActivity(Landroid/content/Context;Lcom/showmax/app/ui/widget/AssetsTileView$TileType;Lcom/showmax/lib/api/model/catalogue/Category;)V
    .locals 2
    .param p0, "sourceContext"    # Landroid/content/Context;
    .param p1, "tileType"    # Lcom/showmax/app/ui/widget/AssetsTileView$TileType;
    .param p2, "category"    # Lcom/showmax/lib/api/model/catalogue/Category;

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/showmax/app/ui/ActivitySeeAll;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "args.tile.type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 183
    const-string v1, "args.category"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method


# virtual methods
.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    sget-object v0, Lcom/showmax/app/ui/ActivitySeeAll;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 65
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivitySeeAll;->setHasSlidingMenu(Z)V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/showmax/app/ui/ActivitySeeAll;->setHasToolbar(ZZ)V

    .line 69
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivitySeeAll;->setContentView(I)V

    .line 71
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivitySeeAll;->initData(Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySeeAll;->getCategoryTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivitySeeAll;->setActionBarTitle(Ljava/lang/String;)V

    .line 75
    if-eqz p1, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySeeAll;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/fragment/FragmentSeeAll;

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mFragmentSeeAll:Lcom/showmax/app/ui/fragment/FragmentSeeAll;

    .line 86
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mFragmentSeeAll:Lcom/showmax/app/ui/fragment/FragmentSeeAll;

    invoke-virtual {v0}, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->isInLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySeeAll;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b00ab

    iget-object v2, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mFragmentSeeAll:Lcom/showmax/app/ui/fragment/FragmentSeeAll;

    sget-object v3, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->TAG:Ljava/lang/String;

    .line 89
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 90
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySeeAll;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 92
    :cond_1
    return-void

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mFragmentSeeAll:Lcom/showmax/app/ui/fragment/FragmentSeeAll;

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->newInstance()Lcom/showmax/app/ui/fragment/FragmentSeeAll;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivitySeeAll;->mFragmentSeeAll:Lcom/showmax/app/ui/fragment/FragmentSeeAll;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    .line 111
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySeeAll;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 112
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v3, 0x7f0f0003

    invoke-virtual {v0, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 115
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getSortOption(Landroid/content/Context;)Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    move-result-object v2

    .line 117
    .local v2, "sortOption":Lcom/showmax/lib/api/utils/UserPrefs$SortOption;
    sget-object v3, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_ASC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    if-ne v2, v3, :cond_0

    .line 119
    const v3, 0x7f0b01d7

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 133
    .local v1, "menuItem":Landroid/view/MenuItem;
    :goto_0
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 134
    return v4

    .line 121
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    sget-object v3, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_DESC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    if-ne v2, v3, :cond_1

    .line 123
    const v3, 0x7f0b01d8

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .restart local v1    # "menuItem":Landroid/view/MenuItem;
    goto :goto_0

    .line 125
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    sget-object v3, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_OLDEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    if-ne v2, v3, :cond_2

    .line 127
    const v3, 0x7f0b01d6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .restart local v1    # "menuItem":Landroid/view/MenuItem;
    goto :goto_0

    .line 131
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_2
    const v3, 0x7f0b01d5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .restart local v1    # "menuItem":Landroid/view/MenuItem;
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 164
    :pswitch_0
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 145
    :pswitch_1
    sget-object v2, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_NEWEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-static {p0, v2}, Lcom/showmax/lib/api/utils/UserPrefs;->setSortOption(Landroid/content/Context;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 146
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 149
    :pswitch_2
    sget-object v2, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->DATE_OLDEST:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-static {p0, v2}, Lcom/showmax/lib/api/utils/UserPrefs;->setSortOption(Landroid/content/Context;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 150
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_2
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 153
    :pswitch_3
    sget-object v2, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_ASC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-static {p0, v2}, Lcom/showmax/lib/api/utils/UserPrefs;->setSortOption(Landroid/content/Context;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    .line 157
    :pswitch_4
    sget-object v2, Lcom/showmax/lib/api/utils/UserPrefs$SortOption;->ALPHABETIC_DESC:Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    invoke-static {p0, v2}, Lcom/showmax/lib/api/utils/UserPrefs;->setSortOption(Landroid/content/Context;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 158
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_4
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_4

    .line 161
    :pswitch_5
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySeeAll;->startSearchActivity()V

    move v1, v0

    .line 162
    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b01d3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onPostCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivitySeeAll;->loadAssets()V

    .line 99
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onResume()V

    .line 105
    return-void
.end method
