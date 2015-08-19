.class Lcom/showmax/app/ui/widget/AssetsTileView$1;
.super Lcom/showmax/lib/api/io/ApiCallback;
.source "AssetsTileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/widget/AssetsTileView;
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
.field final synthetic this$0:Lcom/showmax/app/ui/widget/AssetsTileView;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/widget/AssetsTileView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/widget/AssetsTileView;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/showmax/app/ui/widget/AssetsTileView$1;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    invoke-direct {p0}, Lcom/showmax/lib/api/io/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(I)V
    .locals 3
    .param p1, "status"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView$1;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    # getter for: Lcom/showmax/app/ui/widget/AssetsTileView;->mAutomaticRefreshCount:I
    invoke-static {v0}, Lcom/showmax/app/ui/widget/AssetsTileView;->access$200(Lcom/showmax/app/ui/widget/AssetsTileView;)I

    move-result v0

    iget-object v1, p0, Lcom/showmax/app/ui/widget/AssetsTileView$1;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    # getter for: Lcom/showmax/app/ui/widget/AssetsTileView;->mMaxAutomaticRefreshCount:I
    invoke-static {v1}, Lcom/showmax/app/ui/widget/AssetsTileView;->access$300(Lcom/showmax/app/ui/widget/AssetsTileView;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView$1;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    # operator++ for: Lcom/showmax/app/ui/widget/AssetsTileView;->mAutomaticRefreshCount:I
    invoke-static {v0}, Lcom/showmax/app/ui/widget/AssetsTileView;->access$208(Lcom/showmax/app/ui/widget/AssetsTileView;)I

    .line 238
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView$1;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    iget-object v1, p0, Lcom/showmax/app/ui/widget/AssetsTileView$1;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    # getter for: Lcom/showmax/app/ui/widget/AssetsTileView;->mTileType:Lcom/showmax/app/ui/widget/AssetsTileView$TileType;
    invoke-static {v1}, Lcom/showmax/app/ui/widget/AssetsTileView;->access$400(Lcom/showmax/app/ui/widget/AssetsTileView;)Lcom/showmax/app/ui/widget/AssetsTileView$TileType;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/widget/AssetsTileView$1;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    # getter for: Lcom/showmax/app/ui/widget/AssetsTileView;->mCategory:Lcom/showmax/lib/api/model/catalogue/Category;
    invoke-static {v2}, Lcom/showmax/app/ui/widget/AssetsTileView;->access$500(Lcom/showmax/app/ui/widget/AssetsTileView;)Lcom/showmax/lib/api/model/catalogue/Category;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/showmax/app/ui/widget/AssetsTileView;->loadAssetsTile(Lcom/showmax/app/ui/widget/AssetsTileView$TileType;Lcom/showmax/lib/api/model/catalogue/Category;)V

    .line 244
    :goto_0
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/showmax/app/io/event/ApiErrorEvent;

    iget-object v2, p0, Lcom/showmax/app/ui/widget/AssetsTileView$1;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    # getter for: Lcom/showmax/app/ui/widget/AssetsTileView;->mAssetListCallback:Lcom/showmax/lib/api/io/ApiCallback;
    invoke-static {v2}, Lcom/showmax/app/ui/widget/AssetsTileView;->access$700(Lcom/showmax/app/ui/widget/AssetsTileView;)Lcom/showmax/lib/api/io/ApiCallback;

    move-result-object v2

    invoke-virtual {v2}, Lcom/showmax/lib/api/io/ApiCallback;->getError()Lretrofit/RetrofitError;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/showmax/app/io/event/ApiErrorEvent;-><init>(Lretrofit/RetrofitError;)V

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 245
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView$1;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    # invokes: Lcom/showmax/app/ui/widget/AssetsTileView;->showAssetsRefreshButton()V
    invoke-static {v0}, Lcom/showmax/app/ui/widget/AssetsTileView;->access$600(Lcom/showmax/app/ui/widget/AssetsTileView;)V

    goto :goto_0
.end method

.method public success(Lcom/showmax/lib/api/model/catalogue/AssetList;I)V
    .locals 3
    .param p1, "data"    # Lcom/showmax/lib/api/model/catalogue/AssetList;
    .param p2, "status"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView$1;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    # invokes: Lcom/showmax/app/ui/widget/AssetsTileView;->hideProgressbar()V
    invoke-static {v0}, Lcom/showmax/app/ui/widget/AssetsTileView;->access$000(Lcom/showmax/app/ui/widget/AssetsTileView;)V

    .line 229
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetsTileView$1;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    iget-object v1, p1, Lcom/showmax/lib/api/model/catalogue/AssetList;->items:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/showmax/app/ui/widget/AssetsTileView$1;->this$0:Lcom/showmax/app/ui/widget/AssetsTileView;

    # getter for: Lcom/showmax/app/ui/widget/AssetsTileView;->mTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/showmax/app/ui/widget/AssetsTileView;->access$100(Lcom/showmax/app/ui/widget/AssetsTileView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/showmax/app/ui/widget/AssetsTileView;->showAssets(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 224
    check-cast p1, Lcom/showmax/lib/api/model/catalogue/AssetList;

    invoke-virtual {p0, p1, p2}, Lcom/showmax/app/ui/widget/AssetsTileView$1;->success(Lcom/showmax/lib/api/model/catalogue/AssetList;I)V

    return-void
.end method
