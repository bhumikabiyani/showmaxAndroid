.class Lcom/showmax/app/ui/ActivityBaseDetail$4;
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
        "Lcom/showmax/lib/api/model/catalogue/Asset;",
        ">;"
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
    .line 477
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityBaseDetail$4;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    invoke-direct {p0, p2}, Lcom/showmax/lib/api/io/ApiCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public failure(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 489
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/ApiErrorEvent;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail$4;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    # getter for: Lcom/showmax/app/ui/ActivityBaseDetail;->mAssetDetailCallback:Lcom/showmax/lib/api/io/ApiCallback;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$500(Lcom/showmax/app/ui/ActivityBaseDetail;)Lcom/showmax/lib/api/io/ApiCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/showmax/lib/api/io/ApiCallback;->getError()Lretrofit/RetrofitError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail$4;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivityBaseDetail;->onAssetDetailLoaded(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 491
    return-void
.end method

.method public success(Lcom/showmax/lib/api/model/catalogue/Asset;I)V
    .locals 4
    .param p1, "data"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p2, "status"    # I

    .prologue
    .line 481
    const-string v0, "[%s]::[mMovieDetailCallback]::[success]::[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBaseDetail$4;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    # invokes: Lcom/showmax/app/ui/ActivityBaseDetail;->getLogTag()Ljava/lang/String;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$000(Lcom/showmax/app/ui/ActivityBaseDetail;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail$4;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iput-object p1, v0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 483
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail$4;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail$4;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iget-object v1, v1, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivityBaseDetail;->onAssetDetailLoaded(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 484
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 477
    check-cast p1, Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/ui/ActivityBaseDetail$4;->success(Lcom/showmax/lib/api/model/catalogue/Asset;I)V

    return-void
.end method
