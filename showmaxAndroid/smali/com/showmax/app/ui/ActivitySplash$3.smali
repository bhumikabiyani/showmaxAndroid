.class Lcom/showmax/app/ui/ActivitySplash$3;
.super Lcom/showmax/lib/api/io/ApiCallback;
.source "ActivitySplash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivitySplash;
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
.field final synthetic this$0:Lcom/showmax/app/ui/ActivitySplash;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivitySplash;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivitySplash;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySplash$3;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    invoke-direct {p0}, Lcom/showmax/lib/api/io/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 535
    const-string v0, "[ActivitySplash]::[mDeepLinkCallback]::[failure]::[invalid deep link]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$3;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/showmax/app/ui/ActivitySplash;->startMainActivity(ZLcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;)V

    .line 537
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/ApiErrorEvent;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivitySplash$3;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mDeepLinkCallback:Lcom/showmax/lib/api/io/ApiCallback;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivitySplash;->access$600(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/io/ApiCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/showmax/lib/api/io/ApiCallback;->getError()Lretrofit/RetrofitError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 538
    return-void
.end method

.method public success(Lcom/showmax/lib/api/model/catalogue/Asset;I)V
    .locals 3
    .param p1, "data"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p2, "status"    # I

    .prologue
    const/4 v2, 0x1

    .line 520
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$3;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mDeeplinkAsset:Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySplash;->access$400(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$3;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mDeeplinkAsset:Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySplash;->access$400(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    move-result-object v0

    iput-object p1, v0, Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;->asset:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 523
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$3;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySplash$3;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mDeeplinkAsset:Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivitySplash;->access$400(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/showmax/app/ui/ActivitySplash;->startMainActivity(ZLcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;)V

    .line 530
    :goto_0
    return-void

    .line 527
    :cond_0
    const-string v0, "[ActivitySplash]::[mDeepLinkCallback]::[success]::[invalid deep link]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$3;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/showmax/app/ui/ActivitySplash;->startMainActivity(ZLcom/showmax/lib/api/utils/DeeplinkUtils$DeeplinkAsset;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 516
    check-cast p1, Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/ui/ActivitySplash$3;->success(Lcom/showmax/lib/api/model/catalogue/Asset;I)V

    return-void
.end method
