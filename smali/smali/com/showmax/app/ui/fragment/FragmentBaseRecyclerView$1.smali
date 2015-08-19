.class Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView$1;
.super Ljava/lang/Object;
.source "FragmentBaseRecyclerView.java"

# interfaces
.implements Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 4
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 149
    const-string v0, "[%s]::[onItemClick]::[asset: %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;

    # invokes: Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->getLogTag()Ljava/lang/String;
    invoke-static {v3}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->access$000(Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;->access$100(Lcom/showmax/app/ui/fragment/FragmentBaseRecyclerView;)Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;->onAssetClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 151
    return-void
.end method
