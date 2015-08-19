.class Lcom/showmax/app/ui/ActivitySearch$5;
.super Lcom/showmax/app/ui/ActivitySearch$SearchCallback;
.source "ActivitySearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/showmax/app/ui/ActivitySearch;->getNewSearchCallback(Ljava/lang/String;)Lcom/showmax/app/ui/ActivitySearch$SearchCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivitySearch;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivitySearch;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivitySearch;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySearch$5;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    invoke-direct {p0, p2}, Lcom/showmax/app/ui/ActivitySearch$SearchCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public failure(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 454
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch$5;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    const/4 v1, 0x0

    # setter for: Lcom/showmax/app/ui/ActivitySearch;->mSearchResult:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/showmax/app/ui/ActivitySearch;->access$502(Lcom/showmax/app/ui/ActivitySearch;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 455
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch$5;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySearch$5;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    # getter for: Lcom/showmax/app/ui/ActivitySearch;->mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivitySearch;->access$400(Lcom/showmax/app/ui/ActivitySearch;)Lcom/showmax/app/ui/fragment/FragmentSearch;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivitySearch;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch$5;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    # getter for: Lcom/showmax/app/ui/ActivitySearch;->mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySearch;->access$400(Lcom/showmax/app/ui/ActivitySearch;)Lcom/showmax/app/ui/fragment/FragmentSearch;

    move-result-object v0

    const v1, 0x7f0d00b9

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/fragment/FragmentSearch;->showMessage(I)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch$5;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    # getter for: Lcom/showmax/app/ui/ActivitySearch;->mSearchCallback:Lcom/showmax/app/ui/ActivitySearch$SearchCallback;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySearch;->access$600(Lcom/showmax/app/ui/ActivitySearch;)Lcom/showmax/app/ui/ActivitySearch$SearchCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 461
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/ApiErrorEvent;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivitySearch$5;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    # getter for: Lcom/showmax/app/ui/ActivitySearch;->mSearchCallback:Lcom/showmax/app/ui/ActivitySearch$SearchCallback;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivitySearch;->access$600(Lcom/showmax/app/ui/ActivitySearch;)Lcom/showmax/app/ui/ActivitySearch$SearchCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/showmax/app/ui/ActivitySearch$SearchCallback;->getError()Lretrofit/RetrofitError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 463
    :cond_1
    return-void
.end method

.method public success(Lcom/showmax/lib/api/model/catalogue/AssetList;I)V
    .locals 3
    .param p1, "data"    # Lcom/showmax/lib/api/model/catalogue/AssetList;
    .param p2, "status"    # I

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivitySearch$5;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch$5;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    # getter for: Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySearch;->access$000(Lcom/showmax/app/ui/ActivitySearch;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivitySearch$5;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch$5;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySearch$5;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    # getter for: Lcom/showmax/app/ui/ActivitySearch;->mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivitySearch;->access$400(Lcom/showmax/app/ui/ActivitySearch;)Lcom/showmax/app/ui/fragment/FragmentSearch;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivitySearch;->isFragmentVisible(Lcom/showmax/app/ui/fragment/FragmentBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch$5;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    iget-object v1, p1, Lcom/showmax/lib/api/model/catalogue/AssetList;->items:Ljava/util/ArrayList;

    # setter for: Lcom/showmax/app/ui/ActivitySearch;->mSearchResult:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/showmax/app/ui/ActivitySearch;->access$502(Lcom/showmax/app/ui/ActivitySearch;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 447
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch$5;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    # getter for: Lcom/showmax/app/ui/ActivitySearch;->mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySearch;->access$400(Lcom/showmax/app/ui/ActivitySearch;)Lcom/showmax/app/ui/fragment/FragmentSearch;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySearch$5;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    # getter for: Lcom/showmax/app/ui/ActivitySearch;->mSearchResult:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivitySearch;->access$500(Lcom/showmax/app/ui/ActivitySearch;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivitySearch$5;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    invoke-static {v2}, Lcom/showmax/lib/api/utils/UserPrefs;->getSortOption(Landroid/content/Context;)Lcom/showmax/lib/api/utils/UserPrefs$SortOption;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/showmax/app/ui/fragment/FragmentSearch;->showAssets(Ljava/util/ArrayList;Lcom/showmax/lib/api/utils/UserPrefs$SortOption;)V

    .line 449
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 440
    check-cast p1, Lcom/showmax/lib/api/model/catalogue/AssetList;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/ui/ActivitySearch$5;->success(Lcom/showmax/lib/api/model/catalogue/AssetList;I)V

    return-void
.end method
