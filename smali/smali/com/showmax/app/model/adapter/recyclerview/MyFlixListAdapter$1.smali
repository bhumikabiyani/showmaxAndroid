.class Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$1;
.super Ljava/lang/Object;
.source "MyFlixListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;

.field final synthetic val$asset:Lcom/showmax/lib/api/model/catalogue/Asset;


# direct methods
.method constructor <init>(Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$1;->this$0:Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;

    iput-object p2, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$1;->val$asset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$1;->this$0:Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;

    iget-object v0, v0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;->mOnItemClickListener:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$1;->this$0:Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;

    iget-object v0, v0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter;->mOnItemClickListener:Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter$OnItemClickListener;

    iget-object v1, p0, Lcom/showmax/app/model/adapter/recyclerview/MyFlixListAdapter$1;->val$asset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-interface {v0, v1}, Lcom/showmax/app/model/adapter/recyclerview/BaseAssetAdapter$OnItemClickListener;->onItemClick(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 100
    :cond_0
    return-void
.end method
