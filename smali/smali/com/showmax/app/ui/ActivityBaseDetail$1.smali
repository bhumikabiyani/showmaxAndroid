.class Lcom/showmax/app/ui/ActivityBaseDetail$1;
.super Lcom/showmax/lib/api/io/ApiCallback;
.source "ActivityBaseDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/showmax/app/ui/ActivityBaseDetail;->preverifyAsset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/showmax/lib/api/io/ApiCallback",
        "<",
        "Lretrofit/client/Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityBaseDetail;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityBaseDetail;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityBaseDetail;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityBaseDetail$1;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    invoke-direct {p0, p2}, Lcom/showmax/lib/api/io/ApiCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public failure(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 339
    const-string v0, "[%s]::[mVerifyPlaybackCallback]::[failure]::[status: %d]::[canceled: %b]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBaseDetail$1;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    # invokes: Lcom/showmax/app/ui/ActivityBaseDetail;->getLogTag()Ljava/lang/String;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$000(Lcom/showmax/app/ui/ActivityBaseDetail;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 340
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail$1;->isCanceled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 339
    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail$1;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail$1;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityBaseDetail;->hideProgress()V

    .line 344
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail$1;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail$1;->getError()Lretrofit/RetrofitError;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail$1;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iget-object v2, v2, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    # invokes: Lcom/showmax/app/ui/ActivityBaseDetail;->showPreflightCheckErrorDialog(Lretrofit/RetrofitError;Lcom/showmax/lib/api/model/catalogue/Asset;)V
    invoke-static {v0, v1, v2}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$300(Lcom/showmax/app/ui/ActivityBaseDetail;Lretrofit/RetrofitError;Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 346
    :cond_0
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/ApiErrorEvent;

    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail$1;->getError()Lretrofit/RetrofitError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail$1;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    const/4 v1, 0x0

    # setter for: Lcom/showmax/app/ui/ActivityBaseDetail;->mVerifyPlaybackCallback:Lcom/showmax/lib/api/io/ApiCallback;
    invoke-static {v0, v1}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$202(Lcom/showmax/app/ui/ActivityBaseDetail;Lcom/showmax/lib/api/io/ApiCallback;)Lcom/showmax/lib/api/io/ApiCallback;

    .line 348
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 312
    check-cast p1, Lretrofit/client/Response;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/ui/ActivityBaseDetail$1;->success(Lretrofit/client/Response;I)V

    return-void
.end method

.method public success(Lretrofit/client/Response;I)V
    .locals 7
    .param p1, "data"    # Lretrofit/client/Response;
    .param p2, "status"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 316
    const-string v1, "[%s]::[mVerifyPlaybackCallback]::[success]::[status: %d]::[canceled: %b]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBaseDetail$1;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    # invokes: Lcom/showmax/app/ui/ActivityBaseDetail;->getLogTag()Ljava/lang/String;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$000(Lcom/showmax/app/ui/ActivityBaseDetail;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    .line 317
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail$1;->isCanceled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 316
    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail$1;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail$1;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iget-object v1, v1, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v1}, Lcom/showmax/lib/api/model/catalogue/Asset;->getMainVideoAudioLanguages()Ljava/util/ArrayList;

    move-result-object v0

    .line 321
    .local v0, "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_1

    .line 324
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail$1;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail$1;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    iget-object v2, v2, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Video$Type;->MAIN:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    invoke-virtual {v1, v2, v3}, Lcom/showmax/app/ui/ActivityBaseDetail;->showAudioLanguageDialog(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/lib/api/model/catalogue/Video$Type;)V

    .line 333
    .end local v0    # "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail$1;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    const/4 v2, 0x0

    # setter for: Lcom/showmax/app/ui/ActivityBaseDetail;->mVerifyPlaybackCallback:Lcom/showmax/lib/api/io/ApiCallback;
    invoke-static {v1, v2}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$202(Lcom/showmax/app/ui/ActivityBaseDetail;Lcom/showmax/lib/api/io/ApiCallback;)Lcom/showmax/lib/api/io/ApiCallback;

    .line 334
    return-void

    .line 326
    .restart local v0    # "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 329
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail$1;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Language;

    # setter for: Lcom/showmax/app/ui/ActivityBaseDetail;->mSelectedAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;
    invoke-static {v2, v1}, Lcom/showmax/app/ui/ActivityBaseDetail;->access$102(Lcom/showmax/app/ui/ActivityBaseDetail;Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Language;

    .line 330
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail$1;->this$0:Lcom/showmax/app/ui/ActivityBaseDetail;

    invoke-virtual {v1}, Lcom/showmax/app/ui/ActivityBaseDetail;->syncUserListsForPlayback()V

    goto :goto_0
.end method
