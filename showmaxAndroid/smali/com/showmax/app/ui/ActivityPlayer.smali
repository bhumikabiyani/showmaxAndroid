.class public Lcom/showmax/app/ui/ActivityPlayer;
.super Lcom/showmax/app/ui/ActivityBase;
.source "ActivityPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;,
        Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;,
        Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_ASSET:Ljava/lang/String; = "bundle.key.asset"

.field public static final BUNDLE_KEY_AUDIO_LANGUAGE:Ljava/lang/String; = "bundle.key.audio.language"

.field public static final BUNDLE_KEY_VIDEO_END_POSITION:Ljava/lang/String; = "bundle.key.video.end.position"

.field public static final BUNDLE_KEY_VIDEO_TYPE:Ljava/lang/String; = "bundle.video.type"

.field public static final DELAY_FINISH:I = 0x1388

.field private static final LOG:Z = true

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

.field private mAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;

.field private mClickedWhenPaused:Z

.field private mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

.field private mContentWarningView:Lcom/showmax/app/ui/widget/ContentWarningView;

.field private mCurrentPosition:I

.field private mDelayedEnd:Ljava/lang/Runnable;

.field private mDrmManager:Lcom/mautilus/lib/videoview/util/DrmManager;

.field private mDrmManagerListener:Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;

.field private mHandler:Landroid/os/Handler;

.field private mPlayerAsset:Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;

.field private mSubtitles:Landroid/widget/TextView;

.field private mSubtitlesHelper:Lcom/showmax/app/util/SubtitlesHelper;

.field private mSubtitlesLanguagesDialogListener:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;

.field private mUpdateEndTimeTaskListener:Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;

.field private mUserId:Ljava/lang/String;

.field private mVideoId:Ljava/lang/String;

.field private mVideoType:Lcom/showmax/lib/api/model/catalogue/Video$Type;

.field private mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

.field private mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

