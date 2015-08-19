.class Lcom/showmax/app/ui/ActivityBaseDetail$5;
.super Lcom/showmax/lib/api/io/ApiCallback;
.source "ActivityBaseDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityBaseDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/showmax/lib/api/io/ApiCallback",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/showmax/lib/api/model/catalogue/Asset;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityBaseDetail;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityBaseDetail;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityBaseDetail;
    .param p2, "x0"    # I

    .prologue
    .line 495
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityBaseDetail$5;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    invoke-direct {p0, p2}, Lcom/showmax/lib/api/io/ApiCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public failure(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x0

    .line 508
    const-string v0, "[%s]::[mRecommendedCallback]::[failure]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBaseDetail$5;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    # invokes: Lcom/showmax/app/ui/ActivityBaseDetail;->getLogTag()Ljava/lang/String;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$000(Lcom/showmax/app/ui/ActivityBaseDetail;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail$5;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iput-object v4, v0, Lcom/showmax/app/ui/ActivityBaseDetail;->mRecommendedAssets:Ljava/util/ArrayList;

    .line 510
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail$5;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    invoke-virtual {v0, v4}, Lcom/showmax/app/ui/ActivityBaseDetail;->onRecommendedAssetsLoaded(Ljava/util/ArrayList;)V

    .line 511
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/ApiErrorEvent;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail$5;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    # getter for: Lcom/showmax/app/ui/ActivityBaseDetail;->mRecommendedCallback:Lcom/showmax/lib/api/io/ApiCallback;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$600(Lcom/showmax/app/ui/ActivityBaseDetail;)Lcom/showmax/lib/api/io/ApiCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/showmax/lib/api/io/ApiCallback;->getError()Lretrofit/RetrofitError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 512
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 495
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/ui/ActivityBaseDetail$5;->success(Ljava/util/ArrayList;I)V

    return-void
.end method

.method public success(Ljava/util/ArrayList;I)V
    .locals 4
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    const-string v0, "[%s]::[mRecommendedCallback]::[success]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBaseDetail$5;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    # invokes: Lcom/showmax/app/ui/ActivityBaseDetail;->getLogTag()Ljava/lang/String;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$000(Lcom/showmax/app/ui/ActivityBaseDetail;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail$5;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iput-object p1, v0, Lcom/showmax/app/ui/ActivityBaseDetail;->mRecommendedAssets:Ljava/util/ArrayList;

    .line 502
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail$5;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail$5;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iget-object v1, v1, Lcom/showmax/app/ui/ActivityBaseDetail;->mRecommendedAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivityBaseDetail;->onRecommendedAssetsLoaded(Ljava/util/ArrayList;)V

    .line 503
    return-void
.end method
