.class Lcom/showmax/app/ui/ActivityAssetDetail$2;
.super Lcom/showmax/lib/api/io/ApiCallback;
.source "ActivityAssetDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityAssetDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/showmax/lib/api/io/ApiCallback",
        "<",
        "Lcom/showmax/lib/api/model/billing/Transaction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityAssetDetail;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityAssetDetail;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityAssetDetail;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityAssetDetail$2;->this$0:Lcom/showmax/app/ui/ActivityAssetDetail;

    invoke-direct {p0}, Lcom/showmax/lib/api/io/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail$2;->this$0:Lcom/showmax/app/ui/ActivityAssetDetail;

    # invokes: Lcom/showmax/app/ui/ActivityAssetDetail;->loadAssetPrice()V
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityAssetDetail;->access$300(Lcom/showmax/app/ui/ActivityAssetDetail;)V

    .line 337
    const-string v0, "[%s]::[mTransactionCallback]::[failure]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivityAssetDetail;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/ApiErrorEvent;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityAssetDetail$2;->this$0:Lcom/showmax/app/ui/ActivityAssetDetail;

    # getter for: Lcom/showmax/app/ui/ActivityAssetDetail;->mTransactionCallback:Lcom/showmax/lib/api/io/ApiCallback;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityAssetDetail;->access$400(Lcom/showmax/app/ui/ActivityAssetDetail;)Lcom/showmax/lib/api/io/ApiCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/showmax/lib/api/io/ApiCallback;->getError()Lretrofit/RetrofitError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method public success(Lcom/showmax/lib/api/model/billing/Transaction;I)V
    .locals 4
    .param p1, "data"    # Lcom/showmax/lib/api/model/billing/Transaction;
    .param p2, "status"    # I

    .prologue
    .line 326
    const-string v0, "[%s]::[mTransactionCallback]::[success]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivityAssetDetail;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail$2;->this$0:Lcom/showmax/app/ui/ActivityAssetDetail;

    # invokes: Lcom/showmax/app/ui/ActivityAssetDetail;->isFragmentVisible()Z
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityAssetDetail;->access$000(Lcom/showmax/app/ui/ActivityAssetDetail;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityAssetDetail$2;->this$0:Lcom/showmax/app/ui/ActivityAssetDetail;

    # getter for: Lcom/showmax/app/ui/ActivityAssetDetail;->mFragmentMovieDetail:Lcom/showmax/app/ui/fragment/FragmentMovieDetail;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityAssetDetail;->access$100(Lcom/showmax/app/ui/ActivityAssetDetail;)Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    move-result-object v0

    iget v1, p1, Lcom/showmax/lib/api/model/billing/Transaction;->timeRemaining:I

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->showRemainingButton(I)V

    .line 331
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 321
    check-cast p1, Lcom/showmax/lib/api/model/billing/Transaction;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/ui/ActivityAssetDetail$2;->success(Lcom/showmax/lib/api/model/billing/Transaction;I)V

    return-void
.end method
