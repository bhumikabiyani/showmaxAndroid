.class Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView$1;
.super Ljava/lang/Object;
.source "FragmentBaseAbsListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v2, "[%s]::[onItemClick]::[position: %d]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;

    # invokes: Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->getLogTag()Ljava/lang/String;
    invoke-static {v5}, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->access$000(Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 159
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    if-ltz p3, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 162
    .local v1, "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;
    invoke-static {v2}, Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;->access$100(Lcom/showmax/app/ui/fragment/FragmentBaseAbsListView;)Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;->onAssetClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 164
    .end local v1    # "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    :cond_0
    return-void
.end method
