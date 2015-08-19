.class public abstract Lcom/showmax/app/ui/ActivityBaseDetail;
.super Lcom/showmax/app/ui/ActivityBase;
.source "ActivityBaseDetail.java"


# static fields
.field public static final ACTIVITY_FOR_RESULT_REQUEST_CODE_PURCHASE:I = 0x9f

.field public static final ACTIVITY_FOR_RESULT_REQUEST_CODE_SIGN_IN_AND_PURCHASE:I = 0x9c

.field public static final ACTIVITY_FOR_RESULT_REQUEST_CODE_SIGN_IN_AND_START_PLAYBACK:I = 0x9b

.field public static final ARGS_ASSET:Ljava/lang/String; = "args.asset"

.field public static final ARGS_ASSET_ID:Ljava/lang/String; = "args.asset.id"

.field public static final ARGS_ASSET_TYPE:Ljava/lang/String; = "args.asset.type"

.field public static final ERROR_CODE_403_PARENTAL_CONTROL:Ljava/lang/String; = "LNK1006"

.field public static final SAVED_STATE_ASSET:Ljava/lang/String; = "saved.state.asset"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

.field private mAssetDetailCallback:Lcom/showmax/lib/api/io/ApiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/showmax/lib/api/io/ApiCallback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation
.end field

.field protected mAssetId:Ljava/lang/String;

.field protected mAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

.field private mAudioLanguagesDialogListener:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;

.field protected mRecommendedAssets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private mRecommendedCallback:Lcom/showmax/lib/api/io/ApiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/showmax/lib/api/io/ApiCallback",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResumeDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

.field private mResumeTimeInSeconds:I

.field private mSelectedAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;

.field private mSyncUserlistForPlaybackListener:Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;

