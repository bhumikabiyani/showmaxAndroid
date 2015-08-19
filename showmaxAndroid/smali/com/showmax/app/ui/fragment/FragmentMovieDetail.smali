.class public Lcom/showmax/app/ui/fragment/FragmentMovieDetail;
.super Lcom/showmax/app/ui/fragment/FragmentBase;
.source "FragmentMovieDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;
    }
.end annotation


# static fields
.field private static final ARGS_KEY_ASSET:Ljava/lang/String; = "args.key.asset"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActors:Lcom/showmax/app/ui/widget/TagsLayout;

.field private mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

.field private mAudioLanguages:Landroid/widget/TextView;

.field private mAudioSpinnerContainer:Landroid/view/View;

.field private mCategoriesTv:Landroid/widget/TextView;

.field private mContent:Lcom/showmax/app/ui/widget/ParallaxScrollView;

.field private mCoverLandscape:Landroid/widget/ImageView;

.field private mCoverPortrait:Landroid/widget/ImageView;

.field private mDescriptionTv:Landroid/widget/TextView;

.field private mDirectors:Lcom/showmax/app/ui/widget/TagsLayout;

.field private mEpisodeNumber:Landroid/widget/TextView;

.field private mFragmentAssetDetailListener:Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

.field private mLenghtTv:Landroid/widget/TextView;

.field private mMyFlixBtn:Landroid/widget/ImageButton;

.field private mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

.field private mOnBtnClickListener:Landroid/view/View$OnClickListener;

.field private mParentalRatingTv:Landroid/widget/TextView;

.field private mPlayBtn:Lcom/showmax/app/ui/widget/PlayButton;

.field private mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

.field private mRecommendedContainer:Landroid/view/View;

.field private mRecommendedGridView:Lcom/showmax/app/ui/widget/RecommendedGridView;

.field private mRecommendedGridViewListener:Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;

.field private mRecommendedProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

.field private mRecommendedTitleContainer:Landroid/view/View;

.field private mSubtitlesLanguages:Landroid/widget/TextView;

.field private mTagsLayoutListener:Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;

.field private mTitleTv:Landroid/widget/TextView;

.field private mTrailerBtn:Landroid/view/View;

.field private mYearTv:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;-><init>()V

    .line 451
    new-instance v0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$1;-><init>(Lcom/showmax/app/ui/fragment/FragmentMovieDetail;)V

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mTagsLayoutListener:Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;

    .line 463
    new-instance v0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$2;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$2;-><init>(Lcom/showmax/app/ui/fragment/FragmentMovieDetail;)V

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mOnBtnClickListener:Landroid/view/View$OnClickListener;

    .line 496
    new-instance v0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$3;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$3;-><init>(Lcom/showmax/app/ui/fragment/FragmentMovieDetail;)V

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mRecommendedGridViewListener:Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;

    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/fragment/FragmentMovieDetail;)Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mFragmentAssetDetailListener:Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/fragment/FragmentMovieDetail;)Lcom/showmax/app/ui/widget/PlayButton;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mPlayBtn:Lcom/showmax/app/ui/widget/PlayButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/showmax/app/ui/fragment/FragmentMovieDetail;)Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

    return-object v0
.end method