.field private mWidevineAsset:Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/showmax/app/ui/ActivityPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/ActivityPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;-><init>()V

    .line 224
    new-instance v0, Lcom/showmax/app/ui/ActivityPlayer$1;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityPlayer$1;-><init>(Lcom/showmax/app/ui/ActivityPlayer;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mSubtitlesLanguagesDialogListener:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;

    .line 379
    new-instance v0, Lcom/showmax/app/ui/ActivityPlayer$2;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityPlayer$2;-><init>(Lcom/showmax/app/ui/ActivityPlayer;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

    .line 598
    new-instance v0, Lcom/showmax/app/ui/ActivityPlayer$3;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityPlayer$3;-><init>(Lcom/showmax/app/ui/ActivityPlayer;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mDrmManagerListener:Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;

    .line 637
    new-instance v0, Lcom/showmax/app/ui/ActivityPlayer$4;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityPlayer$4;-><init>(Lcom/showmax/app/ui/ActivityPlayer;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    .line 927
    new-instance v0, Lcom/showmax/app/ui/ActivityPlayer$5;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityPlayer$5;-><init>(Lcom/showmax/app/ui/ActivityPlayer;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mUpdateEndTimeTaskListener:Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;

    .line 958
    new-instance v0, Lcom/showmax/app/ui/ActivityPlayer$6;

    invoke-direct {v0, p0}, Lcom/showmax/app/ui/ActivityPlayer$6;-><init>(Lcom/showmax/app/ui/ActivityPlayer;)V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mDelayedEnd:Ljava/lang/Runnable;

    .line 1015
    return-void
.end method

.method static synthetic access$100(Lcom/showmax/app/ui/ActivityPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 66
    iget v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$1000(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mPlayerAsset:Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/showmax/app/ui/ActivityPlayer;Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;)Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;
    .param p1, "x1"    # Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mPlayerAsset:Lcom/showmax/app/ui/ActivityPlayer$PlayerAsset;

    return-object p1
.end method

.method static synthetic access$102(Lcom/showmax/app/ui/ActivityPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$1100(Lcom/showmax/app/ui/ActivityPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityPlayer;->showContentWarningAndPlay()V

    return-void
.end method

.method static synthetic access$1200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mWidevineAsset:Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/showmax/app/ui/ActivityPlayer;Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;)Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;
    .param p1, "x1"    # Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mWidevineAsset:Lcom/showmax/app/ui/ActivityPlayer$WidevineAsset;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/showmax/app/ui/ActivityPlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/util/DrmManager;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mDrmManager:Lcom/mautilus/lib/videoview/util/DrmManager;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/showmax/app/ui/ActivityPlayer;Lcom/mautilus/lib/videoview/util/DrmManager;)Lcom/mautilus/lib/videoview/util/DrmManager;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;
    .param p1, "x1"    # Lcom/mautilus/lib/videoview/util/DrmManager;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mDrmManager:Lcom/mautilus/lib/videoview/util/DrmManager;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mDrmManagerListener:Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/showmax/app/ui/ActivityPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityPlayer;->delayedFinish()V

    return-void
.end method

.method static synthetic access$1700(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/showmax/app/ui/ActivityPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mClickedWhenPaused:Z

    return v0
.end method

.method static synthetic access$302(Lcom/showmax/app/ui/ActivityPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mClickedWhenPaused:Z

    return p1
.end method

.method static synthetic access$400(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/app/util/SubtitlesHelper;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mSubtitlesHelper:Lcom/showmax/app/util/SubtitlesHelper;

    return-object v0
.end method

.method static synthetic access$402(Lcom/showmax/app/ui/ActivityPlayer;Lcom/showmax/app/util/SubtitlesHelper;)Lcom/showmax/app/util/SubtitlesHelper;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;
    .param p1, "x1"    # Lcom/showmax/app/util/SubtitlesHelper;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mSubtitlesHelper:Lcom/showmax/app/util/SubtitlesHelper;

    return-object p1
.end method

.method static synthetic access$500(Lcom/showmax/app/ui/ActivityPlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/showmax/app/ui/ActivityPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Language;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;

    return-object v0
.end method

.method static synthetic access$700(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Video$Type;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoType:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    return-object v0
.end method

.method static synthetic access$800(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/lib/api/model/catalogue/Asset;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    return-object v0
.end method

.method static synthetic access$900(Lcom/showmax/app/ui/ActivityPlayer;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mSubtitles:Landroid/widget/TextView;

    return-object v0
.end method

.method private delayedFinish()V
    .locals 4

    .prologue
    .line 948
    const-string v0, "[APlayer]::[delayedFinish]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 952
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mHandler:Landroid/os/Handler;

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mDelayedEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 955
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mDelayedEnd:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 956
    return-void
.end method

.method private initData(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 295
    const-string v2, "[APlayer]::[initData]::[savedInstanceState is null: %b]"

    new-array v3, v0, [Ljava/lang/Object;

    if-nez p1, :cond_4

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    if-nez p1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 301
    :cond_0
    if-eqz p1, :cond_3

    .line 303
    const-string v0, "bundle.key.asset"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Asset;

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    .line 304
    const-string v0, "bundle.key.audio.language"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Language;

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;

    .line 305
    const-string v0, "bundle.video.type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/showmax/lib/api/model/catalogue/Video$Type;->fromOrdinal(I)Lcom/showmax/lib/api/model/catalogue/Video$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoType:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    .line 306
    const-string v0, "bundle.key.video.end.position"

    iget v1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I

    .line 308
    invoke-static {p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mUserId:Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mUserId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mUserId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    :cond_1
    const-string v0, "anonymous"

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mUserId:Ljava/lang/String;

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mUserId:Ljava/lang/String;

    const-string v1, ":"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mUserId:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mUserId:Ljava/lang/String;

    const-string v1, "/"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mUserId:Ljava/lang/String;

    .line 316
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 295
    goto :goto_0
.end method

.method private initViews()V
    .locals 22

    .prologue
    .line 322
    const-string v1, "[APlayer]::[initViews]"

    invoke-static {v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 324
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mHandler:Landroid/os/Handler;

    .line 326
    const v1, 0x7f0b00a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivityPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mautilus/lib/videoview/ui/VideoView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/VideoView;->setVideoViewListener(Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-virtual {v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->enableControls()V

    .line 330
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    const v2, 0x7f03007f

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/VideoView;->setTopContainer(I)V

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    const v2, 0x7f03007e

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/VideoView;->setMiddleContainer(I)V

    .line 332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    const v2, 0x7f03007d

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/VideoView;->setBottomContainer(I)V

    .line 333
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    const/4 v2, 0x0

    const v3, 0x7f0b0181

    const v4, 0x7f0b017f

    const v5, 0x7f0b0180

    const v6, 0x7f0b0182

    const v7, 0x7f0b0183

    const v8, 0x7f0b0179

    const v9, 0x7f0b017b

    const v10, 0x7f0b017c

    const v11, 0x7f0b017d

    const v12, 0x7f0b0172

    const v13, 0x7f0b0174

    const v14, 0x7f0b0173

    const v15, 0x7f0b0175

    const v16, 0x7f020053

    const v17, 0x7f020054

    invoke-virtual/range {v1 .. v17}, Lcom/mautilus/lib/videoview/ui/VideoView;->initCustomControls(IIIIIIIIIIIIIIII)V

    .line 342
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/VideoView;->setDrmEnabled(Z)V

    .line 343
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/VideoView;->setMovieDetailEnabled(Z)V

    .line 346
    invoke-static/range {p0 .. p0}, Lcom/showmax/lib/api/utils/UserPrefs;->getCurrentLanguage(Landroid/content/Context;)Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;

    move-result-object v18

    .line 347
    .local v18, "appLanguage":Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/showmax/lib/api/utils/LanguageUtils;->getInstance()Lcom/showmax/lib/api/utils/LanguageUtils;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/showmax/lib/api/utils/LanguageUtils;->convert(Lcom/showmax/lib/api/io/ApiConstants$AppLanguage;)Lcom/showmax/lib/api/model/catalogue/Language;

    move-result-object v20

    .line 349
    .local v20, "language":Lcom/showmax/lib/api/model/catalogue/Language;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoType:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    sget-object v2, Lcom/showmax/lib/api/model/catalogue/Video$Type;->TRAILER:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-ne v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Lcom/showmax/lib/api/model/catalogue/Asset;->getTrailerVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;

    move-result-object v1

    .line 350
    invoke-virtual {v1}, Lcom/showmax/lib/api/model/catalogue/Video;->getAvailableSubtitles()Ljava/util/ArrayList;

    move-result-object v19

    .line 351
    .local v19, "availableSubtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    :goto_1
    if-eqz v19, :cond_2

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v21, 0x1

    .line 352
    .local v21, "showSubtitleIcon":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    move/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->setSubtitlesSelectionEnabled(Z)V

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/VideoView;->setVolumeControlsEnabled(Z)V

    .line 355
    const v1, 0x7f0b00a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivityPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/showmax/app/ui/widget/ContentWarningView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mContentWarningView:Lcom/showmax/app/ui/widget/ContentWarningView;

    .line 356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-virtual {v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->getSubtitlesTextView()Landroid/widget/TextView;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mSubtitles:Landroid/widget/TextView;

    .line 357
    return-void

    .line 347
    .end local v19    # "availableSubtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    .end local v20    # "language":Lcom/showmax/lib/api/model/catalogue/Language;
    .end local v21    # "showSubtitleIcon":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/showmax/app/ui/ActivityPlayer;->mAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;

    move-object/from16 v20, v0

    goto :goto_0

    .line 350
    .restart local v20    # "language":Lcom/showmax/lib/api/model/catalogue/Language;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/showmax/app/ui/ActivityPlayer;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Lcom/showmax/lib/api/model/catalogue/Asset;->getMainVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/showmax/lib/api/model/catalogue/Video;->getAvailableSubtitles()Ljava/util/ArrayList;

    move-result-object v19

    goto :goto_1

    .line 351
    .restart local v19    # "availableSubtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    :cond_2
    const/16 v21, 0x0

    goto :goto_2
.end method

.method private saveEndTimeOnServer()V
    .locals 10

    .prologue
    const/16 v8, 0x2710

    const/4 v9, 0x0

    .line 894
    iget-object v5, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoType:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    sget-object v6, Lcom/showmax/lib/api/model/catalogue/Video$Type;->TRAILER:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-ne v5, v6, :cond_1

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    const-string v5, "[ActivityPlayer]::[saveEndTimeOnServer]::[end at %d]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 900
    iget v5, p0, Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I

    if-lt v5, v8, :cond_0

    .line 902
    iget-object v5, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-virtual {v5}, Lcom/mautilus/lib/videoview/ui/VideoView;->getDuration()I

    move-result v0

    .line 903
    .local v0, "duration":I
    iget-object v5, p0, Lcom/showmax/app/ui/ActivityPlayer;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer;->mAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;

    invoke-virtual {v5, v6}, Lcom/showmax/lib/api/model/catalogue/Asset;->getMainVideo(Lcom/showmax/lib/api/model/catalogue/Language;)Lcom/showmax/lib/api/model/catalogue/Video;

    move-result-object v4

    .line 904
    .local v4, "video":Lcom/showmax/lib/api/model/catalogue/Video;
    iget v5, p0, Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I

    sub-int v5, v0, v5

    if-ge v5, v8, :cond_2

    .line 908
    iget-object v5, p0, Lcom/showmax/app/ui/ActivityPlayer;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v6, v4, Lcom/showmax/lib/api/model/catalogue/Video;->id:Ljava/lang/String;

    iget-object v7, p0, Lcom/showmax/app/ui/ActivityPlayer;->mUpdateEndTimeTaskListener:Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;

    invoke-static {v5, v6, v9, v7}, Lcom/showmax/app/io/UserlistTaskV2;->newAddToRecentlyWatchedTask(Lcom/showmax/lib/api/model/catalogue/Asset;Ljava/lang/String;ILcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;)Lcom/showmax/app/io/UserlistTaskV2;

    move-result-object v1

    .line 910
    .local v1, "task":Lcom/showmax/app/io/UserlistTaskV2;
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserAccessData(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v9

    .line 911
    .local v2, "token":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 912
    .local v3, "userId":Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/showmax/app/io/UserlistTaskV2;->execute(Lcom/showmax/app/io/UserlistTaskV2;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 917
    .end local v1    # "task":Lcom/showmax/app/io/UserlistTaskV2;
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "userId":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/showmax/app/ui/ActivityPlayer;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v6, v4, Lcom/showmax/lib/api/model/catalogue/Video;->id:Ljava/lang/String;

    iget v7, p0, Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I

    div-int/lit16 v7, v7, 0x3e8

    iget-object v8, p0, Lcom/showmax/app/ui/ActivityPlayer;->mUpdateEndTimeTaskListener:Lcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;

    invoke-static {v5, v6, v7, v8}, Lcom/showmax/app/io/UserlistTaskV2;->newAddToRecentlyWatchedTask(Lcom/showmax/lib/api/model/catalogue/Asset;Ljava/lang/String;ILcom/showmax/app/io/UserlistTaskV2$UserlistTaskListener;)Lcom/showmax/app/io/UserlistTaskV2;

    move-result-object v1

    .line 920
    .restart local v1    # "task":Lcom/showmax/app/io/UserlistTaskV2;
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserAccessData(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v9

    .line 921
    .restart local v2    # "token":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/showmax/lib/api/utils/UserPrefs;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 922
    .restart local v3    # "userId":Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/showmax/app/io/UserlistTaskV2;->execute(Lcom/showmax/app/io/UserlistTaskV2;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showContentWarningAndPlay()V
    .locals 3

    .prologue
    .line 363
    const-string v1, "[APlayer]::[showContentWarningAndPlay]"

    invoke-static {v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    iget-object v0, v1, Lcom/showmax/lib/api/model/catalogue/Asset;->contentWarning:Lcom/showmax/lib/api/model/catalogue/ContentWarning;

    .line 366
    .local v0, "contentWarning":Lcom/showmax/lib/api/model/catalogue/ContentWarning;
    if-eqz v0, :cond_0

    .line 368
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mContentWarningView:Lcom/showmax/app/ui/widget/ContentWarningView;

    invoke-virtual {v1, v0}, Lcom/showmax/app/ui/widget/ContentWarningView;->initData(Lcom/showmax/lib/api/model/catalogue/ContentWarning;)V

    .line 369
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mContentWarningView:Lcom/showmax/app/ui/widget/ContentWarningView;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer;->mContentWarningListener:Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;

    invoke-virtual {v1, v2}, Lcom/showmax/app/ui/widget/ContentWarningView;->setOnContentWarningBtnClickListener(Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;)V

    .line 370
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mContentWarningView:Lcom/showmax/app/ui/widget/ContentWarningView;

    invoke-virtual {v1}, Lcom/showmax/app/ui/widget/ContentWarningView;->showContentWarning()V

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    iget v2, p0, Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/VideoView;->loadAndPlay(I)V

    goto :goto_0
.end method

.method public static startActivityPlayer(Landroid/app/Activity;Lcom/showmax/lib/api/model/catalogue/Video$Type;Lcom/showmax/lib/api/model/catalogue/Asset;Lcom/showmax/lib/api/model/catalogue/Language;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "videoType"    # Lcom/showmax/lib/api/model/catalogue/Video$Type;
    .param p2, "asset"    # Lcom/showmax/lib/api/model/catalogue/Asset;
    .param p3, "videoLanguage"    # Lcom/showmax/lib/api/model/catalogue/Language;
    .param p4, "resumeTimeInSeconds"    # I

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/showmax/app/ui/ActivityPlayer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "bundle.key.asset"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 211
    const-string v1, "bundle.key.audio.language"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    const-string v1, "bundle.video.type"

    invoke-virtual {p1}, Lcom/showmax/lib/api/model/catalogue/Video$Type;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    const-string v1, "bundle.key.video.end.position"

    mul-int/lit16 v2, p4, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 216
    return-void
.end method


# virtual methods
.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1065
    sget-object v0, Lcom/showmax/app/ui/ActivityPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const v0, 0x7f03001e

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/ActivityPlayer;->setContentView(I)V

    .line 125
    invoke-direct {p0, p1}, Lcom/showmax/app/ui/ActivityPlayer;->initData(Landroid/os/Bundle;)V

    .line 126
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityPlayer;->initViews()V

    .line 128
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoType:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    sget-object v1, Lcom/showmax/lib/api/model/catalogue/Video$Type;->TRAILER:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    if-ne v0, v1, :cond_0

    .line 130
    invoke-static {p0}, Lcom/showmax/app/util/MauFlurry;->onNavPlaybackTrailer(Landroid/content/Context;)V

    .line 137
    :goto_0
    invoke-static {p0}, Lcom/showmax/app/util/MauUtils;->isNetworkAccessible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->showProgress()V

    .line 140
    new-instance v0, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;-><init>(Lcom/showmax/app/ui/ActivityPlayer;Lcom/showmax/app/ui/ActivityPlayer$1;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivityPlayer$InitPlayerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 148
    :goto_1
    return-void

    .line 134
    :cond_0
    invoke-static {p0}, Lcom/showmax/app/util/MauFlurry;->onNavPlaybackContent(Landroid/content/Context;)V

    goto :goto_0

    .line 144
    :cond_1
    const-string v0, "[APlayer]::[onCreate]::[There is no internet connection...]"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    const v1, 0x7f0d00ab

    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->showMessage(I)V

    .line 146
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityPlayer;->delayedFinish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 153
    invoke-static {p0}, Lcom/showmax/app/util/MauFlurry;->onNavPlaybackExit(Landroid/content/Context;)V

    .line 154
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->cleanUp()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mSubtitlesHelper:Lcom/showmax/app/util/SubtitlesHelper;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mSubtitlesHelper:Lcom/showmax/app/util/SubtitlesHelper;

    invoke-virtual {v0}, Lcom/showmax/app/util/SubtitlesHelper;->stop()V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 164
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;

    iget v3, p0, Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/showmax/app/util/analytics/MauAnalytics;->onPlaybackStop(Ljava/lang/String;Ljava/lang/String;I)V

    .line 166
    :cond_2
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onDestroy()V

    .line 167
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onPause()V

    .line 179
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I

    .line 180
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->resumeFromBackground()V

    .line 181
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->pause()V

    .line 183
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityPlayer;->saveEndTimeOnServer()V

    .line 184
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onResume()V

    .line 173
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 191
    const-string v0, "[APlayer]::[onSaveInstanceState]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 193
    const-string v0, "bundle.key.asset"

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mAsset:Lcom/showmax/lib/api/model/catalogue/Asset;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 194
    const-string v0, "bundle.key.audio.language"

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mAudioLanguage:Lcom/showmax/lib/api/model/catalogue/Language;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 195
    const-string v0, "bundle.video.type"

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mVideoType:Lcom/showmax/lib/api/model/catalogue/Video$Type;

    invoke-virtual {v1}, Lcom/showmax/lib/api/model/catalogue/Video$Type;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    const-string v0, "bundle.key.video.end.position"

    iget v1, p0, Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 198
    return-void
.end method

.method public showAudioTrackDialog(Ljava/util/ArrayList;Lcom/showmax/lib/api/model/catalogue/Language;)V
    .locals 8
    .param p2, "currentSubtitles"    # Lcom/showmax/lib/api/model/catalogue/Language;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ">;",
            "Lcom/showmax/lib/api/model/catalogue/Language;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "subtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    const v1, 0x7f0d00bd

    .line 858
    if-nez p1, :cond_0

    .line 887
    :goto_0
    return-void

    .line 864
    :cond_0
    new-instance v7, Lcom/showmax/lib/api/model/catalogue/Language;

    invoke-direct {v7}, Lcom/showmax/lib/api/model/catalogue/Language;-><init>()V

    .line 865
    .local v7, "off":Lcom/showmax/lib/api/model/catalogue/Language;
    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/showmax/lib/api/model/catalogue/Language;->name:Ljava/lang/String;

    .line 866
    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityPlayer;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/showmax/lib/api/model/catalogue/Language;->iso6393:Ljava/lang/String;

    .line 869
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 870
    .local v4, "fixedSubtitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/showmax/lib/api/model/catalogue/Language;>;"
    const/4 v0, 0x0

    invoke-virtual {v4, v0, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 872
    if-nez p2, :cond_1

    .line 874
    move-object v5, v7

    .line 881
    .local v5, "fixedCurrentSubtitles":Lcom/showmax/lib/api/model/catalogue/Language;
    :goto_1
    invoke-static {}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->getInstance()Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    move-result-object v0

    const/16 v2, 0x1b

    const v3, 0x7f0d0093

    iget-object v6, p0, Lcom/showmax/app/ui/ActivityPlayer;->mSubtitlesLanguagesDialogListener:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->showLanguageDialog(Landroid/content/Context;IILjava/util/ArrayList;Lcom/showmax/lib/api/model/catalogue/Language;Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;)V

    goto :goto_0

    .line 878
    .end local v5    # "fixedCurrentSubtitles":Lcom/showmax/lib/api/model/catalogue/Language;
    :cond_1
    move-object v5, p2

    .restart local v5    # "fixedCurrentSubtitles":Lcom/showmax/lib/api/model/catalogue/Language;
    goto :goto_1
.end method
