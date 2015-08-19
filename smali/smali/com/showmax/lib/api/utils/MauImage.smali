.class public Lcom/showmax/lib/api/utils/MauImage;
.super Ljava/lang/Object;
.source "MauImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/lib/api/utils/MauImage$ImageType;
    }
.end annotation


# static fields
.field public static final LOG:Z = false

.field public static final MEMORY_CACHE_SIZE:I = 0x200000

.field public static final THREAD_POOL_SIZE:I = 0x2

.field private static sBannerImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static sBrandingImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static sContentWarningImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static sLandscapeImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static sMovieDetailImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static sPortraitImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private static sTvSeriesDetailImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 324
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 325
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 326
    .local v4, "width":I
    const/4 v3, 0x1

    .line 328
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 331
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 332
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 336
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p2, :cond_1

    div-int v5, v1, v3

    if-le v5, p1, :cond_1

    .line 338
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 342
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resId"    # I
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 349
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 350
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 351
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 352
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 355
    invoke-static {v0, p2, p3}, Lcom/showmax/lib/api/utils/MauImage;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 358
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 359
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static initImageLoader(Landroid/app/Application;IIIIIZ)V
    .locals 6
    .param p0, "app"    # Landroid/app/Application;
    .param p1, "defaultPortraitImageId"    # I
    .param p2, "defaultLandscapeImageId"    # I
    .param p3, "defaultBannerImageId"    # I
    .param p4, "defaultMovieDetailImageId"    # I
    .param p5, "defaultTvSeriesDetailImageId"    # I
    .param p6, "fullLogs"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 88
    if-nez p0, :cond_0

    .line 90
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "app is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_0
    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 96
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    .line 97
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 98
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_POWER_OF_2:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    .line 99
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 100
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 101
    invoke-virtual {v2, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    new-instance v3, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;

    const/16 v4, 0xfa

    invoke-direct {v3, v4}, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;-><init>(I)V

    .line 102
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 103
    invoke-virtual {v2, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 104
    invoke-virtual {v2, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 105
    invoke-virtual {v2, p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    sput-object v2, Lcom/showmax/lib/api/utils/MauImage;->sPortraitImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 108
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v3, Lcom/showmax/lib/api/utils/MauImage;->sPortraitImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 109
    invoke-virtual {v2, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 110
    invoke-virtual {v2, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 111
    invoke-virtual {v2, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    sput-object v2, Lcom/showmax/lib/api/utils/MauImage;->sLandscapeImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 114
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v3, Lcom/showmax/lib/api/utils/MauImage;->sPortraitImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 115
    invoke-virtual {v2, p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 116
    invoke-virtual {v2, p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 117
    invoke-virtual {v2, p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    sput-object v2, Lcom/showmax/lib/api/utils/MauImage;->sBannerImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 119
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v3, Lcom/showmax/lib/api/utils/MauImage;->sPortraitImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 120
    invoke-virtual {v2, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 121
    invoke-virtual {v2, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 122
    invoke-virtual {v2, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    sput-object v2, Lcom/showmax/lib/api/utils/MauImage;->sContentWarningImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 124
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v3, Lcom/showmax/lib/api/utils/MauImage;->sPortraitImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 125
    invoke-virtual {v2, p4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 126
    invoke-virtual {v2, p4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 127
    invoke-virtual {v2, p4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    sput-object v2, Lcom/showmax/lib/api/utils/MauImage;->sMovieDetailImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 129
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v3, Lcom/showmax/lib/api/utils/MauImage;->sPortraitImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 130
    invoke-virtual {v2, p5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 131
    invoke-virtual {v2, p5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 132
    invoke-virtual {v2, p5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    sput-object v2, Lcom/showmax/lib/api/utils/MauImage;->sTvSeriesDetailImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 134
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget-object v3, Lcom/showmax/lib/api/utils/MauImage;->sContentWarningImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    sput-object v2, Lcom/showmax/lib/api/utils/MauImage;->sBrandingImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 136
    new-instance v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v2, p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/showmax/lib/api/utils/MauImage;->sPortraitImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 137
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    const/4 v3, 0x2

    .line 138
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v1

    .line 139
    .local v1, "configBuilder":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    if-eqz p6, :cond_1

    .line 141
    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeDebugLogs()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 143
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 144
    return-void
.end method

.method public static loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/showmax/lib/api/utils/MauImage$ImageType;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "imageType"    # Lcom/showmax/lib/api/utils/MauImage$ImageType;

    .prologue
    .line 236
    new-instance v0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    invoke-static {p0, v0, p2}, Lcom/showmax/lib/api/utils/MauImage;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/utils/MauImage$ImageType;)V

    .line 237
    return-void
.end method

.method public static loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "imageType"    # Lcom/showmax/lib/api/utils/MauImage$ImageType;
    .param p3, "height"    # I

    .prologue
    .line 161
    new-instance v0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    invoke-static {p0, v0, p2, p3}, Lcom/showmax/lib/api/utils/MauImage;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V

    .line 162
    return-void
.end method

.method public static loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/showmax/lib/api/utils/MauImage$ImageType;ILcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "imageType"    # Lcom/showmax/lib/api/utils/MauImage$ImageType;
    .param p3, "height"    # I
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .prologue
    .line 196
    new-instance v0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    invoke-static {p0, v0, p2, p3, p4}, Lcom/showmax/lib/api/utils/MauImage;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/utils/MauImage$ImageType;ILcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 197
    return-void
.end method

.method public static loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/showmax/lib/api/utils/MauImage$ImageType;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "imageType"    # Lcom/showmax/lib/api/utils/MauImage$ImageType;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .prologue
    .line 272
    new-instance v0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    invoke-static {p0, v0, p2, p3}, Lcom/showmax/lib/api/utils/MauImage;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/utils/MauImage$ImageType;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 273
    return-void
.end method

.method public static loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/utils/MauImage$ImageType;)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p2, "imageType"    # Lcom/showmax/lib/api/utils/MauImage$ImageType;

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/showmax/lib/api/utils/MauImage;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/utils/MauImage$ImageType;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 254
    return-void
.end method

.method public static loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p2, "imageType"    # Lcom/showmax/lib/api/utils/MauImage$ImageType;
    .param p3, "height"    # I

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/showmax/lib/api/utils/MauImage;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/utils/MauImage$ImageType;ILcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 179
    return-void
.end method

.method public static loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/utils/MauImage$ImageType;ILcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p2, "imageType"    # Lcom/showmax/lib/api/utils/MauImage$ImageType;
    .param p3, "height"    # I
    .param p4, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .prologue
    .line 214
    const/4 v1, 0x1

    if-ge p3, v1, :cond_0

    .line 216
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "height must be greater than 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "extendedUrl":Ljava/lang/String;
    invoke-static {v0, p1, p2, p4}, Lcom/showmax/lib/api/utils/MauImage;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/utils/MauImage$ImageType;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 220
    return-void
.end method

.method public static loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/showmax/lib/api/utils/MauImage$ImageType;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "imageAware"    # Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;
    .param p2, "imageType"    # Lcom/showmax/lib/api/utils/MauImage$ImageType;
    .param p3, "listener"    # Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .prologue
    .line 293
    sget-object v1, Lcom/showmax/lib/api/utils/MauImage$1;->$SwitchMap$com$showmax$lib$api$utils$MauImage$ImageType:[I

    invoke-virtual {p2}, Lcom/showmax/lib/api/utils/MauImage$ImageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 314
    sget-object v0, Lcom/showmax/lib/api/utils/MauImage;->sPortraitImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 317
    .local v0, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :goto_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0, p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 318
    return-void

    .line 296
    .end local v0    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :pswitch_0
    sget-object v0, Lcom/showmax/lib/api/utils/MauImage;->sLandscapeImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 297
    .restart local v0    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    goto :goto_0

    .line 299
    .end local v0    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :pswitch_1
    sget-object v0, Lcom/showmax/lib/api/utils/MauImage;->sBannerImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 300
    .restart local v0    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    goto :goto_0

    .line 302
    .end local v0    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :pswitch_2
    sget-object v0, Lcom/showmax/lib/api/utils/MauImage;->sContentWarningImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 303
    .restart local v0    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    goto :goto_0

    .line 305
    .end local v0    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :pswitch_3
    sget-object v0, Lcom/showmax/lib/api/utils/MauImage;->sBrandingImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 306
    .restart local v0    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    goto :goto_0

    .line 308
    .end local v0    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :pswitch_4
    sget-object v0, Lcom/showmax/lib/api/utils/MauImage;->sMovieDetailImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 309
    .restart local v0    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    goto :goto_0

    .line 311
    .end local v0    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :pswitch_5
    sget-object v0, Lcom/showmax/lib/api/utils/MauImage;->sTvSeriesDetailImgOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 312
    .restart local v0    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