.method private checkImages()V
    .locals 9

    .prologue
    .line 512
    iget-object v6, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v6, v6, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    sget-object v7, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->EPISODE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne v6, v7, :cond_2

    .line 514
    iget-object v6, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v4, v6, Lcom/showmax/lib/api/model/catalogue/Asset;->tvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 515
    .local v4, "parentAsset":Lcom/showmax/lib/api/model/catalogue/Asset;
    if-eqz v4, :cond_1

    .line 517
    invoke-virtual {v4}, Lcom/showmax/lib/api/model/catalogue/Asset;->getPosterImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v5

    .line 518
    .local v5, "parentCoverImage":Lcom/showmax/lib/api/model/catalogue/Image;
    if-eqz v5, :cond_0

    move-object v0, v5

    .line 524
    .end local v5    # "parentCoverImage":Lcom/showmax/lib/api/model/catalogue/Image;
    .local v0, "coverImage":Lcom/showmax/lib/api/model/catalogue/Image;
    :goto_0
    iget-object v6, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v6}, Lcom/showmax/lib/api/model/catalogue/Asset;->getLandscapeImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v2

    .line 532
    .end local v4    # "parentAsset":Lcom/showmax/lib/api/model/catalogue/Asset;
    .local v2, "horizontalImage":Lcom/showmax/lib/api/model/catalogue/Image;
    :goto_1
    if-nez v0, :cond_3

    const/4 v1, 0x0

    .line 533
    .local v1, "coverImageUrl":Ljava/lang/String;
    :goto_2
    if-nez v2, :cond_4

    move-object v3, v1

    .line 535
    .local v3, "horizontalImageUrl":Ljava/lang/String;
    :goto_3
    iget-object v6, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mCoverPortrait:Landroid/widget/ImageView;

    sget-object v7, Lcom/showmax/lib/api/utils/MauImage$ImageType;->PORTRAIT:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    sget v8, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_PORTRAIT_ASSET_HEIGHT:I

    invoke-static {v1, v6, v7, v8}, Lcom/showmax/lib/api/utils/MauImage;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V

    .line 536
    iget-object v6, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mCoverLandscape:Landroid/widget/ImageView;

    sget-object v7, Lcom/showmax/lib/api/utils/MauImage$ImageType;->MOVIE_DETAIL_BANNER:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    sget v8, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_ASSET_HEADER_HEIGHT:I

    invoke-static {v3, v6, v7, v8}, Lcom/showmax/lib/api/utils/MauImage;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V

    .line 537
    return-void

    .line 518
    .end local v0    # "coverImage":Lcom/showmax/lib/api/model/catalogue/Image;
    .end local v1    # "coverImageUrl":Ljava/lang/String;
    .end local v2    # "horizontalImage":Lcom/showmax/lib/api/model/catalogue/Image;
    .end local v3    # "horizontalImageUrl":Ljava/lang/String;
    .restart local v4    # "parentAsset":Lcom/showmax/lib/api/model/catalogue/Asset;
    .restart local v5    # "parentCoverImage":Lcom/showmax/lib/api/model/catalogue/Image;
    :cond_0
    iget-object v6, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v6}, Lcom/showmax/lib/api/model/catalogue/Asset;->getPosterImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v0

    goto :goto_0

    .line 522
    .end local v5    # "parentCoverImage":Lcom/showmax/lib/api/model/catalogue/Image;
    :cond_1
    iget-object v6, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v6}, Lcom/showmax/lib/api/model/catalogue/Asset;->getPosterImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v0

    .restart local v0    # "coverImage":Lcom/showmax/lib/api/model/catalogue/Image;
    goto :goto_0

    .line 528
    .end local v0    # "coverImage":Lcom/showmax/lib/api/model/catalogue/Image;
    .end local v4    # "parentAsset":Lcom/showmax/lib/api/model/catalogue/Asset;
    :cond_2
    iget-object v6, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v6}, Lcom/showmax/lib/api/model/catalogue/Asset;->getPosterImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v0

    .line 529
    .restart local v0    # "coverImage":Lcom/showmax/lib/api/model/catalogue/Image;
    iget-object v6, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v6}, Lcom/showmax/lib/api/model/catalogue/Asset;->getLandscapeImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v2

    .restart local v2    # "horizontalImage":Lcom/showmax/lib/api/model/catalogue/Image;
    goto :goto_1

    .line 532
    :cond_3
    iget-object v1, v0, Lcom/showmax/lib/api/model/catalogue/Image;->link:Ljava/lang/String;

    goto :goto_2

    .line 533
    .restart local v1    # "coverImageUrl":Ljava/lang/String;
    :cond_4
    iget-object v3, v2, Lcom/showmax/lib/api/model/catalogue/Image;->link:Ljava/lang/String;

    goto :goto_3
.end method

