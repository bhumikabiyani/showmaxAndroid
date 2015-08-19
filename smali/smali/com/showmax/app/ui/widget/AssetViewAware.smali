.class public Lcom/showmax/app/ui/widget/AssetViewAware;
.super Ljava/lang/Object;
.source "AssetViewAware.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;


# instance fields
.field protected mAssetViewReference:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Lcom/showmax/app/ui/widget/AssetView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/showmax/app/ui/widget/AssetView;)V
    .locals 2
    .param p1, "assetView"    # Lcom/showmax/app/ui/widget/AssetView;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/showmax/app/ui/widget/AssetViewAware;->mAssetViewReference:Ljava/lang/ref/Reference;

    .line 49
    return-void
.end method

.method private static getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v2, 0x0

    .line 164
    .local v2, "value":I
    :try_start_0
    const-class v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 165
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 167
    .local v1, "fieldValue":I
    if-lez v1, :cond_0

    const v3, 0x7fffffff

    if-ge v1, v3, :cond_0

    .line 169
    move v2, v1

    .line 176
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "fieldValue":I
    :cond_0
    :goto_0
    return v2

    .line 172
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 5

    .prologue
    .line 79
    iget-object v3, p0, Lcom/showmax/app/ui/widget/AssetViewAware;->mAssetViewReference:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/AssetView;

    .line 80
    .local v0, "assetView":Lcom/showmax/app/ui/widget/AssetView;
    if-eqz v0, :cond_3

    .line 82
    invoke-virtual {v0}, Lcom/showmax/app/ui/widget/AssetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 83
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    .line 84
    .local v1, "height":I
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/showmax/app/ui/widget/AssetView;->getHeight()I

    move-result v1

    .line 88
    :cond_0
    if-gtz v1, :cond_1

    if-eqz v2, :cond_1

    .line 90
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 92
    :cond_1
    if-gtz v1, :cond_2

    .line 94
    const-string v3, "mMaxHeight"

    invoke-static {v0, v3}, Lcom/showmax/app/ui/widget/AssetViewAware;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 98
    .end local v1    # "height":I
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/showmax/app/ui/widget/AssetViewAware;->mAssetViewReference:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/AssetView;

    .line 126
    .local v0, "assetView":Lcom/showmax/app/ui/widget/AssetView;
    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public getScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;
    .locals 3

    .prologue
    .line 104
    iget-object v2, p0, Lcom/showmax/app/ui/widget/AssetViewAware;->mAssetViewReference:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/AssetView;

    .line 105
    .local v0, "assetView":Lcom/showmax/app/ui/widget/AssetView;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/showmax/app/ui/widget/AssetView;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 108
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->fromImageView(Landroid/widget/ImageView;)Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v2

    .line 110
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    goto :goto_0
.end method

.method public getWidth()I
    .locals 5

    .prologue
    .line 54
    iget-object v3, p0, Lcom/showmax/app/ui/widget/AssetViewAware;->mAssetViewReference:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/AssetView;

    .line 55
    .local v0, "assetView":Lcom/showmax/app/ui/widget/AssetView;
    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {v0}, Lcom/showmax/app/ui/widget/AssetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 58
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .line 59
    .local v2, "width":I
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/showmax/app/ui/widget/AssetView;->getWidth()I

    move-result v2

    .line 63
    :cond_0
    if-gtz v2, :cond_1

    if-eqz v1, :cond_1

    .line 65
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 67
    :cond_1
    if-gtz v2, :cond_2

    .line 69
    const-string v3, "mMaxWidth"

    invoke-static {v0, v3}, Lcom/showmax/app/ui/widget/AssetViewAware;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v2

    .line 73
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "width":I
    :cond_2
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getWrappedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetViewAware;->mAssetViewReference:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public isCollected()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/showmax/app/ui/widget/AssetViewAware;->mAssetViewReference:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 147
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 149
    iget-object v1, p0, Lcom/showmax/app/ui/widget/AssetViewAware;->mAssetViewReference:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/AssetView;

    .line 150
    .local v0, "assetView":Lcom/showmax/app/ui/widget/AssetView;
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1}, Lcom/showmax/app/ui/widget/AssetView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    const/4 v1, 0x1

    .line 156
    .end local v0    # "assetView":Lcom/showmax/app/ui/widget/AssetView;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 132
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 134
    iget-object v1, p0, Lcom/showmax/app/ui/widget/AssetViewAware;->mAssetViewReference:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/AssetView;

    .line 135
    .local v0, "assetView":Lcom/showmax/app/ui/widget/AssetView;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Lcom/showmax/app/ui/widget/AssetView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    const/4 v1, 0x1

    .line 141
    .end local v0    # "assetView":Lcom/showmax/app/ui/widget/AssetView;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
