.class public Lcom/showmax/app/io/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/io/DataManager$CacheItem;,
        Lcom/showmax/app/io/DataManager$AdvertisementCallback;,
        Lcom/showmax/app/io/DataManager$CategoriesCallback;
    }
.end annotation


# static fields
.field private static final MAX_CACHE_AGE:J = 0x36ee80L

.field private static final MAX_RETRIES_COUNT:I = 0x3

.field private static final MINIMAL_DELAY:J = 0x64L

.field private static sInstance:Lcom/showmax/app/io/DataManager;


# instance fields
.field private mAdvertisementCallback:Lcom/showmax/app/io/DataManager$AdvertisementCallback;

.field private mAdvertisements:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            "Lcom/showmax/app/io/DataManager$CacheItem",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/AdvertisementList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mApp:Lcom/showmax/app/ShowMaxApp;

.field private mCategoriesCallback:Lcom/showmax/app/io/DataManager$CategoriesCallback;

.field private mMovieCategories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            "Lcom/showmax/app/io/DataManager$CacheItem",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mTvSeriesCategories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            "Lcom/showmax/app/io/DataManager$CacheItem",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/showmax/app/ShowMaxApp;)V
    .locals 1
    .param p1, "app"    # Lcom/showmax/app/ShowMaxApp;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/showmax/app/io/DataManager;->mApp:Lcom/showmax/app/ShowMaxApp;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/io/DataManager;->mAdvertisements:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/io/DataManager;->mMovieCategories:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/io/DataManager;->mTvSeriesCategories:Ljava/util/HashMap;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/io/DataManager;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/CategoryList;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/io/DataManager;
    .param p1, "x1"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "x2"    # Lcom/showmax/lib/api/model/catalogue/CategoryList;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/showmax/app/io/DataManager;->setMovieCategories(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/CategoryList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/showmax/app/io/DataManager;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/CategoryList;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/io/DataManager;
    .param p1, "x1"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "x2"    # Lcom/showmax/lib/api/model/catalogue/CategoryList;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/showmax/app/io/DataManager;->setTvSeriesCategories(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/CategoryList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/showmax/app/io/DataManager;Lcom/showmax/lib/api/model/catalogue/Section;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/io/DataManager;
    .param p1, "x1"    # Lcom/showmax/lib/api/model/catalogue/Section;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/showmax/app/io/DataManager;->sendCategoriesFetchedSuccessEvent(Lcom/showmax/lib/api/model/catalogue/Section;)V

    return-void
.end method

