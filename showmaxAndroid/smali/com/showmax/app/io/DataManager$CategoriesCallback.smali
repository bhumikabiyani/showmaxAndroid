.class Lcom/showmax/app/io/DataManager$CategoriesCallback;
.super Lcom/showmax/lib/api/io/ApiCallback;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/io/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoriesCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/showmax/lib/api/io/ApiCallback",
        "<",
        "Lcom/showmax/lib/api/model/catalogue/CategoryList;",
        ">;"
    }
.end annotation


# instance fields
.field private mMovieCategoriesLoaded:Z

.field private mSection:Lcom/showmax/lib/api/model/catalogue/Section;

.field final synthetic this$0:Lcom/showmax/app/io/DataManager;


# direct methods
.method public constructor <init>(Lcom/showmax/app/io/DataManager;Lcom/showmax/lib/api/model/catalogue/Section;)V
    .locals 1
    .param p2, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/showmax/app/io/DataManager$CategoriesCallback;->this$0:Lcom/showmax/app/io/DataManager;

    .line 280
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/showmax/lib/api/io/ApiCallback;-><init>(I)V

    .line 281
    iput-object p2, p0, Lcom/showmax/app/io/DataManager$CategoriesCallback;->mSection:Lcom/showmax/lib/api/model/catalogue/Section;

    .line 282
    return-void
.end method

.method private fetchMovieCategories()V
    .locals 4

    .prologue
    .line 291
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/io/DataManager$CategoriesCallback;->mSection:Lcom/showmax/lib/api/model/catalogue/Section;

    sget-object v2, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ENG:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    sget-object v3, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;->MOVIES:Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/showmax/lib/api/io/CatalogueApi;->loadCategories(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/io/ApiConstants$CategoryType;Lretrofit/Callback;)V

    .line 292
    return-void
.end method

.method private fetchTvSeriesCategories()V
    .locals 4

    .prologue
    .line 296
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/io/DataManager$CategoriesCallback;->mSection:Lcom/showmax/lib/api/model/catalogue/Section;

    sget-object v2, Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;->ENG:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    sget-object v3, Lcom/showmax/lib/api/io/ApiConstants$CategoryType;->TV_SERIES:Lcom/showmax/lib/api/io/ApiConstants$CategoryType;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/showmax/lib/api/io/CatalogueApi;->loadCategories(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/io/ApiConstants$CategoryType;Lretrofit/Callback;)V

    .line 297
    return-void
.end method


# virtual methods
.method public failure(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 331
    const-string v0, "[DataManager]::[CategoriesCallback]::[failure]::[%d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/ApiErrorEvent;

    invoke-virtual {p0}, Lcom/showmax/app/io/DataManager$CategoriesCallback;->getError()Lretrofit/RetrofitError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/showmax/app/io/DataManager$CategoriesCallback;->this$0:Lcom/showmax/app/io/DataManager;

    invoke-virtual {p0}, Lcom/showmax/app/io/DataManager$CategoriesCallback;->getResponse()Lretrofit/client/Response;

    move-result-object v1

    invoke-virtual {p0}, Lcom/showmax/app/io/DataManager$CategoriesCallback;->getError()Lretrofit/RetrofitError;

    move-result-object v2

    # invokes: Lcom/showmax/app/io/DataManager;->sendCategoriesFetchedFailureEvent(ILretrofit/client/Response;Lretrofit/RetrofitError;)V
    invoke-static {v0, p1, v1, v2}, Lcom/showmax/app/io/DataManager;->access$300(Lcom/showmax/app/io/DataManager;ILretrofit/client/Response;Lretrofit/RetrofitError;)V

    .line 335
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/showmax/app/io/DataManager$CategoriesCallback;->mMovieCategoriesLoaded:Z

    if-eqz v0, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/showmax/app/io/DataManager$CategoriesCallback;->fetchTvSeriesCategories()V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/showmax/app/io/DataManager$CategoriesCallback;->fetchMovieCategories()V

    goto :goto_0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/showmax/app/io/DataManager$CategoriesCallback;->fetchMovieCategories()V

    .line 287
    return-void
.end method

.method public success(Lcom/showmax/lib/api/model/catalogue/CategoryList;I)V
    .locals 2
    .param p1, "data"    # Lcom/showmax/lib/api/model/catalogue/CategoryList;
    .param p2, "status"    # I

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/showmax/app/io/DataManager$CategoriesCallback;->mMovieCategoriesLoaded:Z

    if-nez v0, :cond_0

    .line 305
    const-string v0, "[DataManager]::[CategoriesCallback]::[success]::[movie categories fetched]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/showmax/app/io/DataManager$CategoriesCallback;->mMovieCategoriesLoaded:Z

    .line 310
    iget-object v0, p0, Lcom/showmax/app/io/DataManager$CategoriesCallback;->this$0:Lcom/showmax/app/io/DataManager;

    iget-object v1, p0, Lcom/showmax/app/io/DataManager$CategoriesCallback;->mSection:Lcom/showmax/lib/api/model/catalogue/Section;

    # invokes: Lcom/showmax/app/io/DataManager;->setMovieCategories(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/CategoryList;)V
    invoke-static {v0, v1, p1}, Lcom/showmax/app/io/DataManager;->access$000(Lcom/showmax/app/io/DataManager;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/CategoryList;)V

    .line 313
    invoke-direct {p0}, Lcom/showmax/app/io/DataManager$CategoriesCallback;->fetchTvSeriesCategories()V

    .line 326
    :goto_0
    return-void

    .line 317
    :cond_0
    const-string v0, "[DataManager]::[CategoriesCallback]::[tv series categories fetched]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/showmax/app/io/DataManager$CategoriesCallback;->this$0:Lcom/showmax/app/io/DataManager;

    iget-object v1, p0, Lcom/showmax/app/io/DataManager$CategoriesCallback;->mSection:Lcom/showmax/lib/api/model/catalogue/Section;

    # invokes: Lcom/showmax/app/io/DataManager;->setTvSeriesCategories(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/CategoryList;)V
    invoke-static {v0, v1, p1}, Lcom/showmax/app/io/DataManager;->access$100(Lcom/showmax/app/io/DataManager;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/CategoryList;)V

    .line 323
    iget-object v0, p0, Lcom/showmax/app/io/DataManager$CategoriesCallback;->this$0:Lcom/showmax/app/io/DataManager;

    iget-object v1, p0, Lcom/showmax/app/io/DataManager$CategoriesCallback;->mSection:Lcom/showmax/lib/api/model/catalogue/Section;

    # invokes: Lcom/showmax/app/io/DataManager;->sendCategoriesFetchedSuccessEvent(Lcom/showmax/lib/api/model/catalogue/Section;)V
    invoke-static {v0, v1}, Lcom/showmax/app/io/DataManager;->access$200(Lcom/showmax/app/io/DataManager;Lcom/showmax/lib/api/model/catalogue/Section;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 271
    check-cast p1, Lcom/showmax/lib/api/model/catalogue/CategoryList;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/io/DataManager$CategoriesCallback;->success(Lcom/showmax/lib/api/model/catalogue/CategoryList;I)V

    return-void
.end method
