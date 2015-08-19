.class Lcom/showmax/app/ui/ActivityMyFlix$3;
.super Lcom/showmax/lib/api/io/ApiCallback;
.source "ActivityMyFlix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityMyFlix;
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
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityMyFlix;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityMyFlix;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityMyFlix;
    .param p2, "x0"    # I

    .prologue
    .line 267
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityMyFlix$3;->this$0:Lcom/showmax/app/ui/ActivityMyFlix;

    invoke-direct {p0, p2}, Lcom/showmax/lib/api/io/ApiCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public failure(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    const/4 v5, 0x0

    .line 284
    const-string v1, "[%s]::[mBookmarksCallback]::[failure]::[status: %d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/showmax/app/ui/ActivityMyFlix;->TAG:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMyFlix$3;->this$0:Lcom/showmax/app/ui/ActivityMyFlix;

    # getter for: Lcom/showmax/app/ui/ActivityMyFlix;->mMyFlixPagerAdapter:Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityMyFlix;->access$200(Lcom/showmax/app/ui/ActivityMyFlix;)Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->getFragmentBookmarks()Lcom/showmax/app/ui/fragment/FragmentMyFlixList;

    move-result-object v0

    .line 287
    .local v0, "bookmarksFragment":Lcom/showmax/app/ui/fragment/FragmentMyFlixList;
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMyFlix$3;->this$0:Lcom/showmax/app/ui/ActivityMyFlix;

    invoke-virtual {v1, v0}, Lcom/showmax/app/ui/ActivityMyFlix;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {v0, v5, v5}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->showAssets(Ljava/util/ArrayList;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 291
    :cond_0
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/showmax/app/io/event/ApiErrorEvent;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityMyFlix$3;->this$0:Lcom/showmax/app/ui/ActivityMyFlix;

    # getter for: Lcom/showmax/app/ui/ActivityMyFlix;->mBookmarksCallback:Lcom/showmax/lib/api/io/ApiCallback;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityMyFlix;->access$400(Lcom/showmax/app/ui/ActivityMyFlix;)Lcom/showmax/lib/api/io/ApiCallback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/showmax/lib/api/io/ApiCallback;->getError()Lretrofit/RetrofitError;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v1, v2}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 292
    return-void
.end method

.method public success(Lcom/showmax/lib/api/model/catalogue/AssetList;I)V
    .locals 5
    .param p1, "data"    # Lcom/showmax/lib/api/model/catalogue/AssetList;
    .param p2, "status"    # I

    .prologue
    .line 271
    const-string v1, "[%s]::[mBookmarksCallback]::[success]::[count: %d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/showmax/app/ui/ActivityMyFlix;->TAG:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Lcom/showmax/lib/api/model/catalogue/AssetList;->count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMyFlix$3;->this$0:Lcom/showmax/app/ui/ActivityMyFlix;

    # getter for: Lcom/showmax/app/ui/ActivityMyFlix;->mUserlistAssets:Ljava/util/Map;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityMyFlix;->access$100(Lcom/showmax/app/ui/ActivityMyFlix;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;->BOOKMARKS:Lcom/showmax/lib/api/model/user/userlist/v2/Userlist$UserlistType;

    iget-object v3, p1, Lcom/showmax/lib/api/model/catalogue/AssetList;->items:Ljava/util/ArrayList;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMyFlix$3;->this$0:Lcom/showmax/app/ui/ActivityMyFlix;

    # getter for: Lcom/showmax/app/ui/ActivityMyFlix;->mMyFlixPagerAdapter:Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityMyFlix;->access$200(Lcom/showmax/app/ui/ActivityMyFlix;)Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/showmax/app/ui/ActivityMyFlix$MyFlixPagerAdapter;->getFragmentBookmarks()Lcom/showmax/app/ui/fragment/FragmentMyFlixList;

    move-result-object v0

    .line 275
    .local v0, "bookmarksFragment":Lcom/showmax/app/ui/fragment/FragmentMyFlixList;
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityMyFlix$3;->this$0:Lcom/showmax/app/ui/ActivityMyFlix;

    invoke-virtual {v1, v0}, Lcom/showmax/app/ui/ActivityMyFlix;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p1, Lcom/showmax/lib/api/model/catalogue/AssetList;->items:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/showmax/app/ui/fragment/FragmentMyFlixList;->showAssets(Ljava/util/ArrayList;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 279
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 267
    check-cast p1, Lcom/showmax/lib/api/model/catalogue/AssetList;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/ui/ActivityMyFlix$3;->success(Lcom/showmax/lib/api/model/catalogue/AssetList;I)V

    return-void
.end method