.method private checkRatings()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 541
    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v3, v5, Lcom/showmax/lib/api/model/catalogue/Asset;->ratings:Lcom/showmax/lib/api/model/catalogue/Ratings;

    .line 542
    .local v3, "ratings":Lcom/showmax/lib/api/model/catalogue/Ratings;
    if-eqz v3, :cond_3

    .line 544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Lcom/showmax/lib/api/model/catalogue/Ratings;->getRatingId()Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "ratingId":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 548
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    :cond_0
    invoke-virtual {v3}, Lcom/showmax/lib/api/model/catalogue/Ratings;->getRatingText()Ljava/lang/String;

    move-result-object v2

    .line 553
    .local v2, "ratingText":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 555
    invoke-static {v2}, Lcom/showmax/app/util/StringUtils;->capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "parentalRating":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 560
    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mParentalRatingTv:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 561
    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mParentalRatingTv:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    .end local v0    # "parentalRating":Ljava/lang/String;
    .end local v1    # "ratingId":Ljava/lang/String;
    .end local v2    # "ratingText":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 565
    .restart local v0    # "parentalRating":Ljava/lang/String;
    .restart local v1    # "ratingId":Ljava/lang/String;
    .restart local v2    # "ratingText":Ljava/lang/String;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mParentalRatingTv:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 570
    .end local v0    # "parentalRating":Ljava/lang/String;
    .end local v1    # "ratingId":Ljava/lang/String;
    .end local v2    # "ratingText":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mParentalRatingTv:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 443
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "args.key.asset"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Asset;

    iput-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 445
    if-eqz p1, :cond_0

    .line 449
    :cond_0
    return-void
.end method

