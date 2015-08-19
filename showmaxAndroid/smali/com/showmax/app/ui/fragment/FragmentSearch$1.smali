.class Lcom/showmax/app/ui/fragment/FragmentSearch$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "FragmentSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/fragment/FragmentSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/fragment/FragmentSearch;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/fragment/FragmentSearch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/fragment/FragmentSearch;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentSearch$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentSearch;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 307
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 308
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSearch$1;->this$0:Lcom/showmax/app/ui/fragment/FragmentSearch;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentSearch;->mListener:Lcom/showmax/app/ui/fragment/FragmentSearch$FragmentSearchListener;
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentSearch;->access$000(Lcom/showmax/app/ui/fragment/FragmentSearch;)Lcom/showmax/app/ui/fragment/FragmentSearch$FragmentSearchListener;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/showmax/app/ui/fragment/FragmentSearch$FragmentSearchListener;->onScrollStateChanged(Z)V

    .line 309
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