.field private mVerifyPlaybackCallback:Lcom/showmax/lib/api/io/ApiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/showmax/lib/api/io/ApiCallback",
            "<",
            "Lretrofit/client/Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/showmax/app/ui/ActivityBaseDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/ActivityBaseDetail;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;-><init>()V

    .line 385
    new-instance v0, Lcom/showmax/app/ui/ActivityBaseDetail$2;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityBaseDetail$2;-><init>(Lcom/showmax/app/ui/ActivityBaseDetail;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAudioLanguagesDialogListener:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;

    .line 411
    new-instance v0, Lcom/showmax/app/ui/ActivityBaseDetail$3;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityBaseDetail$3;-><init>(Lcom/showmax/app/ui/ActivityBaseDetail;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mResumeDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    .line 476
    new-instance v0, Lcom/showmax/app/ui/ActivityBaseDetail$4;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/showmax/app/ui/ActivityBaseDetail$4;-><init>(Lcom/showmax/app/ui/ActivityBaseDetail;I)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAssetDetailCallback:Lcom/showmax/lib/api/io/ApiCallback;

    .line 494
    new-instance v0, Lcom/showmax/app/ui/ActivityBaseDetail$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/showmax/app/ui/ActivityBaseDetail$5;-><init>(Lcom/showmax/app/ui/ActivityBaseDetail;I)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mRecommendedCallback:Lcom/showmax/lib/api/io/ApiCallback;

    .line 516
    new-instance v0, Lcom/showmax/app/ui/ActivityBaseDetail$6;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityBaseDetail$6;-><init>(Lcom/showmax/app/ui/ActivityBaseDetail;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mSyncUserlistForPlaybackListener:Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;

    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/ActivityBaseDetail;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityBaseDetail;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/ActivityBaseDetail;)Lcom/showmax/lib/api/model/catalogue/Language;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityBaseDetail;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mSelectedAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;

    return-object v0
.end method

.method static synthetic access$102(Lcom/showmax/app/ui/ActivityBaseDetail;Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Language;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityBaseDetail;
    .param p1, "x1"    # Lcom/showmax/lib/api/model/catalogue/Language;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mSelectedAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;

    return-object p1
.end method

.method static synthetic access$202(Lcom/showmax/app/ui/ActivityBaseDetail;Lcom/showmax/lib/api/io/ApiCallback;)Lcom/showmax/lib/api/io/ApiCallback;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityBaseDetail;
    .param p1, "x1"    # Lcom/showmax/lib/api/io/ApiCallback;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mVerifyPlaybackCallback:Lcom/showmax/lib/api/io/ApiCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/showmax/app/ui/ActivityBaseDetail;Lretrofit/RetrofitError;Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityBaseDetail;
    .param p1, "x1"    # Lretrofit/RetrofitError;
    .param p2, "x2"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/showmax/app/ui/ActivityBaseDetail;->showPreflightCheckErrorDialog(Lretrofit/RetrofitError;Lcom/showmax/lib/api/model/catalogue/Asset;)V

    return-void
.end method

.method static synthetic access$400(Lcom/showmax/app/ui/ActivityBaseDetail;)I
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityBaseDetail;

    .prologue
    .line 43
    iget v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mResumeTimeInSeconds:I

    return v0
.end method

.method static synthetic access$402(Lcom/showmax/app/ui/ActivityBaseDetail;I)I
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityBaseDetail;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mResumeTimeInSeconds:I

    return p1
.end method

.method static synthetic access$500(Lcom/showmax/app/ui/ActivityBaseDetail;)Lcom/showmax/lib/api/io/ApiCallback;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityBaseDetail;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAssetDetailCallback:Lcom/showmax/lib/api/io/ApiCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/showmax/app/ui/ActivityBaseDetail;)Lcom/showmax/lib/api/io/ApiCallback;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityBaseDetail;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mRecommendedCallback:Lcom/showmax/lib/api/io/ApiCallback;

    return-object v0
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->getSuccessorLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".DETAIL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showPreflightCheckErrorDialog(Lretrofit/RetrofitError;Lcom/showmax/lib/api/model/catalogue/Asset;)V
    .locals 8
    .param p1, "error"    # Lretrofit/RetrofitError;
    .param p2, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;

    .prologue
    const/4 v7, 0x1

    .line 550
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 552
    invoke-static {p1}, Lcom/showmax/lib/api/utils/ApiErrorUtils;->parseError(Lretrofit/RetrofitError;)Lcom/showmax/lib/api/model/error/ApiError;

    move-result-object v0

    .line 553
    .local v0, "apiError":Lcom/showmax/lib/api/model/error/ApiError;
    const/4 v1, 0x0

    .line 554
    .local v1, "errorCode":Ljava/lang/String;
    const/4 v2, 0x0

    .line 556
    .local v2, "errorMessage":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 558
    iget-object v1, v0, Lcom/showmax/lib/api/model/error/ApiError;->errorCode:Ljava/lang/String;

    .line 559
    iget-object v2, v0, Lcom/showmax/lib/api/model/error/ApiError;->message:Ljava/lang/String;

    .line 566
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    if-eqz v1, :cond_0

    .line 570
    const-string v4, " (%s)"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_0
    new-instance v4, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    const/16 v5, 0x38

    invoke-direct {v4, p0, v5}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;-><init>(Landroid/content/Context;I)V

    .line 575
    invoke-virtual {v4, v7}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->cancelable(Z)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v4

    .line 576
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->message(Ljava/lang/String;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v4

    const v5, 0x7f0d0060

    .line 577
    invoke-virtual {v4, v5}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->positiveBtn(I)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v4

    .line 578
    invoke-virtual {v4}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->show()V

    .line 580
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v4

    invoke-virtual {v4}, Lretrofit/client/Response;->getStatus()I

    move-result v4

    const/16 v5, 0x191

    if-ne v4, v5, :cond_1

    .line 582
    invoke-static {p0}, Lcom/showmax/app/util/MauFlurry;->onSubscriptionExpired(Landroid/content/Context;)V

    .line 585
    .end local v0    # "apiError":Lcom/showmax/lib/api/model/error/ApiError;
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v2    # "errorMessage":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-void

    .line 563
    .restart local v0    # "apiError":Lcom/showmax/lib/api/model/error/ApiError;
    .restart local v1    # "errorCode":Ljava/lang/String;
    .restart local v2    # "errorMessage":Ljava/lang/String;
    :cond_2
    const v4, 0x7f0d00b6

    invoke-virtual {p0, v4}, Lcom/showmax/app/ui/ActivityBaseDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected initData(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 462
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "args.asset"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/catalogue/Asset;

    iput-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 463
    const-string v2, "args.asset.id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAssetId:Ljava/lang/String;

    .line 464
    const-string v2, "args.asset.type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    iput-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 466
    if-eqz p1, :cond_0

    .line 468
    const-string v2, "saved.state.asset"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 469
    .local v1, "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    if-eqz v1, :cond_0

    .line 471
    iput-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 474
    .end local v1    # "asset":Lcom/showmax/lib/api/model/catalogue/Asset;
    :cond_0
    return-void
.end method

.method public loadEpisodeDetail()V
    .locals 4

    .prologue
    .line 174
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAssetId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 176
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    .line 177
    .local v0, "currentLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAssetId:Ljava/lang/String;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAssetDetailCallback:Lcom/showmax/lib/api/io/ApiCallback;

    invoke-virtual {v1, v2, v0, v3}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAssetById(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V

    .line 179
    .end local v0    # "currentLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    :cond_0
    return-void
.end method

.method public loadMovieDetail()V
    .locals 4

    .prologue
    .line 165
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAssetId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 167
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    .line 168
    .local v0, "currentLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAssetId:Ljava/lang/String;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAssetDetailCallback:Lcom/showmax/lib/api/io/ApiCallback;

    invoke-virtual {v1, v2, v0, v3}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAssetById(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V

    .line 170
    .end local v0    # "currentLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    :cond_0
    return-void
.end method

.method public loadRecommendedAssets()V
    .locals 7

    .prologue
    .line 192
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v0, :cond_0

    .line 194
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v2

    .line 197
    .local v2, "language":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v0, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->EPISODE:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    if-ne v0, v1, :cond_1

    .line 200
    sget-object v3, Lcom/showmax/lib/api/model/catalogue/Asset$Type;->TV_SERIES:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 207
    .local v3, "recommendedType":Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    :goto_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 208
    .local v6, "recommendedCount":I
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v1, v1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mRecommendedCallback:Lcom/showmax/lib/api/io/ApiCallback;

    invoke-virtual/range {v0 .. v5}, Lcom/showmax/lib/api/io/CatalogueApi;->loadRecommendedAssetsAnonymous(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Ljava/lang/Integer;Lretrofit/Callback;)V

    .line 211
    .end local v2    # "language":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    .end local v3    # "recommendedType":Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    .end local v6    # "recommendedCount":I
    :cond_0
    return-void

    .line 204
    .restart local v2    # "language":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    :cond_1
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v3, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->type:Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .restart local v3    # "recommendedType":Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    goto :goto_0
.end method

.method public loadTvSeriesDetail()V
    .locals 4

    .prologue
    .line 183
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAssetId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 185
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    .line 186
    .local v0, "currentLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAssetId:Ljava/lang/String;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAssetDetailCallback:Lcom/showmax/lib/api/io/ApiCallback;

    invoke-virtual {v1, v2, v0, v3}, Lcom/showmax/lib/api/io/CatalogueApi;->loadAssetById(Ljava/lang/String;Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;Lretrofit/Callback;)V

    .line 188
    .end local v0    # "currentLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/showmax/app/ui/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 144
    const/16 v0, 0x93

    if-ne p2, v0, :cond_1

    .line 146
    const/16 v0, 0x9b

    if-ne p1, v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->preverifyAsset()V

    .line 150
    :cond_0
    const/16 v0, 0x9c

    if-ne p1, v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->startPurchaseActivity()V

    .line 155
    :cond_1
    return-void
.end method

.method public abstract onAssetDetailLoaded(Lcom/showmax/lib/api/model/catalogue/Asset;)V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/showmax/app/ui/ActivityBaseDetail;->initData(Landroid/os/Bundle;)V

    .line 89
    invoke-static {p0}, Lcom/showmax/app/util/MauFlurry;->onNavDetailOpen(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 133
    invoke-static {p0}, Lcom/showmax/app/util/MauFlurry;->onNavDetailClose(Landroid/content/Context;)V

    .line 135
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onDestroy()V

    .line 136
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onPause()V

    .line 114
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onPostCreate(Landroid/os/Bundle;)V

    .line 102
    return-void
.end method

.method public abstract onRecommendedAssetsLoaded(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Asset;",
            ">;)V"
        }
    .end annotation
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onResume()V

    .line 108
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    const-string v0, "saved.state.asset"

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 126
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onStart()V

    .line 96
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onStop()V

    .line 120
    return-void
.end method

.method public preverifyAsset()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 294
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserAccessData(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v7

    .line 295
    .local v2, "token":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "userId":Ljava/lang/String;
    iget-object v5, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v5}, Lcom/showmax/lib/api/model/catalogue/Asset;->getMainVideoAudioLanguages()Ljava/util/ArrayList;

    move-result-object v1

    .line 298
    .local v1, "mainVideoLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/showmax/lib/api/model/catalogue/Language;

    invoke-virtual {v6, v5}, Lcom/showmax/lib/api/model/catalogue/Asset;->getMainVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;

    move-result-object v0

    .line 305
    .local v0, "mainVideo":Lcom/showmax/lib/api/model/catalogue/Video;
    if-eqz v0, :cond_0

    .line 309
    iget-object v4, v0, Lcom/showmax/lib/api/model/catalogue/Video;->id:Ljava/lang/String;

    .line 311
    .local v4, "videoId":Ljava/lang/String;
    new-instance v5, Lcom/showmax/app/ui/ActivityBaseDetail$1;

    invoke-direct {v5, p0, v4}, Lcom/showmax/app/ui/ActivityBaseDetail$1;-><init>(Lcom/showmax/app/ui/ActivityBaseDetail;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mVerifyPlaybackCallback:Lcom/showmax/lib/api/io/ApiCallback;

    .line 350
    iget-object v5, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mVerifyPlaybackCallback:Lcom/showmax/lib/api/io/ApiCallback;

    invoke-virtual {p0, v5}, Lcom/showmax/app/ui/ActivityBaseDetail;->showProgress(Lcom/showmax/lib/api/io/ApiCallback;)V

    .line 351
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v5

    iget-object v6, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mVerifyPlaybackCallback:Lcom/showmax/lib/api/io/ApiCallback;

    invoke-virtual {v5, v2, v3, v4, v6}, Lcom/showmax/lib/api/io/CatalogueApi;->verifyPlayback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)V

    goto :goto_0
.end method

.method public purchaseAsset()V
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/showmax/lib/api/utils/UserPrefs;->isUserSignedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-static {p0}, Lcom/showmax/app/util/UiUtils;->showNotSignedInToast(Landroid/content/Context;)V

    .line 279
    const/16 v0, 0x9c

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityBaseDetail;->startSignInActivity(I)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->startPurchaseActivity()V

    goto :goto_0
.end method

.method public showAudioLanguageDialog(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/lib/api/model/catalogue/Video$Type;)V
    .locals 6
    .param p1, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p2, "videoType"    # Lcom/showmax/lib/api/model/catalogue/Video$Type;

    .prologue
    const v3, 0x7f0d008c

    .line 240
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Lcom/showmax/lib/api/model/catalogue/Video$Type;->TRAILER:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-ne p2, v0, :cond_1

    .line 244
    invoke-static {}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->getInstance()Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    move-result-object v0

    const/16 v2, 0x1a

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 247
    invoke-virtual {v1}, Lcom/showmax/lib/api/model/catalogue/Asset;->getTrailerVideoAudioLanguages()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAudioLanguagesDialogListener:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;

    move-object v1, p0

    .line 244
    invoke-virtual/range {v0 .. v5}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->showLanguageDialog(Landroid/content/Context;IILjava/util/ArrayList;Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-static {}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->getInstance()Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    move-result-object v0

    const/16 v2, 0x19

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 255
    invoke-virtual {v1}, Lcom/showmax/lib/api/model/catalogue/Asset;->getMainVideoAudioLanguages()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAudioLanguagesDialogListener:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;

    move-object v1, p0

    .line 252
    invoke-virtual/range {v0 .. v5}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->showLanguageDialog(Landroid/content/Context;IILjava/util/ArrayList;Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;)V

    goto :goto_0
.end method

.method public showResumePlaybackDialog(I)V
    .locals 9
    .param p1, "resumeTimeInSeconds"    # I

    .prologue
    const/4 v8, 0x1

    .line 364
    const v4, 0x7f0d008e

    invoke-virtual {p0, v4}, Lcom/showmax/app/ui/ActivityBaseDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "title":Ljava/lang/String;
    const v4, 0x7f0d008d

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/showmax/app/util/StringUtils;->getDuration(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/showmax/app/ui/ActivityBaseDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "message":Ljava/lang/String;
    const v4, 0x7f0d0061

    invoke-virtual {p0, v4}, Lcom/showmax/app/ui/ActivityBaseDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "positive":Ljava/lang/String;
    const v4, 0x7f0d0063

    invoke-virtual {p0, v4}, Lcom/showmax/app/ui/ActivityBaseDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "negative":Ljava/lang/String;
    new-instance v4, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    const/16 v5, 0x37

    invoke-direct {v4, p0, v5}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;-><init>(Landroid/content/Context;I)V

    .line 370
    invoke-virtual {v4, v8}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->cancelable(Z)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v4

    .line 371
    invoke-virtual {v4, v3}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->title(Ljava/lang/String;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v4

    .line 372
    invoke-virtual {v4, v0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->message(Ljava/lang/String;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v4

    .line 373
    invoke-virtual {v4, v2}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->positiveBtn(Ljava/lang/String;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v4

    .line 374
    invoke-virtual {v4, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->negativeBtn(Ljava/lang/String;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mResumeDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    .line 375
    invoke-virtual {v4, v5}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->listener(Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v4

    .line 376
    invoke-virtual {v4}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->show()V

    .line 377
    return-void
.end method

.method public startMainVideo()V
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/showmax/lib/api/utils/UserPrefs;->isUserSignedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/showmax/app/util/UiUtils;->showNotSignedInToast(Landroid/content/Context;)V

    .line 266
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityBaseDetail;->startSignInActivity(I)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->preverifyAsset()V

    goto :goto_0
.end method

.method public startPlayback(Lcom/showmax/lib/api/model/catalogue/Video$Type;Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/lib/api/model/catalogue/Language;I)V
    .locals 0
    .param p1, "videoType"    # Lcom/showmax/lib/api/model/catalogue/Video$Type;
    .param p2, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p3, "audioLanguage"    # Lcom/showmax/lib/api/model/catalogue/Language;
    .param p4, "resumeTimeInSeconds"    # I

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->hideProgress()V

    .line 235
    invoke-static {p0, p1, p2, p3, p4}, Lcom/showmax/app/ui/ActivityPlayer;->startActivityPlayer(Landroid/app/Activity;Lcom/showmax/lib/api/model/catalogue/Video$Type;Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/lib/api/model/catalogue/Language;I)V

    .line 236
    return-void
.end method

.method public startPurchaseActivity()V
    .locals 2

    .prologue
    .line 289
    const/16 v0, 0x9f

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v1, v1, Lcom/showmax/lib/api/model/catalogue/Asset;->id:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/showmax/app/ui/ActivityPurchaseAsset;->startPurchaseAssetActivityForResult(ILandroid/app/Activity;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public startTrailer()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 215
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {v1}, Lcom/showmax/lib/api/model/catalogue/Asset;->getTrailerVideoAudioLanguages()Ljava/util/ArrayList;

    move-result-object v0

    .line 218
    .local v0, "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 221
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    sget-object v2, Lcom/showmax/lib/api/model/catalogue/Video$Type;->TRAILER:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    invoke-virtual {p0, v1, v2}, Lcom/showmax/app/ui/ActivityBaseDetail;->showAudioLanguageDialog(Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/lib/api/model/catalogue/Video$Type;)V

    .line 230
    .end local v0    # "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    :cond_0
    :goto_0
    return-void

    .line 223
    .restart local v0    # "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 226
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Language;

    iput-object v1, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mSelectedAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;

    .line 227
    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Video$Type;->TRAILER:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mSelectedAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;

    invoke-static {p0, v1, v2, v3, v4}, Lcom/showmax/app/ui/ActivityPlayer;->startActivityPlayer(Landroid/app/Activity;Lcom/showmax/lib/api/model/catalogue/Video$Type;Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/lib/api/model/catalogue/Language;I)V

    goto :goto_0
.end method

.method public syncUserListsForPlayback()V
    .locals 5

    .prologue
    .line 356
    iget-object v3, p0, Lcom/showmax/app/ui/ActivityBaseDetail;->mSyncUserlistForPlaybackListener:Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;

    invoke-static {v3}, Lcom/showmax/app/io/UserlistTaskV2;->newSyncUserlistsTask(Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;)Lcom/showmax/app/io/UserlistTaskV2;

    move-result-object v0

    .line 357
    .local v0, "task":Lcom/showmax/app/io/UserlistTaskV2;
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserAccessData(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 358
    .local v1, "token":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityBaseDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 359
    .local v2, "userId":Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/showmax/app/io/UserlistTaskV2;->execute(Lcom/showmax/app/io/UserlistTaskV2;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method