.method public static newInstance()Lcom/showmax/app/ui/fragment/FragmentMovieDetail;
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->newInstance(Lcom/showmax/lib/api/model/catalogue/Asset;)Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/showmax/lib/api/model/catalogue/Asset;)Lcom/showmax/app/ui/fragment/FragmentMovieDetail;
    .locals 7
    .param p0, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 266
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    .line 267
    .local v1, "assetId":Ljava/lang/String;
    :goto_0
    const-string v3, "[%s]::[newInstance]::[id: %s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->TAG:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    new-instance v2, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;

    invoke-direct {v2}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;-><init>()V

    .line 270
    .local v2, "f":Lcom/showmax/app/ui/fragment/FragmentMovieDetail;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 271
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "args.key.asset"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 272
    invoke-virtual {v2, v0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->setArguments(Landroid/os/Bundle;)V

    .line 273
    return-object v2

    .line 266
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "assetId":Ljava/lang/String;
    .end local v2    # "f":Lcom/showmax/app/ui/fragment/FragmentMovieDetail;
    :cond_0
    const-string v1, "null"

    goto :goto_0
.end method


# virtual methods
.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public hideFavouritesButton()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mMyFlixBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 397
    return-void
.end method

.method public hidePlayButton()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mPlayBtn:Lcom/showmax/app/ui/widget/PlayButton;

    invoke-virtual {v0}, Lcom/showmax/app/ui/widget/PlayButton;->showPlayButton()V

    .line 373
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mPlayBtn:Lcom/showmax/app/ui/widget/PlayButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/PlayButton;->setVisibility(I)V

    .line 374
    return-void
.end method

.method public hideTrailerButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 384
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAudioSpinnerContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mTrailerBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 386
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 206
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 135
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mFragmentAssetDetailListener:Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

    .line 136
    move-object v0, p1

    check-cast v0, Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->onAttach(Landroid/app/Activity;)V

    .line 144
    return-void

    .line 139
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Activity must implement fragment\'s callbacks."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->initData(Landroid/os/Bundle;)V

    .line 152
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 157
    const v0, 0x7f03003f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;->onDetach()V

    .line 237
    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mFragmentAssetDetailListener:Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

    .line 238
    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mOnAssetClickListener:Lcom/showmax/app/ui/fragment/FragmentBase$OnAssetClickListener;

    .line 239
    return-void
.end method

.method public onEvent(Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 425
    const-string v0, "[%s]::[onEvent]::[SubscriptionStatusChangedEvent]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mRecommendedGridView:Lcom/showmax/app/ui/widget/RecommendedGridView;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mRecommendedGridView:Lcom/showmax/app/ui/widget/RecommendedGridView;

    invoke-virtual {v0}, Lcom/showmax/app/ui/widget/RecommendedGridView;->refreshSubscriptionStatus()V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mFragmentAssetDetailListener:Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

    invoke-interface {v0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;->onCheckPlayButton()V

    .line 431
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mFragmentAssetDetailListener:Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

    invoke-interface {v0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;->onCheckFavouritesButton()V

    .line 432
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;->onResume()V

    .line 219
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->showAsset(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 222
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mFragmentAssetDetailListener:Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

    invoke-interface {v0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;->onCheckPlayButton()V

    .line 224
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;->onStart()V

    .line 212
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;->onStop()V

    .line 230
    invoke-static {}, Lcom/showmax/lib/api/io/eventbus/EventBus;->getInstance()Lcom/showmax/lib/api/io/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/showmax/lib/api/io/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 231
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/showmax/app/ui/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 165
    const v0, 0x7f0b00e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/ParallaxScrollView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mContent:Lcom/showmax/app/ui/widget/ParallaxScrollView;

    .line 166
    const v0, 0x7f0b00e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/RefreshProgressBar;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    .line 168
    const v0, 0x7f0b00e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/PlayButton;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mPlayBtn:Lcom/showmax/app/ui/widget/PlayButton;

    .line 169
    const v0, 0x7f0b00ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mTrailerBtn:Landroid/view/View;

    .line 170
    const v0, 0x7f0b00e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mMyFlixBtn:Landroid/widget/ImageButton;

    .line 171
    const v0, 0x7f0b00e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mCoverPortrait:Landroid/widget/ImageView;

    .line 172
    const v0, 0x7f0b00e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mCoverLandscape:Landroid/widget/ImageView;

    .line 174
    const v0, 0x7f0b00f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mParentalRatingTv:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0b00f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mTitleTv:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f0b00ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mYearTv:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f0b00ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mLenghtTv:Landroid/widget/TextView;

    .line 179
    const v0, 0x7f0b00ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mCategoriesTv:Landroid/widget/TextView;

    .line 180
    const v0, 0x7f0b00f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/TagsLayout;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mDirectors:Lcom/showmax/app/ui/widget/TagsLayout;

    .line 181
    const v0, 0x7f0b00f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/TagsLayout;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mActors:Lcom/showmax/app/ui/widget/TagsLayout;

    .line 182
    const v0, 0x7f0b00f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mDescriptionTv:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f0b00f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAudioLanguages:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f0b00fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mSubtitlesLanguages:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f0b00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mRecommendedTitleContainer:Landroid/view/View;

    .line 188
    const v0, 0x7f0b00ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mRecommendedContainer:Landroid/view/View;

    .line 189
    const v0, 0x7f0b0101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/RecommendedGridView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mRecommendedGridView:Lcom/showmax/app/ui/widget/RecommendedGridView;

    .line 190
    const v0, 0x7f0b0100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/RefreshProgressBar;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mRecommendedProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    .line 192
    const v0, 0x7f0b00f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mEpisodeNumber:Landroid/widget/TextView;

    .line 194
    const v0, 0x7f0b00e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAudioSpinnerContainer:Landroid/view/View;

    .line 195
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mRecommendedGridView:Lcom/showmax/app/ui/widget/RecommendedGridView;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mRecommendedGridViewListener:Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RecommendedGridView;->setRecommendedGridViewListener(Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;)V

    .line 197
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mPlayBtn:Lcom/showmax/app/ui/widget/PlayButton;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mOnBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/PlayButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mTrailerBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mOnBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mMyFlixBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mOnBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void
.end method

.method public showAsset(Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 7
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x0

    .line 278
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 280
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v3, :cond_2

    .line 282
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mContent:Lcom/showmax/app/ui/widget/ParallaxScrollView;

    invoke-virtual {v3, v4}, Lcom/showmax/app/ui/widget/ParallaxScrollView;->setVisibility(I)V

    .line 283
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    invoke-virtual {v3, v6}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 286
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->checkImages()V

    .line 289
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->checkRatings()V

    .line 291
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mTitleTv:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v5, v5, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mYearTv:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget v5, v5, Lcom/showmax/lib/api/model/catalogue/Asset;->year:I

    invoke-static {v5}, Lcom/showmax/app/util/StringUtils;->getYear(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-static {}, Lcom/showmax/lib/api/utils/LanguageUtils;->getInstance()Lcom/showmax/lib/api/utils/LanguageUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/showmax/lib/api/utils/LanguageUtils;->convert(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v1

    .line 295
    .local v1, "language":Lcom/showmax/lib/api/model/catalogue/Language;
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v3, v1}, Lcom/showmax/lib/api/model/catalogue/Asset;->getMainVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;

    move-result-object v2

    .line 296
    .local v2, "mainVideo":Lcom/showmax/lib/api/model/catalogue/Video;
    if-nez v2, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/showmax/app/util/StringUtils;->getDuration(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "duration":Ljava/lang/String;
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mLenghtTv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mCategoriesTv:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v5, v5, Lcom/showmax/lib/api/model/catalogue/Asset;->categories:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/showmax/app/util/StringUtils;->getCategories(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mDirectors:Lcom/showmax/app/ui/widget/TagsLayout;

    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v5, v5, Lcom/showmax/lib/api/model/catalogue/Asset;->crew:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/showmax/app/util/StringUtils;->getDirectorStrings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/showmax/app/ui/widget/TagsLayout;->setTags(Ljava/util/List;)V

    .line 302
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mActors:Lcom/showmax/app/ui/widget/TagsLayout;

    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v5, v5, Lcom/showmax/lib/api/model/catalogue/Asset;->cast:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/showmax/app/util/StringUtils;->getStarringStrings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/showmax/app/ui/widget/TagsLayout;->setTags(Ljava/util/List;)V

    .line 303
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mDirectors:Lcom/showmax/app/ui/widget/TagsLayout;

    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mTagsLayoutListener:Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;

    invoke-virtual {v3, v5}, Lcom/showmax/app/ui/widget/TagsLayout;->setListener(Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;)V

    .line 304
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mActors:Lcom/showmax/app/ui/widget/TagsLayout;

    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mTagsLayoutListener:Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;

    invoke-virtual {v3, v5}, Lcom/showmax/app/ui/widget/TagsLayout;->setListener(Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;)V

    .line 306
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mDescriptionTv:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v5, v5, Lcom/showmax/lib/api/model/catalogue/Asset;->description:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAudioLanguages:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v5, v5, Lcom/showmax/lib/api/model/catalogue/Asset;->audioLanguages:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/showmax/app/util/StringUtils;->getLanguagesFromIso(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mSubtitlesLanguages:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v5, v5, Lcom/showmax/lib/api/model/catalogue/Asset;->subtitlesLanguages:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/showmax/app/util/StringUtils;->getLanguagesFromIso(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v3, v3, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    sget-object v5, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->EPISODE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne v3, v5, :cond_1

    .line 313
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mEpisodeNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-static {v5, v6}, Lcom/showmax/app/util/StringUtils;->getEpisodeString(Landroid/content/Context;Lcom/showmax/lib/api/model/catalogue/Asset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mEpisodeNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    :goto_1
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mFragmentAssetDetailListener:Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

    invoke-interface {v3}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;->onCheckFavouritesButton()V

    .line 322
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mFragmentAssetDetailListener:Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

    invoke-interface {v3}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;->onCheckTrailerButton()V

    .line 323
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mFragmentAssetDetailListener:Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

    invoke-interface {v3}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;->onCheckPlayButton()V

    .line 325
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->showRecommendedAssetsProgressBar()V

    .line 326
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mFragmentAssetDetailListener:Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;

    invoke-interface {v3}, Lcom/showmax/app/ui/fragment/FragmentMovieDetail$FragmentAssetDetailListener;->onLoadRecommendedAssets()V

    .line 334
    .end local v0    # "duration":Ljava/lang/String;
    .end local v1    # "language":Lcom/showmax/lib/api/model/catalogue/Language;
    .end local v2    # "mainVideo":Lcom/showmax/lib/api/model/catalogue/Video;
    :goto_2
    return-void

    .line 296
    .restart local v1    # "language":Lcom/showmax/lib/api/model/catalogue/Language;
    .restart local v2    # "mainVideo":Lcom/showmax/lib/api/model/catalogue/Video;
    :cond_0
    iget v3, v2, Lcom/showmax/lib/api/model/catalogue/Video;->duration:I

    goto/16 :goto_0

    .line 318
    .restart local v0    # "duration":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mEpisodeNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 330
    .end local v0    # "duration":Ljava/lang/String;
    .end local v1    # "language":Lcom/showmax/lib/api/model/catalogue/Language;
    .end local v2    # "mainVideo":Lcom/showmax/lib/api/model/catalogue/Video;
    :cond_2
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mContent:Lcom/showmax/app/ui/widget/ParallaxScrollView;

    invoke-virtual {v3, v6}, Lcom/showmax/app/ui/widget/ParallaxScrollView;->setVisibility(I)V

    .line 331
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const v5, 0x7f0d00aa

    invoke-virtual {v3, v5}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->showMessage(I)V

    .line 332
    iget-object v3, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    invoke-virtual {v3, v4}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    goto :goto_2
.end method

.method public showFavouritesButton(Z)V
    .locals 2
    .param p1, "isFavourites"    # Z

    .prologue
    .line 390
    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mMyFlixBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const v0, 0x7f020097

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 391
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mMyFlixBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 392
    return-void

    .line 390
    :cond_0
    const v0, 0x7f020087

    goto :goto_0
.end method

.method public showPlayButton()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mPlayBtn:Lcom/showmax/app/ui/widget/PlayButton;

    invoke-virtual {v0}, Lcom/showmax/app/ui/widget/PlayButton;->showPlayButton()V

    .line 367
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mPlayBtn:Lcom/showmax/app/ui/widget/PlayButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/PlayButton;->setVisibility(I)V

    .line 368
    return-void
.end method

.method public showProgressBar()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mContent:Lcom/showmax/app/ui/widget/ParallaxScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/ParallaxScrollView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 340
    return-void
.end method

.method public showPurchaseButton(Lcom/showmax/lib/api/model/billing/PricelistList;)V
    .locals 5
    .param p1, "pricelistList"    # Lcom/showmax/lib/api/model/billing/PricelistList;

    .prologue
    const/4 v4, 0x0

    .line 352
    invoke-virtual {p1}, Lcom/showmax/lib/api/model/billing/PricelistList;->getDefaultFormattedLocalTotalPrice()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "price":Ljava/lang/String;
    const-string v1, "[%s]::[showPurchaseButton]::[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->TAG:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mPlayBtn:Lcom/showmax/app/ui/widget/PlayButton;

    invoke-virtual {v1, v0}, Lcom/showmax/app/ui/widget/PlayButton;->showPurchaseButton(Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mPlayBtn:Lcom/showmax/app/ui/widget/PlayButton;

    invoke-virtual {v1, v4}, Lcom/showmax/app/ui/widget/PlayButton;->setVisibility(I)V

    .line 356
    return-void
.end method

.method public showRecommendedAssets(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "recommendedAssets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Asset;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 401
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mRecommendedTitleContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mRecommendedContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 414
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mRecommendedTitleContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mRecommendedContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mRecommendedProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    invoke-virtual {v0, v2}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mRecommendedGridView:Lcom/showmax/app/ui/widget/RecommendedGridView;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RecommendedGridView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mRecommendedGridView:Lcom/showmax/app/ui/widget/RecommendedGridView;

    invoke-virtual {v0, p1}, Lcom/showmax/app/ui/widget/RecommendedGridView;->setData(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public showRecommendedAssetsProgressBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 344
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mContent:Lcom/showmax/app/ui/widget/ParallaxScrollView;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/ParallaxScrollView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    invoke-virtual {v0, v2}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mRecommendedProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mRecommendedGridView:Lcom/showmax/app/ui/widget/RecommendedGridView;

    invoke-virtual {v0, v2}, Lcom/showmax/app/ui/widget/RecommendedGridView;->setVisibility(I)V

    .line 348
    return-void
.end method

.method public showRemainingButton(I)V
    .locals 2
    .param p1, "remainingTime"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mPlayBtn:Lcom/showmax/app/ui/widget/PlayButton;

    invoke-virtual {v0, p1}, Lcom/showmax/app/ui/widget/PlayButton;->showPlayRemainingButton(I)V

    .line 361
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mPlayBtn:Lcom/showmax/app/ui/widget/PlayButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/PlayButton;->setVisibility(I)V

    .line 362
    return-void
.end method

.method public showTrailerButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 378
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mAudioSpinnerContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentMovieDetail;->mTrailerBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 380
    return-void
.end method
