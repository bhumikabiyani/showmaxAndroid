.class Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;
.super Landroid/os/AsyncTask;
.source "ActivityPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitPlayerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final STATUS_SUCCESS:I = 0x0

.field public static final STATUS_VIDEO_IS_NOT_WIDEVINE:I = -0xa


# instance fields
.field private mRepairedUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/showmax/app/ui/ActivityPlayer;


# direct methods
.method private constructor <init>(Lcom/showmax/app/ui/ActivityPlayer;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/showmax/app/ui/ActivityPlayer;Lcom/showmax/app/ui/ActivityPlayer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;
    .param p2, "x1"    # Lcom/showmax/app/ui/ActivityPlayer$1;

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;-><init>(Lcom/showmax/app/ui/ActivityPlayer;)V

    return-void
.end method

.method private appendUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 564
    const-string v5, "[APlayer]::[appendUserAgent]::[old url %s]"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    move-object v1, p1

    .line 567
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 569
    const-string v5, "http.agent"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 570
    .local v4, "userAgent":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 573
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :try_start_0
    const-string v5, "user_agent"

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "userAgent":Ljava/lang/String;
    :cond_0
    const-string v5, "[APlayer]::[appendUserAgent]::[new url %s]"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    .line 593
    .end local v1    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 580
    .end local v2    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "userAgent":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "[APlayer]::[appendUserAgent]::[UnsupportedEncodingException]::[%s]"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    .line 584
    .end local v1    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private httpToWidevine(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 521
    const-string v1, "[APlayer]::[httpToWidevine]::[old url %s]"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    move-object v0, p1

    .line 524
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 526
    const-string v1, "http"

    const-string v2, "widevine"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 528
    :cond_0
    const-string v1, "[APlayer]::[httpToWidevine]::[new url %s]"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    return-object v0
.end method

.method private repairUrlFromNewApi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 539
    const-string v2, "[APlayer]::[repairUrlFromNewApi]::[old url %s]"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    move-object v1, p1

    .line 542
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "wvm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 544
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v2

    invoke-virtual {v2, p2, v4}, Lcom/showmax/lib/api/io/CatalogueApi;->loadPlaybackUrl(Ljava/lang/String;Z)Lcom/showmax/lib/api/model/catalogue/PlayVideo;

    move-result-object v0

    .line 545
    .local v0, "playVideo":Lcom/showmax/lib/api/model/catalogue/PlayVideo;
    if-eqz v0, :cond_0

    .line 547
    iget-object v1, v0, Lcom/showmax/lib/api/model/catalogue/PlayVideo;->url:Ljava/lang/String;

    .line 554
    .end local v0    # "playVideo":Lcom/showmax/lib/api/model/catalogue/PlayVideo;
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 552
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    const-string v2, "[APlayer]::[repairUrlFromNewApi]::[new url %s]"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 444
    const-string v6, "[APlayer]::[InitPlayerTask]::[Video is DRM protected, preparing Widevine engine]"

    invoke-static {v6}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 447
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-static {v6}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v0

    .line 448
    .local v0, "appLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;
    invoke-static {v6}, Lcom/showmax/app/ui/ActivityPlayer;->access$600(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/showmax/lib/api/utils/LanguageUtils;->getInstance()Lcom/showmax/lib/api/utils/LanguageUtils;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/showmax/lib/api/utils/LanguageUtils;->convert(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v2

    .line 450
    .local v2, "language":Lcom/showmax/lib/api/model/catalogue/Language;
    :goto_0
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoType:Lcom/showmax/lib/api/model/catalogue/Video$Type;
    invoke-static {v6}, Lcom/showmax/app/ui/ActivityPlayer;->access$700(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Video$Type;

    move-result-object v6

    sget-object v7, Lcom/showmax/lib/api/model/catalogue/Video$Type;->TRAILER:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-ne v6, v7, :cond_1

    move v1, v4

    .line 451
    .local v1, "isTrailer":Z
    :goto_1
    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;
    invoke-static {v6}, Lcom/showmax/app/ui/ActivityPlayer;->access$800(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Asset;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/showmax/lib/api/model/catalogue/Asset;->getTrailerVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;

    move-result-object v3

    .line 453
    .local v3, "video":Lcom/showmax/lib/api/model/catalogue/Video;
    :goto_2
    iget-object v6, v3, Lcom/showmax/lib/api/model/catalogue/Video;->link:Ljava/lang/String;

    iput-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->mRepairedUrl:Ljava/lang/String;

    .line 454
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    iget-object v7, v3, Lcom/showmax/lib/api/model/catalogue/Video;->id:Ljava/lang/String;

    # setter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/showmax/app/ui/ActivityPlayer;->access$502(Lcom/showmax/app/ui/ActivityPlayer;Ljava/lang/String;)Ljava/lang/String;

    .line 457
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->mRepairedUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;
    invoke-static {v7}, Lcom/showmax/app/ui/ActivityPlayer;->access$500(Lcom/showmax/app/ui/ActivityPlayer;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->repairUrlFromNewApi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->mRepairedUrl:Ljava/lang/String;

    .line 459
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    new-instance v7, Lcom/showmax/app/util/SubtitlesHelper;

    iget-object v8, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mSubtitles:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/showmax/app/ui/ActivityPlayer;->access$900(Lcom/showmax/app/ui/ActivityPlayer;)Landroid/widget/TextView;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/showmax/app/util/SubtitlesHelper;-><init>(Landroid/widget/TextView;)V

    # setter for: Lcom/showmax/app/ui/ActivityPlayer;->mSubtitlesHelper:Lcom/showmax/app/util/SubtitlesHelper;
    invoke-static {v6, v7}, Lcom/showmax/app/ui/ActivityPlayer;->access$402(Lcom/showmax/app/ui/ActivityPlayer;Lcom/showmax/app/util/SubtitlesHelper;)Lcom/showmax/app/util/SubtitlesHelper;

    .line 460
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mSubtitlesHelper:Lcom/showmax/app/util/SubtitlesHelper;
    invoke-static {v6}, Lcom/showmax/app/ui/ActivityPlayer;->access$400(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/app/util/SubtitlesHelper;

    move-result-object v6

    iget-object v7, v3, Lcom/showmax/lib/api/model/catalogue/Video;->subtitles:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/showmax/app/util/SubtitlesHelper;->fetchSubtitles(Ljava/util/ArrayList;)Z

    .line 463
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->mRepairedUrl:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->mRepairedUrl:Ljava/lang/String;

    const-string v7, "wvm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 466
    const-string v6, "[APlayer]::[InitPlayerTask]::[video is not widevine]::[%s]"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->mRepairedUrl:Ljava/lang/String;

    aput-object v7, v4, v5

    invoke-static {v6, v4}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    iget-object v4, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->mRepairedUrl:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->appendUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->mRepairedUrl:Ljava/lang/String;

    .line 468
    const/16 v4, -0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 478
    :goto_3
    return-object v4

    .line 448
    .end local v1    # "isTrailer":Z
    .end local v2    # "language":Lcom/showmax/lib/api/model/catalogue/Language;
    .end local v3    # "video":Lcom/showmax/lib/api/model/catalogue/Video;
    :cond_0
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;
    invoke-static {v6}, Lcom/showmax/app/ui/ActivityPlayer;->access$600(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v2

    goto :goto_0

    .restart local v2    # "language":Lcom/showmax/lib/api/model/catalogue/Language;
    :cond_1
    move v1, v5

    .line 450
    goto :goto_1

    .line 451
    .restart local v1    # "isTrailer":Z
    :cond_2
    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;
    invoke-static {v6}, Lcom/showmax/app/ui/ActivityPlayer;->access$800(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Asset;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/showmax/lib/api/model/catalogue/Asset;->getMainVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;

    move-result-object v3

    goto :goto_2

    .line 474
    .restart local v3    # "video":Lcom/showmax/lib/api/model/catalogue/Video;
    :cond_3
    iget-object v4, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->mRepairedUrl:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->appendUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->mRepairedUrl:Ljava/lang/String;

    .line 477
    iget-object v4, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->mRepairedUrl:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->httpToWidevine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->mRepairedUrl:Ljava/lang/String;

    .line 478
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 432
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 13
    .param p1, "status"    # Ljava/lang/Integer;

    .prologue
    const/4 v11, 0x0

    .line 486
    const-string v0, "[APlayer]::[InitPlayerTask]::[onPostExecute]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-static {v0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v7

    .line 490
    .local v7, "appLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$600(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/showmax/lib/api/utils/LanguageUtils;->getInstance()Lcom/showmax/lib/api/utils/LanguageUtils;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/showmax/lib/api/utils/LanguageUtils;->convert(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v9

    .line 491
    .local v9, "language":Lcom/showmax/lib/api/model/catalogue/Language;
    :goto_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoType:Lcom/showmax/lib/api/model/catalogue/Video$Type;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$700(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Video$Type;

    move-result-object v0

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Video$Type;->TRAILER:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-ne v0, v1, :cond_1

    const/4 v8, 0x1

    .line 492
    .local v8, "isTrailer":Z
    :goto_1
    if-eqz v8, :cond_2

    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$800(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Asset;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/showmax/lib/api/model/catalogue/Asset;->getTrailerVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;

    move-result-object v10

    .line 494
    .local v10, "video":Lcom/showmax/lib/api/model/catalogue/Video;
    :goto_2
    iget v0, v10, Lcom/showmax/lib/api/model/catalogue/Video;->duration:I

    invoke-static {v0}, Lcom/showmax/app/util/StringUtils;->getDuration(I)Ljava/lang/String;

    move-result-object v4

    .line 495
    .local v4, "lenght":Ljava/lang/String;
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$800(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Asset;

    move-result-object v0

    iget v0, v0, Lcom/showmax/lib/api/model/catalogue/Asset;->year:I

    invoke-static {v0}, Lcom/showmax/app/util/StringUtils;->getYear(I)Ljava/lang/String;

    move-result-object v5

    .line 497
    .local v5, "movieYear":Ljava/lang/String;
    iget-object v12, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    new-instance v0, Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->mRepairedUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityPlayer;->access$800(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Asset;

    move-result-object v3

    iget-object v3, v3, Lcom/showmax/lib/api/model/catalogue/Asset;->title:Ljava/lang/String;

    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;
    invoke-static {v6}, Lcom/showmax/app/ui/ActivityPlayer;->access$800(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Asset;

    move-result-object v6

    iget-object v6, v6, Lcom/showmax/lib/api/model/catalogue/Asset;->description:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;-><init>(Lcom/showmax/app/ui/ActivityPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/showmax/app/ui/ActivityPlayer;->mPlayerAsset:Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;
    invoke-static {v12, v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$1002(Lcom/showmax/app/ui/ActivityPlayer;Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;)Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;

    .line 498
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mPlayerAsset:Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$1000(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/mautilus/lib/videoview/ui/VideoView;->setAsset(Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;Z)V

    .line 500
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0xa

    if-ne v0, v1, :cond_3

    .line 502
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/mautilus/lib/videoview/ui/VideoView;->setDrmEnabled(Z)V

    .line 503
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # invokes: Lcom/showmax/app/ui/ActivityPlayer;->showContentWarningAndPlay()V
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$1100(Lcom/showmax/app/ui/ActivityPlayer;)V

    .line 512
    :goto_3
    return-void

    .line 490
    .end local v4    # "lenght":Ljava/lang/String;
    .end local v5    # "movieYear":Ljava/lang/String;
    .end local v8    # "isTrailer":Z
    .end local v9    # "language":Lcom/showmax/lib/api/model/catalogue/Language;
    .end local v10    # "video":Lcom/showmax/lib/api/model/catalogue/Video;
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$600(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v9

    goto :goto_0

    .restart local v9    # "language":Lcom/showmax/lib/api/model/catalogue/Language;
    :cond_1
    move v8, v11

    .line 491
    goto :goto_1

    .line 492
    .restart local v8    # "isTrailer":Z
    :cond_2
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$800(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Asset;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/showmax/lib/api/model/catalogue/Asset;->getMainVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;

    move-result-object v10

    goto :goto_2

    .line 508
    .restart local v4    # "lenght":Ljava/lang/String;
    .restart local v5    # "movieYear":Ljava/lang/String;
    .restart local v10    # "video":Lcom/showmax/lib/api/model/catalogue/Video;
    :cond_3
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    new-instance v1, Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->mRepairedUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mUserId:Ljava/lang/String;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityPlayer;->access$1300(Lcom/showmax/app/ui/ActivityPlayer;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-virtual {v6}, Lcom/showmax/app/ui/ActivityPlayer;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v2, v3, v6}, Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    # setter for: Lcom/showmax/app/ui/ActivityPlayer;->mWidevineAsset:Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;
    invoke-static {v0, v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$1202(Lcom/showmax/app/ui/ActivityPlayer;Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;)Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;

    .line 509
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    new-instance v1, Lcom/mautilus/lib/videoview/util/DrmManager;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-virtual {v2}, Lcom/showmax/app/ui/ActivityPlayer;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mautilus/lib/videoview/util/DrmManager;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/showmax/app/ui/ActivityPlayer;->mDrmManager:Lcom/mautilus/lib/videoview/util/DrmManager;
    invoke-static {v0, v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$1402(Lcom/showmax/app/ui/ActivityPlayer;Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/util/DrmManager;

    .line 510
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mDrmManager:Lcom/mautilus/lib/videoview/util/DrmManager;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$1400(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/util/DrmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mDrmManagerListener:Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$1500(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/util/DrmManager;->setDrmManagerListener(Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;)V

    .line 511
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mDrmManager:Lcom/mautilus/lib/videoview/util/DrmManager;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$1400(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/util/DrmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mWidevineAsset:Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$1200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/util/DrmManager;->initDrm(Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;)V

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 432
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
