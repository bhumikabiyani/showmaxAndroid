.class Lcom/showmax/app/ui/ActivitySeeAll$1;
.super Lcom/showmax/lib/api/io/ApiCallback;
.source "ActivitySeeAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivitySeeAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/showmax/lib/api/io/ApiCallback",
        "<",
        "Lcom/showmax/lib/api/model/catalogue/AssetList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivitySeeAll;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivitySeeAll;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivitySeeAll;
    .param p2, "x0"    # I

    .prologue
    .line 242
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySeeAll$1;->this$0:Lcom/showmax/app/ui/ActivitySeeAll;

    invoke-direct {p0, p2}, Lcom/showmax/lib/api/io/ApiCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public failure(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 256
    const-string v0, "[%s]::[mAssetListCallback]::[failure]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivitySeeAll;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySeeAll$1;->this$0:Lcom/showmax/app/ui/ActivitySeeAll;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySeeAll$1;->this$0:Lcom/showmax/app/ui/ActivitySeeAll;

    # getter for: Lcom/showmax/app/ui/ActivitySeeAll;->mFragmentSeeAll:Lcom/showmax/app/ui/fragment/FragmentSeeAll;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivitySeeAll;->access$000(Lcom/showmax/app/ui/ActivitySeeAll;)Lcom/showmax/app/ui/fragment/FragmentSeeAll;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivitySeeAll;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySeeAll$1;->this$0:Lcom/showmax/app/ui/ActivitySeeAll;

    # getter for: Lcom/showmax/app/ui/ActivitySeeAll;->mFragmentSeeAll:Lcom/showmax/app/ui/fragment/FragmentSeeAll;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySeeAll;->access$000(Lcom/showmax/app/ui/ActivitySeeAll;)Lcom/showmax/app/ui/fragment/FragmentSeeAll;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/showmax/app/ui/ActivitySeeAll$1;->this$0:Lcom/showmax/app/ui/ActivitySeeAll;

    invoke-static {v2}, Lcom/showmax/lib/api/utils/UserPrefs;->getSortOption(Landroid/content/Context;)Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->showAssets(Ljava/util/ArrayList;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 261
    :cond_0
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/ApiErrorEvent;

    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySeeAll$1;->getError()Lretrofit/RetrofitError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method public success(Lcom/showmax/lib/api/model/catalogue/AssetList;I)V
    .locals 4
    .param p1, "data"    # Lcom/showmax/lib/api/model/catalogue/AssetList;
    .param p2, "status"    # I

    .prologue
    .line 246
    const-string v0, "[%s]::[mAssetListCallback]::[success]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivitySeeAll;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySeeAll$1;->this$0:Lcom/showmax/app/ui/ActivitySeeAll;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySeeAll$1;->this$0:Lcom/showmax/app/ui/ActivitySeeAll;

    # getter for: Lcom/showmax/app/ui/ActivitySeeAll;->mFragmentSeeAll:Lcom/showmax/app/ui/fragment/FragmentSeeAll;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivitySeeAll;->access$000(Lcom/showmax/app/ui/ActivitySeeAll;)Lcom/showmax/app/ui/fragment/FragmentSeeAll;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivitySeeAll;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySeeAll$1;->this$0:Lcom/showmax/app/ui/ActivitySeeAll;

    # getter for: Lcom/showmax/app/ui/ActivitySeeAll;->mFragmentSeeAll:Lcom/showmax/app/ui/fragment/FragmentSeeAll;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySeeAll;->access$000(Lcom/showmax/app/ui/ActivitySeeAll;)Lcom/showmax/app/ui/fragment/FragmentSeeAll;

    move-result-object v0

    iget-object v1, p1, Lcom/showmax/lib/api/model/catalogue/AssetList;->items:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivitySeeAll$1;->this$0:Lcom/showmax/app/ui/ActivitySeeAll;

    invoke-static {v2}, Lcom/showmax/lib/api/utils/UserPrefs;->getSortOption(Landroid/content/Context;)Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/showmax/app/ui/fragment/FragmentSeeAll;->showAssets(Ljava/util/ArrayList;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 251
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 242
    check-cast p1, Lcom/showmax/lib/api/model/catalogue/AssetList;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/ui/ActivitySeeAll$1;->success(Lcom/showmax/lib/api/model/catalogue/AssetList;I)V

    return-void
.end method
