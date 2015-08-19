.class public Lcom/showmax/app/model/adapter/AdvertisementAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "AdvertisementAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/model/adapter/AdvertisementAdapter$OnItemClickListener;
    }
.end annotation


# instance fields
.field private mAds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Advertisement;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/showmax/app/model/adapter/AdvertisementAdapter$OnItemClickListener;

.field private mOnItemClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 160
    new-instance v0, Lcom/showmax/app/model/adapter/AdvertisementAdapter$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/model/adapter/AdvertisementAdapter$1;-><init>(Lcom/showmax/app/model/adapter/AdvertisementAdapter;)V

    iput-object v0, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mOnItemClickListener:Landroid/view/View$OnClickListener;

    .line 55
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/model/adapter/AdvertisementAdapter;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/model/adapter/AdvertisementAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mOnItemClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/showmax/app/model/adapter/AdvertisementAdapter;)Lcom/showmax/app/model/adapter/AdvertisementAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/model/adapter/AdvertisementAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mListener:Lcom/showmax/app/model/adapter/AdvertisementAdapter$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 114
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 131
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mAds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mAds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/showmax/lib/api/model/catalogue/Advertisement;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mAds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mAds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mAds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mAds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Advertisement;

    .line 153
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 87
    iget-object v3, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030049

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 88
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0b0136

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 90
    .local v0, "image":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mAds:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/showmax/lib/api/model/catalogue/Advertisement;

    iget-object v1, v3, Lcom/showmax/lib/api/model/catalogue/Advertisement;->image:Ljava/lang/String;

    .line 91
    .local v1, "imgUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mAds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p2, :cond_0

    if-eqz v1, :cond_0

    .line 95
    sget-object v3, Lcom/showmax/lib/api/utils/MauImage$ImageType;->BANNER:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    sget v4, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_ADVERTISEMENT_HEIGHT:I

    invoke-static {v1, v0, v3, v4}, Lcom/showmax/lib/api/utils/MauImage;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mAds:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    iget-object v3, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mOnItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 120
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Parcelable;
    .param p2, "arg1"    # Ljava/lang/ClassLoader;

    .prologue
    .line 135
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Advertisement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "ads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Advertisement;>;"
    iput-object p1, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mAds:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p0}, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->notifyDataSetChanged()V

    .line 62
    return-void
.end method

.method public setOnItemClickListener(Lcom/showmax/app/model/adapter/AdvertisementAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/showmax/app/model/adapter/AdvertisementAdapter$OnItemClickListener;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/showmax/app/model/adapter/AdvertisementAdapter;->mListener:Lcom/showmax/app/model/adapter/AdvertisementAdapter$OnItemClickListener;

    .line 67
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 145
    return-void
.end method
