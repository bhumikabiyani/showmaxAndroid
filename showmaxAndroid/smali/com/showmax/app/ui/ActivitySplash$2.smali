.class Lcom/showmax/app/ui/ActivitySplash$2;
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
        "Lcom/showmax/lib/api/model/AppPreflightResponseBody;",
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
    .line 481
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySplash$2;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    invoke-direct {p0}, Lcom/showmax/lib/api/io/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 509
    const-string v0, "[ActivitySplash]::[mAppPreflightCallback]::[failure]::[status: %s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/ApiErrorEvent;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivitySplash$2;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightCallback:Lcom/showmax/lib/api/io/ApiCallback;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivitySplash;->access$900(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/io/ApiCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/showmax/lib/api/io/ApiCallback;->getError()Lretrofit/RetrofitError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 511
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$2;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    const/16 v1, 0x3a

    # invokes: Lcom/showmax/app/ui/ActivitySplash;->showRetryDialog(I)V
    invoke-static {v0, v1}, Lcom/showmax/app/ui/ActivitySplash;->access$700(Lcom/showmax/app/ui/ActivitySplash;I)V

    .line 512
    return-void
.end method

.method public success(Lcom/showmax/lib/api/model/AppPreflightResponseBody;I)V
    .locals 4
    .param p1, "data"    # Lcom/showmax/lib/api/model/AppPreflightResponseBody;
    .param p2, "status"    # I

    .prologue
    .line 486
    const-string v0, "[ActivitySplash]::[mAppPreflightCallback]::[success]::[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$2;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # setter for: Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;
    invoke-static {v0, p1}, Lcom/showmax/app/ui/ActivitySplash;->access$302(Lcom/showmax/app/ui/ActivitySplash;Lcom/showmax/lib/api/model/AppPreflightResponseBody;)Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    .line 488
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$2;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySplash;->access$300(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$2;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySplash;->access$300(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$2;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySplash;->access$300(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->getBtntext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$2;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # invokes: Lcom/showmax/app/ui/ActivitySplash;->showVerifyAppResultDialog()V
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySplash;->access$800(Lcom/showmax/app/ui/ActivitySplash;)V

    .line 504
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$2;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySplash;->access$300(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$2;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySplash;->access$300(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->getRedirect()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$2;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySplash;->access$300(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->getRedirect()Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$2;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/showmax/app/ui/ActivitySplash$2;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivitySplash;->access$300(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->getRedirect()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    .line 497
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$2;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivitySplash;->finish()V

    goto :goto_0

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$2;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # invokes: Lcom/showmax/app/ui/ActivitySplash;->startInitTask()V
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySplash;->access$200(Lcom/showmax/app/ui/ActivitySplash;)V

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 481
    check-cast p1, Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/ui/ActivitySplash$2;->success(Lcom/showmax/lib/api/model/AppPreflightResponseBody;I)V

    return-void
.end method