.method static synthetic access$300(Lcom/showmax/app/io/DataManager;ILretrofit/client/Response;Lretrofit/RetrofitError;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/io/DataManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lretrofit/client/Response;
    .param p3, "x3"    # Lretrofit/RetrofitError;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/showmax/app/io/DataManager;->sendCategoriesFetchedFailureEvent(ILretrofit/client/Response;Lretrofit/RetrofitError;)V

    return-void
.end method

.method static synthetic access$400(Lcom/showmax/app/io/DataManager;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/AdvertisementList;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/io/DataManager;
    .param p1, "x1"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "x2"    # Lcom/showmax/lib/api/model/catalogue/AdvertisementList;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/showmax/app/io/DataManager;->setAdvertisements(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/AdvertisementList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/showmax/app/io/DataManager;Lcom/showmax/lib/api/model/catalogue/Section;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/io/DataManager;
    .param p1, "x1"    # Lcom/showmax/lib/api/model/catalogue/Section;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/showmax/app/io/DataManager;->sendAdvertisementFetchedSuccessEvent(Lcom/showmax/lib/api/model/catalogue/Section;)V

    return-void
.end method

.method static synthetic access$600(Lcom/showmax/app/io/DataManager;ILretrofit/client/Response;Lretrofit/RetrofitError;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/io/DataManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lretrofit/client/Response;
    .param p3, "x3"    # Lretrofit/RetrofitError;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/showmax/app/io/DataManager;->sendAdvertisementFetchedFailureEvent(ILretrofit/client/Response;Lretrofit/RetrofitError;)V

    return-void
.end method

.method private getAdvertisements(Lcom/showmax/lib/api/model/catalogue/Section;)Lcom/showmax/lib/api/model/catalogue/AdvertisementList;
    .locals 2
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;

    .prologue
    .line 230
    iget-object v1, p0, Lcom/showmax/app/io/DataManager;->mAdvertisements:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/io/DataManager$CacheItem;

    .line 231
    .local v0, "advertisements":Lcom/showmax/app/io/DataManager$CacheItem;, "Lcom/showmax/app/io/DataManager$CacheItem<Lcom/showmax/lib/api/model/catalogue/AdvertisementList;>;"
    if-nez v0, :cond_0

    .line 233
    const/4 v1, 0x0

    .line 235
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/showmax/app/io/DataManager$CacheItem;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/AdvertisementList;

    goto :goto_0
.end method

.method public static getInstance()Lcom/showmax/app/io/DataManager;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/showmax/app/io/DataManager;->sInstance:Lcom/showmax/app/io/DataManager;

    if-nez v0, :cond_0

    .line 84
    const-string v0, "[DataManager]::[getInstance]::[sInstance is null]"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    :cond_0
    sget-object v0, Lcom/showmax/app/io/DataManager;->sInstance:Lcom/showmax/app/io/DataManager;

    return-object v0
.end method

.method private getMovieCategories(Lcom/showmax/lib/api/model/catalogue/Section;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v1, p0, Lcom/showmax/app/io/DataManager;->mMovieCategories:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/io/DataManager$CacheItem;

    .line 211
    .local v0, "movieCategories":Lcom/showmax/app/io/DataManager$CacheItem;, "Lcom/showmax/app/io/DataManager$CacheItem<Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;>;"
    if-nez v0, :cond_0

    .line 213
    const/4 v1, 0x0

    .line 215
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/showmax/app/io/DataManager$CacheItem;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private getTvSeriesCategories(Lcom/showmax/lib/api/model/catalogue/Section;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/showmax/lib/api/model/catalogue/Section;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v1, p0, Lcom/showmax/app/io/DataManager;->mTvSeriesCategories:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/io/DataManager$CacheItem;

    .line 221
    .local v0, "tvSeriesCategories":Lcom/showmax/app/io/DataManager$CacheItem;, "Lcom/showmax/app/io/DataManager$CacheItem<Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;>;"
    if-nez v0, :cond_0

    .line 223
    const/4 v1, 0x0

    .line 225
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/showmax/app/io/DataManager$CacheItem;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static initInstance(Lcom/showmax/app/ShowMaxApp;)V
    .locals 1
    .param p0, "app"    # Lcom/showmax/app/ShowMaxApp;

    .prologue
    .line 72
    const-string v0, "[DataManager]::[initInstance]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/showmax/app/io/DataManager;->sInstance:Lcom/showmax/app/io/DataManager;

    if-nez v0, :cond_0

    .line 75
    const-string v0, "[DataManager]::[initInstance]::[sInstance is null, create a new instance]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 76
    new-instance v0, Lcom/showmax/app/io/DataManager;

    invoke-direct {v0, p0}, Lcom/showmax/app/io/DataManager;-><init>(Lcom/showmax/app/ShowMaxApp;)V

    sput-object v0, Lcom/showmax/app/io/DataManager;->sInstance:Lcom/showmax/app/io/DataManager;

    .line 78
    :cond_0
    return-void
.end method

.method private sendAdvertisementFetchedFailureEvent(ILretrofit/client/Response;Lretrofit/RetrofitError;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "response"    # Lretrofit/client/Response;
    .param p3, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 260
    new-instance v0, Lcom/showmax/app/io/event/FetchAdvertisementsFinishedEvent;

    invoke-direct {v0}, Lcom/showmax/app/io/event/FetchAdvertisementsFinishedEvent;-><init>()V

    .line 261
    .local v0, "event":Lcom/showmax/app/io/event/FetchAdvertisementsFinishedEvent;
    invoke-virtual {v0, p1, p2, p3}, Lcom/showmax/app/io/event/FetchAdvertisementsFinishedEvent;->setFailure(ILretrofit/client/Response;Lretrofit/RetrofitError;)V

    .line 262
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;J)V

    .line 263
    return-void
.end method

.method private sendAdvertisementFetchedSuccessEvent(Lcom/showmax/lib/api/model/catalogue/Section;)V
    .locals 4
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;

    .prologue
    .line 254
    new-instance v0, Lcom/showmax/app/io/event/FetchAdvertisementsFinishedEvent;

    invoke-direct {p0, p1}, Lcom/showmax/app/io/DataManager;->getAdvertisements(Lcom/showmax/lib/api/model/catalogue/Section;)Lcom/showmax/lib/api/model/catalogue/AdvertisementList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/showmax/app/io/event/FetchAdvertisementsFinishedEvent;-><init>(Lcom/showmax/lib/api/model/catalogue/AdvertisementList;)V

    .line 255
    .local v0, "event":Lcom/showmax/app/io/event/FetchAdvertisementsFinishedEvent;
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;J)V

    .line 256
    return-void
.end method

.method private sendCategoriesFetchedFailureEvent(ILretrofit/client/Response;Lretrofit/RetrofitError;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "response"    # Lretrofit/client/Response;
    .param p3, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 247
    new-instance v0, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;

    invoke-direct {v0}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;-><init>()V

    .line 248
    .local v0, "event":Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;
    invoke-virtual {v0, p1, p2, p3}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;->setFailure(ILretrofit/client/Response;Lretrofit/RetrofitError;)V

    .line 249
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;J)V

    .line 250
    return-void
.end method

.method private sendCategoriesFetchedSuccessEvent(Lcom/showmax/lib/api/model/catalogue/Section;)V
    .locals 4
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;

    .prologue
    .line 241
    new-instance v0, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;

    invoke-direct {p0, p1}, Lcom/showmax/app/io/DataManager;->getMovieCategories(Lcom/showmax/lib/api/model/catalogue/Section;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/showmax/app/io/DataManager;->getTvSeriesCategories(Lcom/showmax/lib/api/model/catalogue/Section;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 242
    .local v0, "event":Lcom/showmax/app/io/event/FetchCategoriesFinishedEvent;
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;J)V

    .line 243
    return-void
.end method

.method private setAdvertisements(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/AdvertisementList;)V
    .locals 2
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "advertisements"    # Lcom/showmax/lib/api/model/catalogue/AdvertisementList;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/showmax/app/io/DataManager;->mAdvertisements:Ljava/util/HashMap;

    new-instance v1, Lcom/showmax/app/io/DataManager$CacheItem;

    invoke-direct {v1, p2}, Lcom/showmax/app/io/DataManager$CacheItem;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method

.method private setCategories(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/CategoryList;Z)V
    .locals 8
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "categories"    # Lcom/showmax/lib/api/model/catalogue/CategoryList;
    .param p3, "movieCategories"    # Z

    .prologue
    const/4 v7, 0x0

    .line 170
    iget-object v5, p2, Lcom/showmax/lib/api/model/catalogue/CategoryList;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 173
    .local v1, "categoriesCount":I
    if-lez v1, :cond_0

    .line 175
    iget-object v5, p2, Lcom/showmax/lib/api/model/catalogue/CategoryList;->items:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/showmax/lib/api/model/catalogue/Category;

    iget-object v4, v5, Lcom/showmax/lib/api/model/catalogue/Category;->childCategories:Ljava/util/ArrayList;

    .line 184
    .local v4, "currentCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    :goto_0
    iget-object v5, p0, Lcom/showmax/app/io/DataManager;->mApp:Lcom/showmax/app/ShowMaxApp;

    const v6, 0x7f0d0021

    invoke-virtual {v5, v6}, Lcom/showmax/app/ShowMaxApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, "categoryAllTitle":Ljava/lang/String;
    new-instance v2, Lcom/showmax/lib/api/model/catalogue/Category;

    const-string v5, "category.id.all.fake"

    invoke-direct {v2, v5, v3}, Lcom/showmax/lib/api/model/catalogue/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .local v2, "categoryAll":Lcom/showmax/lib/api/model/catalogue/Category;
    invoke-virtual {v4, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 189
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/showmax/app/io/DataManager;->mMovieCategories:Ljava/util/HashMap;

    .line 190
    .local v0, "cachedCategories":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/app/io/DataManager$CacheItem<Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;>;>;"
    :goto_1
    new-instance v5, Lcom/showmax/app/io/DataManager$CacheItem;

    invoke-direct {v5, v4}, Lcom/showmax/app/io/DataManager$CacheItem;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void

    .line 180
    .end local v0    # "cachedCategories":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/app/io/DataManager$CacheItem<Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;>;>;"
    .end local v2    # "categoryAll":Lcom/showmax/lib/api/model/catalogue/Category;
    .end local v3    # "categoryAllTitle":Ljava/lang/String;
    .end local v4    # "currentCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "currentCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;"
    goto :goto_0

    .line 189
    .restart local v2    # "categoryAll":Lcom/showmax/lib/api/model/catalogue/Category;
    .restart local v3    # "categoryAllTitle":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/showmax/app/io/DataManager;->mTvSeriesCategories:Ljava/util/HashMap;

    goto :goto_1
.end method

.method private setMovieCategories(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/CategoryList;)V
    .locals 1
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "categories"    # Lcom/showmax/lib/api/model/catalogue/CategoryList;

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/showmax/app/io/DataManager;->setCategories(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/CategoryList;Z)V

    .line 196
    return-void
.end method

.method private setTvSeriesCategories(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/CategoryList;)V
    .locals 1
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "categories"    # Lcom/showmax/lib/api/model/catalogue/CategoryList;

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/showmax/app/io/DataManager;->setCategories(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/CategoryList;Z)V

    .line 201
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/showmax/app/io/DataManager;->mAdvertisements:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 157
    iget-object v0, p0, Lcom/showmax/app/io/DataManager;->mMovieCategories:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 158
    iget-object v0, p0, Lcom/showmax/app/io/DataManager;->mTvSeriesCategories:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 159
    return-void
.end method

.method public fetchAdvertisements(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Z)V
    .locals 4
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "appLanguage"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .param p3, "forceLoad"    # Z

    .prologue
    .line 132
    const-string v1, "[DataManager]::[fetchCategories]"

    invoke-static {v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 133
    if-eqz p3, :cond_0

    .line 135
    new-instance v1, Lcom/showmax/app/io/DataManager$AdvertisementCallback;

    invoke-direct {v1, p0, p1, p2}, Lcom/showmax/app/io/DataManager$AdvertisementCallback;-><init>(Lcom/showmax/app/io/DataManager;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)V

    iput-object v1, p0, Lcom/showmax/app/io/DataManager;->mAdvertisementCallback:Lcom/showmax/app/io/DataManager$AdvertisementCallback;

    .line 136
    iget-object v1, p0, Lcom/showmax/app/io/DataManager;->mAdvertisementCallback:Lcom/showmax/app/io/DataManager$AdvertisementCallback;

    invoke-virtual {v1}, Lcom/showmax/app/io/DataManager$AdvertisementCallback;->start()V

    .line 152
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/showmax/app/io/DataManager;->mAdvertisements:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/io/DataManager$CacheItem;

    .line 141
    .local v0, "cachedAdvertisements":Lcom/showmax/app/io/DataManager$CacheItem;, "Lcom/showmax/app/io/DataManager$CacheItem<Lcom/showmax/lib/api/model/catalogue/AdvertisementList;>;"
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/showmax/app/io/DataManager$CacheItem;->isValid(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    const-string v1, "[DataManager]::[fetchAdvertisements]::[found in cache]"

    invoke-static {v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/showmax/app/io/DataManager;->sendAdvertisementFetchedSuccessEvent(Lcom/showmax/lib/api/model/catalogue/Section;)V

    goto :goto_0

    .line 147
    :cond_1
    const-string v1, "[DataManager]::[fetchAdvertisements]::[not found in cache]"

    invoke-static {v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 148
    new-instance v1, Lcom/showmax/app/io/DataManager$AdvertisementCallback;

    invoke-direct {v1, p0, p1, p2}, Lcom/showmax/app/io/DataManager$AdvertisementCallback;-><init>(Lcom/showmax/app/io/DataManager;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)V

    iput-object v1, p0, Lcom/showmax/app/io/DataManager;->mAdvertisementCallback:Lcom/showmax/app/io/DataManager$AdvertisementCallback;

    .line 149
    iget-object v1, p0, Lcom/showmax/app/io/DataManager;->mAdvertisementCallback:Lcom/showmax/app/io/DataManager$AdvertisementCallback;

    invoke-virtual {v1}, Lcom/showmax/app/io/DataManager$AdvertisementCallback;->start()V

    goto :goto_0
.end method

.method public fetchCategories(Lcom/showmax/lib/api/model/catalogue/Section;Z)V
    .locals 4
    .param p1, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p2, "forceLoad"    # Z

    .prologue
    .line 108
    const-string v1, "[DataManager]::[fetchCategories]"

    invoke-static {v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 109
    if-eqz p2, :cond_0

    .line 111
    new-instance v1, Lcom/showmax/app/io/DataManager$CategoriesCallback;

    invoke-direct {v1, p0, p1}, Lcom/showmax/app/io/DataManager$CategoriesCallback;-><init>(Lcom/showmax/app/io/DataManager;Lcom/showmax/lib/api/model/catalogue/Section;)V

    iput-object v1, p0, Lcom/showmax/app/io/DataManager;->mCategoriesCallback:Lcom/showmax/app/io/DataManager$CategoriesCallback;

    .line 112
    iget-object v1, p0, Lcom/showmax/app/io/DataManager;->mCategoriesCallback:Lcom/showmax/app/io/DataManager$CategoriesCallback;

    invoke-virtual {v1}, Lcom/showmax/app/io/DataManager$CategoriesCallback;->start()V

    .line 128
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/showmax/app/io/DataManager;->mMovieCategories:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/io/DataManager$CacheItem;

    .line 117
    .local v0, "cachedMovieCategories":Lcom/showmax/app/io/DataManager$CacheItem;, "Lcom/showmax/app/io/DataManager$CacheItem<Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Category;>;>;"
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/showmax/app/io/DataManager$CacheItem;->isValid(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const-string v1, "[DataManager]::[fetchCategories]::[found in cache]"

    invoke-static {v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 120
    invoke-direct {p0, p1}, Lcom/showmax/app/io/DataManager;->sendCategoriesFetchedSuccessEvent(Lcom/showmax/lib/api/model/catalogue/Section;)V

    goto :goto_0

    .line 123
    :cond_1
    const-string v1, "[DataManager]::[fetchCategories]::[not found in cache]"

    invoke-static {v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 124
    new-instance v1, Lcom/showmax/app/io/DataManager$CategoriesCallback;

    invoke-direct {v1, p0, p1}, Lcom/showmax/app/io/DataManager$CategoriesCallback;-><init>(Lcom/showmax/app/io/DataManager;Lcom/showmax/lib/api/model/catalogue/Section;)V

    iput-object v1, p0, Lcom/showmax/app/io/DataManager;->mCategoriesCallback:Lcom/showmax/app/io/DataManager$CategoriesCallback;

    .line 125
    iget-object v1, p0, Lcom/showmax/app/io/DataManager;->mCategoriesCallback:Lcom/showmax/app/io/DataManager$CategoriesCallback;

    invoke-virtual {v1}, Lcom/showmax/app/io/DataManager$CategoriesCallback;->start()V

    goto :goto_0
.end method
