.class public Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;
.super Lcom/showmax/app/ui/fragment/FragmentBase;
.source "FragmentTvSeriesDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;
    }
.end annotation


# static fields
.field private static final ARGS_TV_SERIES:Ljava/lang/String; = "args.tv.series"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActors:Lcom/showmax/app/ui/widget/TagsLayout;

.field private mAudioLanguages:Landroid/widget/TextView;

.field private mAudioSpinnerContainer:Landroid/view/View;

.field private mCategoriesTv:Landroid/widget/TextView;

.field private mContent:Landroid/support/v4/widget/NestedScrollView;

.field private mCoverLandscape:Landroid/widget/ImageView;

.field private mCoverPortrait:Landroid/widget/ImageView;

.field private mDescriptionTv:Landroid/widget/TextView;

.field private mDirectors:Lcom/showmax/app/ui/widget/TagsLayout;

.field private mFragmentTvSeriesDetailListener:Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;

.field private mOnBtnClickListener:Landroid/view/View$OnClickListener;

.field private mParentalRatingTv:Landroid/widget/TextView;

.field private mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

.field private mRecommendedAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendedContainer:Landroid/view/View;

.field private mRecommendedGridView:Lcom/showmax/app/ui/widget/RecommendedGridView;

.field private mRecommendedGridViewListener:Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;

.field private mRecommendedProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

.field private mRecommendedTitleContainer:Landroid/view/View;

.field private mSubtitlesLanguages:Landroid/widget/TextView;

.field private mTagsLayoutListener:Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;

.field private mTitleTv:Landroid/widget/TextView;

.field private mTrailerBtn:Landroid/view/View;

.field private mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

.field private mYearTv:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;-><init>()V

    .line 356
    new-instance v0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$1;-><init>(Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;)V

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTagsLayoutListener:Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;

    .line 368
    new-instance v0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$2;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$2;-><init>(Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;)V

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mOnBtnClickListener:Landroid/view/View$OnClickListener;

    .line 383
    new-instance v0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$3;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$3;-><init>(Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;)V

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedGridViewListener:Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;

    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;)Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mFragmentTvSeriesDetailListener:Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;

    return-object v0
.end method

.method private checkImages()V
    .locals 8

    .prologue
    .line 394
    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-nez v5, :cond_0

    .line 409
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v5}, Lcom/showmax/lib/api/model/catalogue/Asset;->getPosterImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v3

    .line 400
    .local v3, "posterImage":Lcom/showmax/lib/api/model/catalogue/Image;
    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v5}, Lcom/showmax/lib/api/model/catalogue/Asset;->getHeroImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v0

    .line 401
    .local v0, "heroImage":Lcom/showmax/lib/api/model/catalogue/Image;
    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v5}, Lcom/showmax/lib/api/model/catalogue/Asset;->getLandscapeImage()Lcom/showmax/lib/api/model/catalogue/Image;

    move-result-object v2

    .line 403
    .local v2, "landscapeImage":Lcom/showmax/lib/api/model/catalogue/Image;
    if-nez v3, :cond_1

    const/4 v4, 0x0

    .line 404
    .local v4, "posterImageUrl":Ljava/lang/String;
    :goto_1
    if-nez v0, :cond_3

    if-nez v2, :cond_2

    move-object v1, v4

    .line 406
    .local v1, "heroImageUrl":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mCoverPortrait:Landroid/widget/ImageView;

    sget-object v6, Lcom/showmax/lib/api/utils/MauImage$ImageType;->PORTRAIT:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    sget v7, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_PORTRAIT_ASSET_HEIGHT:I

    invoke-static {v4, v5, v6, v7}, Lcom/showmax/lib/api/utils/MauImage;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V

    .line 407
    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mCoverLandscape:Landroid/widget/ImageView;

    sget-object v6, Lcom/showmax/lib/api/utils/MauImage$ImageType;->TV_SERIES_DETAIL_BANNER:Lcom/showmax/lib/api/utils/MauImage$ImageType;

    sget v7, Lcom/showmax/app/ShowMaxApp;->sDEFAULT_TV_SERIES_HEADER_HEIGHT:I

    invoke-static {v1, v5, v6, v7}, Lcom/showmax/lib/api/utils/MauImage;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/showmax/lib/api/utils/MauImage$ImageType;I)V

    goto :goto_0

    .line 403
    .end local v1    # "heroImageUrl":Ljava/lang/String;
    .end local v4    # "posterImageUrl":Ljava/lang/String;
    :cond_1
    iget-object v4, v3, Lcom/showmax/lib/api/model/catalogue/Image;->link:Ljava/lang/String;

    goto :goto_1

    .line 404
    .restart local v4    # "posterImageUrl":Ljava/lang/String;
    :cond_2
    iget-object v1, v2, Lcom/showmax/lib/api/model/catalogue/Image;->link:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/showmax/lib/api/model/catalogue/Image;->link:Ljava/lang/String;

    goto :goto_2
