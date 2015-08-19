.class public Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;
.super Lcom/showmax/app/ui/fragment/FragmentBase;
.source "FragmentSplashTestTrailer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final WELCOME_VIDEO_SKIP_LIMIT:I = 0x1388


# instance fields
.field private mDrmManagerListener:Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;

.field private mFetchVideoUrlCallback:Lcom/showmax/lib/api/io/ApiCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/showmax/lib/api/io/ApiCallback",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/PlayVideo;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;

.field private mOnSkipClickListener:Landroid/view/View$OnClickListener;

.field private mSkip:Landroid/widget/TextView;

.field private mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

.field private mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;-><init>()V

    .line 171
    new-instance v0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$1;-><init>(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)V

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mOnSkipClickListener:Landroid/view/View$OnClickListener;

    .line 182
    new-instance v0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$2;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$2;-><init>(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)V

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    .line 257
    new-instance v0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$4;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$4;-><init>(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)V

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mDrmManagerListener:Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;

    .line 302
    new-instance v0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$5;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$5;-><init>(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)V

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mFetchVideoUrlCallback:Lcom/showmax/lib/api/io/ApiCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->finishWelcomeVideo()V

    return-void
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mListener:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)Lcom/mautilus/lib/videoview/ui/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->showSkipDelayed()V

    return-void
.end method

.method static synthetic access$400(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mSkip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->httpToWidevine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->appendUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->startWelcomeVideo(Ljava/lang/String;)V

    return-void
.end method

.method private appendUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 342
    move-object v1, p1

    .line 343
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 345
    const-string v5, "http.agent"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, "userAgent":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :try_start_0
    const-string v5, "user_agent"

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "userAgent":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    .line 365
    .end local v1    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 356
    .end local v2    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "userAgent":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "[ActivitySplash]::[appendUserAgent]::[UnsupportedEncodingException]::[%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/mautilus/lib/common/util/MauLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    .line 360
    .end local v1    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private finishWelcomeVideo()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->suspend()V

    .line 300
    return-void
.end method

.method private httpToWidevine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 327
    move-object v0, p1

    .line 328
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 330
    const-string v1, "http"

    const-string v2, "widevine"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_0
    return-object v0
.end method

.method private initWelcomeVideo()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->showProgress()V

    .line 282
    invoke-static {}, Lcom/showmax/lib/api/io/CatalogueApi;->getInstance()Lcom/showmax/lib/api/io/CatalogueApi;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mFetchVideoUrlCallback:Lcom/showmax/lib/api/io/ApiCallback;

    invoke-virtual {v0, v1}, Lcom/showmax/lib/api/io/CatalogueApi;->loadWelcomeVideoUrl(Lretrofit/Callback;)V

    .line 283
    return-void
.end method

.method public static newInstance()Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;
    .locals 3

    .prologue
    .line 158
    const-string v2, "[_FragmentSplashTestTrailer]::[newInstance]"

    invoke-static {v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 159
    new-instance v1, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    invoke-direct {v1}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;-><init>()V

    .line 160
    .local v1, "f":Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 161
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->setArguments(Landroid/os/Bundle;)V

    .line 162
    return-object v1
.end method

.method private showSkipDelayed()V
    .locals 4

    .prologue
    .line 246
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 247
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$3;

    invoke-direct {v1, p0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$3;-><init>(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    return-void
.end method

.method private startWelcomeVideo(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 288
    new-instance v1, Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;

    const-string v2, "anonymous"

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 289
    .local v1, "widevineAsset":Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;
    new-instance v0, Lcom/mautilus/lib/videoview/util/DrmManager;

    invoke-virtual {p0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mautilus/lib/videoview/util/DrmManager;-><init>(Landroid/content/Context;)V

    .line 290
    .local v0, "drmManager":Lcom/mautilus/lib/videoview/util/DrmManager;
    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mDrmManagerListener:Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;

    invoke-virtual {v0, v2}, Lcom/mautilus/lib/videoview/util/DrmManager;->setDrmManagerListener(Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;)V

    .line 291
    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/util/DrmManager;->initDrm(Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;)V

    .line 292
    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-virtual {v2, v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->setDrmManagerAsset(Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;)V

    .line 293
    iget-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mautilus/lib/videoview/ui/VideoView;->setDrmEnabled(Z)V

    .line 294
    return-void
.end method


# virtual methods
.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    invoke-direct {p0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->initWelcomeVideo()V

    .line 117
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mListener:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->onAttach(Landroid/app/Activity;)V

    .line 91
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 88
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
    .line 75
    invoke-super {p0, p1}, Lcom/showmax/app/ui/fragment/FragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    const v0, 0x7f030048

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;->onDetach()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mListener:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;

    .line 136
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;->onStart()V

    .line 123
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcom/showmax/app/ui/fragment/FragmentBase;->onStop()V

    .line 129
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1, p2}, Lcom/showmax/app/ui/fragment/FragmentBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 103
    const v0, 0x7f0b0132

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mautilus/lib/videoview/ui/VideoView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    .line 104
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->setVideoViewListener(Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;)V

    .line 106
    const v0, 0x7f0b0133

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mSkip:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mSkip:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mOnSkipClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    return-void
.end method
