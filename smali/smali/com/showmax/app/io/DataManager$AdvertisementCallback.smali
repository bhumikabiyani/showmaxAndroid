.class Lcom/showmax/app/io/DataManager$AdvertisementCallback;
.super Lcom/showmax/lib/api/io/ApiCallback;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/io/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdvertisementCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/showmax/lib/api/io/ApiCallback",
        "<",
        "Lcom/showmax/lib/api/model/catalogue/AdvertisementList;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppLanguage:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

.field private mSection:Lcom/showmax/lib/api/model/catalogue/Section;

.field final synthetic this$0:Lcom/showmax/app/io/DataManager;


# direct methods
.method public constructor <init>(Lcom/showmax/app/io/DataManager;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)V
    .locals 1
    .param p2, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p3, "language"    # Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/showmax/app/io/DataManager$AdvertisementCallback;->this$0:Lcom/showmax/app/io/DataManager;

    .line 357
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/showmax/lib/api/io/ApiCallback;-><init>(I)V

    .line 358
    iput-object p2, p0, Lcom/showmax/app/io/DataManager$AdvertisementCallback;->mSection:Lcom/showmax/lib/api/model/catalogue/Section;

    .line 359
    iput-object p3, p0, Lcom/showmax/app/io/DataManager$AdvertisementCallback;->mAppLanguage:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    .line 360
    return-void
.end method

.method private fetchAdvertisements()V
    .locals 3

    .prologue
    .line 369
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/io/DataManager$AdvertisementCallback;->mSection:Lcom/showmax/lib/api/model/catalogue/Section;

    iget-object v2, p0, Lcom/showmax/app/io/DataManager$AdvertisementCallback;->mAppLanguage:Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    invoke-virtual {v0, v1, v2, p0}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAdvertisements(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V

    .line 370
    return-void
.end method


# virtual methods
.method public failure(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 385
    const-string v0, "[DataManager]::[AdvertisementCallback]::[failure]::[%d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/ApiErrorEvent;

    invoke-virtual {p0}, Lcom/showmax/app/io/DataManager$AdvertisementCallback;->getError()Lretrofit/RetrofitError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lcom/showmax/app/io/DataManager$AdvertisementCallback;->this$0:Lcom/showmax/app/io/DataManager;

    invoke-virtual {p0}, Lcom/showmax/app/io/DataManager$AdvertisementCallback;->getResponse()Lretrofit/client/Response;

    move-result-object v1

    invoke-virtual {p0}, Lcom/showmax/app/io/DataManager$AdvertisementCallback;->getError()Lretrofit/RetrofitError;

    move-result-object v2

    # invokes: Lcom/showmax/app/io/DataManager;->sendAdvertisementFetchedFailureEvent(ILretrofit/client/Response;Lretrofit/RetrofitError;)V
    invoke-static {v0, p1, v1, v2}, Lcom/showmax/app/io/DataManager;->access$600(Lcom/showmax/app/io/DataManager;ILretrofit/client/Response;Lretrofit/RetrofitError;)V

    .line 389
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/showmax/app/io/DataManager$AdvertisementCallback;->fetchAdvertisements()V

    .line 395
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/showmax/app/io/DataManager$AdvertisementCallback;->fetchAdvertisements()V

    .line 365
    return-void
.end method

.method public success(Lcom/showmax/lib/api/model/catalogue/AdvertisementList;I)V
    .locals 2
    .param p1, "data"    # Lcom/showmax/lib/api/model/catalogue/AdvertisementList;
    .param p2, "status"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/showmax/app/io/DataManager$AdvertisementCallback;->this$0:Lcom/showmax/app/io/DataManager;

    iget-object v1, p0, Lcom/showmax/app/io/DataManager$AdvertisementCallback;->mSection:Lcom/showmax/lib/api/model/catalogue/Section;

    # invokes: Lcom/showmax/app/io/DataManager;->setAdvertisements(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/AdvertisementList;)V
    invoke-static {v0, v1, p1}, Lcom/showmax/app/io/DataManager;->access$400(Lcom/showmax/app/io/DataManager;Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/AdvertisementList;)V

    .line 379
    iget-object v0, p0, Lcom/showmax/app/io/DataManager$AdvertisementCallback;->this$0:Lcom/showmax/app/io/DataManager;

    iget-object v1, p0, Lcom/showmax/app/io/DataManager$AdvertisementCallback;->mSection:Lcom/showmax/lib/api/model/catalogue/Section;

    # invokes: Lcom/showmax/app/io/DataManager;->sendAdvertisementFetchedSuccessEvent(Lcom/showmax/lib/api/model/catalogue/Section;)V
    invoke-static {v0, v1}, Lcom/showmax/app/io/DataManager;->access$500(Lcom/showmax/app/io/DataManager;Lcom/showmax/lib/api/model/catalogue/Section;)V

    .line 380
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 350
    check-cast p1, Lcom/showmax/lib/api/model/catalogue/AdvertisementList;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/io/DataManager$AdvertisementCallback;->success(Lcom/showmax/lib/api/model/catalogue/AdvertisementList;I)V

    return-void
.end method
