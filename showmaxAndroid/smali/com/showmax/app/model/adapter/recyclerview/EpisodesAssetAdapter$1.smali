.class Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$1;
.super Ljava/lang/Object;
.source "EpisodesAssetAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;

.field final synthetic val$asset:Lcom/showmax/lib/api/model/catalogue/Asset;


# direct methods
.method constructor <init>(Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$1;->this$0:Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;

    iput-object p2, p0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$1;->val$asset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$1;->this$0:Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;

    iget-object v0, v0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;->mOnItemClickListener:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$1;->this$0:Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;

    iget-object v0, v0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter;->mOnItemClickListener:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter$OnItemClickListener;

    iget-object v1, p0, Lcom/showmax/app/model/adapter/recyclerview/EpisodesAssetAdapter$1;->val$asset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-interface {v0, v1}, Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter$OnItemClickListener;->onItemClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 76
    :cond_0
    return-void
.end method