.end method

.method private checkRatings()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 413
    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v3, v5, Lcom/showmax/lib/api/model/catalogue/Asset;->ratings:Lcom/showmax/lib/api/model/catalogue/Ratings;

    .line 414
    .local v3, "ratings":Lcom/showmax/lib/api/model/catalogue/Ratings;
    if-eqz v3, :cond_3

    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Lcom/showmax/lib/api/model/catalogue/Ratings;->getRatingId()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "ratingId":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 420
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_0
    invoke-virtual {v3}, Lcom/showmax/lib/api/model/catalogue/Ratings;->getRatingText()Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "ratingText":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 427
    invoke-static {v2}, Lcom/showmax/app/util/StringUtils;->capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "parentalRating":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 432
    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mParentalRatingTv:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mParentalRatingTv:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    .end local v0    # "parentalRating":Ljava/lang/String;
    .end local v1    # "ratingId":Ljava/lang/String;
    .end local v2    # "ratingText":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 437
    .restart local v0    # "parentalRating":Ljava/lang/String;
    .restart local v1    # "ratingId":Ljava/lang/String;
    .restart local v2    # "ratingText":Ljava/lang/String;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mParentalRatingTv:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 442
    .end local v0    # "parentalRating":Ljava/lang/String;
    .end local v1    # "ratingId":Ljava/lang/String;
    .end local v2    # "ratingText":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v5, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mParentalRatingTv:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 349
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "args.tv.series"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Asset;

    iput-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 351
    if-eqz p1, :cond_0

    .line 354
    :cond_0
    return-void
.end method

