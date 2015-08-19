.class Lcom/showmax/app/model/adapter/AdvertisementAdapter$1;
.super Ljava/lang/Object;
.source "AdvertisementAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/model/adapter/AdvertisementAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/model/adapter/AdvertisementAdapter;


# direct methods
.method constructor <init>(Lcom/showmax/app/model/adapter/AdvertisementAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/model/adapter/AdvertisementAdapter;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter$1;->this$0:Lcom/showmax/app/model/adapter/AdvertisementAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Advertisement;

    .line 166
    .local v0, "advertisement":Lcom/showmax/lib/api/model/catalogue/Advertisement;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter$1;->this$0:Lcom/showmax/app/model/adapter/AdvertisementAdapter;

    # getter for: Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mOnItemClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->access$000(Lcom/showmax/app/model/adapter/AdvertisementAdapter;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter$1;->this$0:Lcom/showmax/app/model/adapter/AdvertisementAdapter;

    # getter for: Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mListener:Lcom/showmax/app/model/adapter/AdvertisementAdapter$OnItemClickListener;
    invoke-static {v1}, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->access$100(Lcom/showmax/app/model/adapter/AdvertisementAdapter;)Lcom/showmax/app/model/adapter/AdvertisementAdapter$OnItemClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/showmax/app/model/adapter/AdvertisementAdapter$OnItemClickListener;->onItemClick(Lcom/showmax/lib/api/model/catalogue/Advertisement;)V

    .line 170
    :cond_0
    return-void
.end method
