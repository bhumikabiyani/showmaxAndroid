.class Lcom/showmax/app/ui/fragment/FragmentAssetGrid$1;
.super Lcom/showmax/lib/api/io/ApiCallback;
.source "FragmentAssetGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/fragment/FragmentAssetGrid;
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
.field final synthetic this$0:Lcom/showmax/app/ui/fragment/FragmentAssetGrid;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/fragment/FragmentAssetGrid;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/fragment/FragmentAssetGrid;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentAssetGrid;

    invoke-direct {p0}, Lcom/showmax/lib/api/io/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 266
    const-string v0, "[%s]::[mAssetListCallback]::[failure]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentAssetGrid;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentAssetGrid;

    invoke-virtual {v2}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/showmax/lib/api/utils/UserPrefs;->getSortOption(Landroid/content/Context;)Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->showAssets(Ljava/util/ArrayList;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 268
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/ApiErrorEvent;

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid$1;->getError()Lretrofit/RetrofitError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public success(Lcom/showmax/lib/api/model/catalogue/AssetList;I)V
    .locals 4
    .param p1, "data"    # Lcom/showmax/lib/api/model/catalogue/AssetList;
    .param p2, "status"    # I

    .prologue
    .line 259
    const-string v0, "[%s]::[mAssetListCallback]::[success]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentAssetGrid;

    iget-object v1, p1, Lcom/showmax/lib/api/model/catalogue/AssetList;->items:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentAssetGrid$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentAssetGrid;

    invoke-virtual {v2}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/showmax/lib/api/utils/UserPrefs;->getSortOption(Landroid/content/Context;)Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid;->showAssets(Ljava/util/ArrayList;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 261
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 255
    check-cast p1, Lcom/showmax/lib/api/model/catalogue/AssetList;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/ui/fragment/FragmentAssetGrid$1;->success(Lcom/showmax/lib/api/model/catalogue/AssetList;I)V

    return-void
.end method