.method public static newInstance(Lcom/showmax/lib/api/model/catalogue/Asset;)Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;
    .locals 7
    .param p0, "tvSeries"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 226
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    .line 227
    .local v1, "assetId":Ljava/lang/String;
    :goto_0
    const-string v3, "[%s]::[newInstance]::[id: %s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->TAG:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    new-instance v2, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;

    invoke-direct {v2}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;-><init>()V

    .line 230
    .local v2, "f":Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "args.tv.series"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 232
    invoke-virtual {v2, v0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->setArguments(Landroid/os/Bundle;)V

    .line 233
    return-object v2

    .line 226
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "assetId":Ljava/lang/String;
    .end local v2    # "f":Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;
    :cond_0
    const-string v1, "null"

    goto :goto_0
.end method


# virtual methods
.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public hideTrailerButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 301
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mAudioSpinnerContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTrailerBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 173
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 110
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mFragmentTvSeriesDetailListener:Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->onAttach(Landroid/app/Activity;)V

    .line 118
    return-void

    .line 113
    :catch_0
    move-exception v1

    .line 115
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
    .line 123
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->initData(Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    const v0, 0x7f030045

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;->onDetach()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mFragmentTvSeriesDetailListener:Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;

    .line 202
    return-void
.end method

.method public onEvent(Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/showmax/app/io/event/SubscriptionStatusChangedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 333
    const-string v0, "[%s]::[onEvent]::[SubscriptionStatusChangedEvent]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedGridView:Lcom/showmax/app/ui/widget/RecommendedGridView;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedGridView:Lcom/showmax/app/ui/widget/RecommendedGridView;

    invoke-virtual {v0}, Lcom/showmax/app/ui/widget/RecommendedGridView;->refreshSubscriptionStatus()V

    .line 338
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;->onResume()V

    .line 179
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->showAsset(Lcom/showmax/lib/api/model/catalogue/Asset;)V

    .line 183
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 195
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;->onStop()V

    .line 189
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Lcom/showmax/app/ui/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 138
    const v0, 0x7f0b0111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mContent:Landroid/support/v4/widget/NestedScrollView;

    .line 139
    const v0, 0x7f0b0110

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/RefreshProgressBar;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    .line 141
    const v0, 0x7f0b0116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mCoverPortrait:Landroid/widget/ImageView;

    .line 142
    const v0, 0x7f0b0113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mCoverLandscape:Landroid/widget/ImageView;

    .line 144
    const v0, 0x7f0b0117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTrailerBtn:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTrailerBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mOnBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v0, 0x7f0b011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mParentalRatingTv:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f0b011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTitleTv:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0b011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mYearTv:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f0b011b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mCategoriesTv:Landroid/widget/TextView;

    .line 152
    const v0, 0x7f0b011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/TagsLayout;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mDirectors:Lcom/showmax/app/ui/widget/TagsLayout;

    .line 153
    const v0, 0x7f0b0121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/TagsLayout;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mActors:Lcom/showmax/app/ui/widget/TagsLayout;

    .line 154
    const v0, 0x7f0b011e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mDescriptionTv:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f0b0123

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mAudioLanguages:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0b0125

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mSubtitlesLanguages:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f0b0114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mAudioSpinnerContainer:Landroid/view/View;

    .line 161
    const v0, 0x7f0b0126

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedTitleContainer:Landroid/view/View;

    .line 162
    const v0, 0x7f0b0129

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedContainer:Landroid/view/View;

    .line 163
    const v0, 0x7f0b012b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/RecommendedGridView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedGridView:Lcom/showmax/app/ui/widget/RecommendedGridView;

    .line 164
    const v0, 0x7f0b012a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/showmax/app/ui/widget/RefreshProgressBar;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    .line 166
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedGridView:Lcom/showmax/app/ui/widget/RecommendedGridView;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedGridViewListener:Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RecommendedGridView;->setRecommendedGridViewListener(Lcom/showmax/app/ui/widget/RecommendedGridView$RecommendedGridViewListener;)V

    .line 167
    return-void
.end method

.method public showAsset(Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 6
    .param p1, "tvSeries"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 238
    const-string v3, "[%s]::[showAsset]::[mRecommendedAssets is null: %b]"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    sget-object v0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->TAG:Ljava/lang/String;

    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedAssets:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 241
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mContent:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    invoke-virtual {v0, v5}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 247
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->checkImages()V

    .line 250
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->checkRatings()V

    .line 252
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTitleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v1, v1, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mYearTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget v1, v1, Lcom/showmax/lib/api/model/catalogue/Asset;->year:I

    invoke-static {v1}, Lcom/showmax/app/util/StringUtils;->getYear(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mCategoriesTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v1, v1, Lcom/showmax/lib/api/model/catalogue/Asset;->categories:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/showmax/app/util/StringUtils;->getCategories(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mDirectors:Lcom/showmax/app/ui/widget/TagsLayout;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v1, v1, Lcom/showmax/lib/api/model/catalogue/Asset;->crew:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/showmax/app/util/StringUtils;->getDirectorStrings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/TagsLayout;->setTags(Ljava/util/List;)V

    .line 258
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mActors:Lcom/showmax/app/ui/widget/TagsLayout;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v1, v1, Lcom/showmax/lib/api/model/catalogue/Asset;->cast:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/showmax/app/util/StringUtils;->getStarringStrings(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/TagsLayout;->setTags(Ljava/util/List;)V

    .line 259
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mDirectors:Lcom/showmax/app/ui/widget/TagsLayout;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTagsLayoutListener:Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/TagsLayout;->setListener(Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;)V

    .line 260
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mActors:Lcom/showmax/app/ui/widget/TagsLayout;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTagsLayoutListener:Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/TagsLayout;->setListener(Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;)V

    .line 262
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mDescriptionTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v1, v1, Lcom/showmax/lib/api/model/catalogue/Asset;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mAudioLanguages:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v1, v1, Lcom/showmax/lib/api/model/catalogue/Asset;->audioLanguages:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/showmax/app/util/StringUtils;->getLanguagesFromIso(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mSubtitlesLanguages:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTvSerie:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v1, v1, Lcom/showmax/lib/api/model/catalogue/Asset;->subtitlesLanguages:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/showmax/app/util/StringUtils;->getLanguagesFromIso(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mFragmentTvSeriesDetailListener:Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;

    invoke-interface {v0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;->onCheckTrailerButton()V

    .line 270
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedAssets:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedAssets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mFragmentTvSeriesDetailListener:Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;

    invoke-interface {v0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail$FragmentTvSeriesDetailListener;->onLoadRecommendedAssets()V

    .line 285
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 238
    goto/16 :goto_0

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedAssets:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->showRecommendedAssets(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mContent:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, v5}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const v1, 0x7f0d00aa

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->showMessage(I)V

    .line 283
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    invoke-virtual {v0, v2}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method public showRecommendedAssets(Ljava/util/ArrayList;)V
    .locals 6
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
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 307
    const-string v1, "[%s]::[showRecommendedAssets]::[count: %d]"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    sget-object v0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->TAG:Ljava/lang/String;

    aput-object v0, v2, v4

    const/4 v3, 0x1

    if-nez p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedTitleContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedContainer:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :goto_1
    return-void

    .line 307
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 315
    :cond_2
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedAssets:Ljava/util/ArrayList;

    .line 316
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedTitleContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    invoke-virtual {v0, v5}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedGridView:Lcom/showmax/app/ui/widget/RecommendedGridView;

    invoke-virtual {v0, v4}, Lcom/showmax/app/ui/widget/RecommendedGridView;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedGridView:Lcom/showmax/app/ui/widget/RecommendedGridView;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedAssets:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RecommendedGridView;->setData(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public showRecommendedAssetsProgressBar()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedProgressbar:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mRecommendedGridView:Lcom/showmax/app/ui/widget/RecommendedGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/widget/RecommendedGridView;->setVisibility(I)V

    .line 291
    return-void
.end method

.method public showTrailerButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 295
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mAudioSpinnerContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentTvSeriesDetail;->mTrailerBtn:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    return-void
.end method
