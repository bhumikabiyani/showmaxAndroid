.class public Lcom/mautilus/lib/videoview/ui/VideoView;
.super Landroid/widget/FrameLayout;
.source "VideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;,
        Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_ERROR_RECOVERIES:I = 0x3

.field private static final LOG:Z = true

.field private static final TEST_URL:Ljava/lang/String; = "http://pmd.servustv.com/nongeoblock/IMG13_Coudenhove_0825_high.mp4"


# instance fields
.field private mCurrentPosition:I

.field private mDrmEnabled:Z

.field private mDrmManagerAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

.field private mDuration:I

.field private mErrorRecoveriesCount:I

.field private mMaxErrorRecoveries:I

.field private mMessageTxtView:Landroid/widget/TextView;

.field private mOnBackClickListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnBackClickListener;

.field private mOnBufferingChangeListener:Lcom/mautilus/lib/videoview/ui/VideoSurface$OnBufferingChangeListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPlayButtonListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;

.field private mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mResumeFromBackground:Z

.field private mShowMovieDetail:Z

.field private mShowSubtitlesSelection:Z

.field private mShowVolumeControls:Z

.field private mSubtitlesSelectionListener:Lcom/mautilus/lib/videoview/ui/PlayerController$onSubtitlesBtnClickListener;

.field private mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

.field private mVideoViewAsset:Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;

.field private mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mDuration:I

    .line 163
    const/4 v0, 0x3

    iput v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mMaxErrorRecoveries:I

    .line 571
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$2;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$2;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnBackClickListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnBackClickListener;

    .line 586
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$3;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$3;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mSubtitlesSelectionListener:Lcom/mautilus/lib/videoview/ui/PlayerController$onSubtitlesBtnClickListener;

    .line 601
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$4;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$4;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnSeekListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;

    .line 627
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$5;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$5;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnPlayButtonListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;

    .line 652
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$6;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$6;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 667
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$7;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$7;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 703
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$8;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$8;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 746
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$9;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$9;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 790
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$10;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$10;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnBufferingChangeListener:Lcom/mautilus/lib/videoview/ui/VideoSurface$OnBufferingChangeListener;

    .line 178
    const-string v0, "[VideoView]::[Constructor]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoView;->init()V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mDuration:I

    .line 163
    const/4 v0, 0x3

    iput v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mMaxErrorRecoveries:I

    .line 571
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$2;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$2;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnBackClickListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnBackClickListener;

    .line 586
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$3;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$3;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mSubtitlesSelectionListener:Lcom/mautilus/lib/videoview/ui/PlayerController$onSubtitlesBtnClickListener;

    .line 601
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$4;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$4;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnSeekListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;

    .line 627
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$5;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$5;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnPlayButtonListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;

    .line 652
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$6;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$6;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 667
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$7;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$7;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 703
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$8;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$8;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 746
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$9;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$9;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 790
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$10;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$10;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnBufferingChangeListener:Lcom/mautilus/lib/videoview/ui/VideoSurface$OnBufferingChangeListener;

    .line 186
    const-string v0, "[VideoView]::[Constructor]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoView;->init()V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 192
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mDuration:I

    .line 163
    const/4 v0, 0x3

    iput v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mMaxErrorRecoveries:I

    .line 571
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$2;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$2;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnBackClickListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnBackClickListener;

    .line 586
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$3;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$3;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mSubtitlesSelectionListener:Lcom/mautilus/lib/videoview/ui/PlayerController$onSubtitlesBtnClickListener;

    .line 601
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$4;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$4;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnSeekListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;

    .line 627
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$5;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$5;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnPlayButtonListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;

    .line 652
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$6;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$6;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 667
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$7;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$7;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 703
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$8;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$8;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 746
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$9;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$9;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 790
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoView$10;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$10;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnBufferingChangeListener:Lcom/mautilus/lib/videoview/ui/VideoSurface$OnBufferingChangeListener;

    .line 194
    const-string v0, "[VideoView]::[Constructor]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoView;->init()V

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mDrmManagerAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoSurface;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mautilus/lib/videoview/ui/VideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoView;

    .prologue
    .line 46
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mDuration:I

    return v0
.end method

.method static synthetic access$302(Lcom/mautilus/lib/videoview/ui/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mDuration:I

    return p1
.end method

.method static synthetic access$400(Lcom/mautilus/lib/videoview/ui/VideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoView;

    .prologue
    .line 46
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/mautilus/lib/videoview/ui/VideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoView;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mResumeFromBackground:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mautilus/lib/videoview/ui/VideoView;)Lcom/mautilus/lib/videoview/ui/PlayerController;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mautilus/lib/videoview/ui/VideoView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/mautilus/lib/videoview/ui/VideoView;->handleError(II)V

    return-void
.end method

.method private handleError(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 548
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mErrorRecoveriesCount:I

    iget v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mMaxErrorRecoveries:I

    if-ge v0, v1, :cond_2

    .line 551
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mCurrentPosition:I

    .line 552
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mErrorRecoveriesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mErrorRecoveriesCount:I

    .line 553
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->suspend()V

    .line 554
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    iget-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mDrmEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mDrmManagerAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    invoke-interface {v0}, Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;->getUrlKey()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->setVideoPath(Ljava/lang/String;)V

    .line 565
    :cond_0
    :goto_1
    return-void

    .line 554
    :cond_1
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewAsset:Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;

    invoke-interface {v0}, Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 559
    :cond_2
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->suspend()V

    .line 560
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1, p2}, Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;->onPlaybackError(ZII)V

    goto :goto_1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 522
    const-string v1, "[VideoView]::[init]"

    invoke-static {v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 524
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/mautilus/lib/videoview/R$layout;->view_videoview:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 525
    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->setBackgroundColor(I)V

    .line 527
    sget v1, Lcom/mautilus/lib/videoview/R$id;->view_videoview_player_controller:I

    invoke-virtual {p0, v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mautilus/lib/videoview/ui/PlayerController;

    iput-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    .line 528
    sget v1, Lcom/mautilus/lib/videoview/R$id;->view_videoview_video_surface:I

    invoke-virtual {p0, v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mautilus/lib/videoview/ui/VideoSurface;

    iput-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .line 529
    sget v1, Lcom/mautilus/lib/videoview/R$id;->view_videoview_progress_bar:I

    invoke-virtual {p0, v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 530
    sget v1, Lcom/mautilus/lib/videoview/R$id;->view_videoview_message:I

    invoke-virtual {p0, v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mMessageTxtView:Landroid/widget/TextView;

    .line 532
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setVisibility(I)V

    .line 535
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnBackClickListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnBackClickListener;

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setOnBackClickListener(Lcom/mautilus/lib/videoview/ui/PlayerController$OnBackClickListener;)V

    .line 536
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mSubtitlesSelectionListener:Lcom/mautilus/lib/videoview/ui/PlayerController$onSubtitlesBtnClickListener;

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setOnSubtitlesBtnClickListener(Lcom/mautilus/lib/videoview/ui/PlayerController$onSubtitlesBtnClickListener;)V

    .line 537
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnSeekListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setOnSeekListener(Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;)V

    .line 538
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnPlayButtonListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setOnPlayButtonListener(Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;)V

    .line 539
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 540
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 541
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 542
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 543
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mOnBufferingChangeListener:Lcom/mautilus/lib/videoview/ui/VideoSurface$OnBufferingChangeListener;

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->setOnBufferingChangeListener(Lcom/mautilus/lib/videoview/ui/VideoSurface$OnBufferingChangeListener;)V

    .line 544
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->cleanUp()V

    .line 411
    :cond_0
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 851
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 852
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 844
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 845
    return-void
.end method

.method public enableControls()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 243
    sget v2, Lcom/mautilus/lib/videoview/R$id;->view_videoview_click_area_dummy:I

    invoke-virtual {p0, v2}, Lcom/mautilus/lib/videoview/ui/VideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, "contentView":Landroid/view/View;
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v2, v3}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->setMediaController(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    .line 246
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v2, v4}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setEnabled(Z)V

    .line 248
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/VideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v0, v3}, Lcom/mautilus/lib/videoview/util/SystemUiHider;->getInstance(Landroid/app/Activity;Landroid/view/View;I)Lcom/mautilus/lib/videoview/util/SystemUiHider;

    move-result-object v1

    .line 249
    .local v1, "hider":Lcom/mautilus/lib/videoview/util/SystemUiHider;
    invoke-virtual {v1}, Lcom/mautilus/lib/videoview/util/SystemUiHider;->setup()V

    .line 250
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v2, v1, v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setSystemUiHider(Lcom/mautilus/lib/videoview/util/SystemUiHider;Landroid/view/View;)V

    .line 251
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v2, v4}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setVisibility(I)V

    .line 252
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mCurrentPosition:I

    .line 359
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mCurrentPosition:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mDuration:I

    return v0
.end method

.method public getSubtitlesTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 369
    sget v0, Lcom/mautilus/lib/videoview/R$id;->view_videoview_subtitles:I

    invoke-virtual {p0, v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public hideControls()V
    .locals 1

    .prologue
    .line 401
    const-string v0, "[VideoView]::[hideControls]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->hideControls()V

    .line 403
    return-void
.end method

.method public hideMessage()V
    .locals 2

    .prologue
    .line 351
    const-string v0, "[VideoView]::[hideMessage]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mMessageTxtView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mMessageTxtView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    return-void
.end method

.method public hideProgress()V
    .locals 2

    .prologue
    .line 426
    const-string v0, "[VideoView]::[hideProgress]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->requestFocus()Z

    .line 432
    :cond_0
    return-void
.end method

.method public initCustomControls(IIIIIIIIIIIIIIII)V
    .locals 18
    .param p1, "titleResId"    # I
    .param p2, "subtitlesBtnResId"    # I
    .param p3, "backBtnResId"    # I
    .param p4, "topIconResId"    # I
    .param p5, "muteResId"    # I
    .param p6, "volumeSeekBarResId"    # I
    .param p7, "detailTitleResId"    # I
    .param p8, "detailYearResId"    # I
    .param p9, "detailLenghtResId"    # I
    .param p10, "detailDescriptionResId"    # I
    .param p11, "pauseResId"    # I
    .param p12, "progressSeekBarResId"    # I
    .param p13, "currentTimeResId"    # I
    .param p14, "totalTimeResId"    # I
    .param p15, "pauseDrawableResId"    # I
    .param p16, "playDrawableResId"    # I

    .prologue
    .line 468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    if-eqz v1, :cond_0

    .line 470
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    invoke-virtual/range {v1 .. v17}, Lcom/mautilus/lib/videoview/ui/PlayerController;->initCustomControls(IIIIIIIIIIIIIIII)V

    .line 474
    :cond_0
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public loadAndPlay(I)V
    .locals 5
    .param p1, "currentPosition"    # I

    .prologue
    .line 289
    const-string v1, "[VideoView]::[loadAndPlay]::[current position: %d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/VideoView;->showProgress()V

    .line 291
    iput p1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mCurrentPosition:I

    .line 292
    iget-boolean v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mDrmEnabled:Z

    if-eqz v1, :cond_0

    .line 295
    new-instance v0, Lcom/mautilus/lib/videoview/util/DrmManager;

    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mautilus/lib/videoview/util/DrmManager;-><init>(Landroid/content/Context;)V

    .line 296
    .local v0, "drmManager":Lcom/mautilus/lib/videoview/util/DrmManager;
    new-instance v1, Lcom/mautilus/lib/videoview/ui/VideoView$1;

    invoke-direct {v1, p0}, Lcom/mautilus/lib/videoview/ui/VideoView$1;-><init>(Lcom/mautilus/lib/videoview/ui/VideoView;)V

    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/util/DrmManager;->setDrmManagerListener(Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;)V

    .line 325
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mDrmManagerAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/util/DrmManager;->initDrm(Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;)V

    .line 332
    .end local v0    # "drmManager":Lcom/mautilus/lib/videoview/util/DrmManager;
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewAsset:Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;

    invoke-interface {v2}, Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 829
    move-object v0, p1

    check-cast v0, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;

    .line 830
    .local v0, "savedState":Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;
    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 832
    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mCurrentPosition:I

    .line 833
    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;->isResumedFromBackground()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mResumeFromBackground:Z

    .line 836
    const-string v1, "[VideoView]::[onRestoreInstanceState]::[current position: %d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mCurrentPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 837
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 818
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 819
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {v1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mCurrentPosition:I

    .line 821
    const-string v1, "[VideoView]::[onSaveInstanceState]::[current position: %d]"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mCurrentPosition:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 822
    iput-boolean v5, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mResumeFromBackground:Z

    .line 823
    new-instance v1, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;

    iget v2, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mCurrentPosition:I

    iget-boolean v3, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mResumeFromBackground:Z

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/mautilus/lib/videoview/ui/VideoView$SavedState;-><init>(Landroid/os/Parcelable;IZLcom/mautilus/lib/videoview/ui/VideoView$1;)V

    return-object v1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 380
    const-string v0, "[VideoView]::[pause]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->pause()V

    .line 382
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 387
    const-string v0, "[VideoView]::[resume]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->resume()V

    .line 389
    return-void
.end method

.method public resumeFromBackground()V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mResumeFromBackground:Z

    .line 437
    return-void
.end method

.method public setAsset(Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;Z)V
    .locals 2
    .param p1, "asset"    # Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;
    .param p2, "showTopTitle"    # Z

    .prologue
    .line 207
    const-string v0, "[VideoView]::[setAsset]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 208
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewAsset:Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;

    .line 209
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewAsset:Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;

    invoke-virtual {v0, v1, p2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setAsset(Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;Z)V

    .line 210
    return-void
.end method

.method public setBottomContainer(I)V
    .locals 1
    .param p1, "bottomContainerId"    # I

    .prologue
    .line 458
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setBottomContainer(I)V

    .line 462
    :cond_0
    return-void
.end method

.method public setDrmEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 233
    const-string v0, "[VideoView]::[setDrmEnabled]::[%b]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iput-boolean p1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mDrmEnabled:Z

    .line 235
    return-void
.end method

.method public setDrmManagerAsset(Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;)V
    .locals 1
    .param p1, "asset"    # Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    .prologue
    .line 220
    const-string v0, "[VideoView]::[setDrmManagerAsset]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mDrmManagerAsset:Lcom/mautilus/lib/videoview/model/data/DrmManagerAsset;

    .line 222
    return-void
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indeterminateDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 497
    :cond_0
    return-void
.end method

.method public setIndeterminateDrawableColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 501
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 505
    :cond_0
    return-void
.end method

.method public setMiddleContainer(I)V
    .locals 1
    .param p1, "middleContainerId"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setMiddleContainer(I)V

    .line 454
    :cond_0
    return-void
.end method

.method public setMovieDetailEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 258
    const-string v0, "[VideoView]::[setMovieDetailEnabled]::[%b]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iput-boolean p1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mShowMovieDetail:Z

    .line 260
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setMovieDetailEnabled(Z)V

    .line 261
    return-void
.end method

.method public setSeekBarsColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 509
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setSeekBarsColor(I)V

    .line 513
    :cond_0
    return-void
.end method

.method public setSubtitlesSelectionEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 274
    const-string v0, "[VideoView]::[setSubtitlesSelectionEnabled]::[%b]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    iput-boolean p1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mShowSubtitlesSelection:Z

    .line 276
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    iget-boolean v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mShowSubtitlesSelection:Z

    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setSubtitlesSelectionEnabled(Z)V

    .line 277
    return-void
.end method

.method public setTopContainer(I)V
    .locals 1
    .param p1, "topContainerId"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setTopContainer(I)V

    .line 446
    :cond_0
    return-void
.end method

.method public setTopContainerVisibility(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 478
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setTopContainerVisibility(Z)V

    .line 482
    :cond_0
    return-void
.end method

.method public setVideoViewListener(Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    .prologue
    .line 282
    const-string v0, "[VideoView]::[setVideoViewListener]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 283
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoViewListener:Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;

    .line 284
    return-void
.end method

.method public setVolumeControlsEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 266
    const-string v0, "[VideoView]::[setVolumeControlsEnabled]::[%b]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    iput-boolean p1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mShowVolumeControls:Z

    .line 268
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mPlayerControls:Lcom/mautilus/lib/videoview/ui/PlayerController;

    iget-boolean v1, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mShowVolumeControls:Z

    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setVolumeControlsEnabled(Z)V

    .line 269
    return-void
.end method

.method public showMessage(I)V
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/VideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->showMessage(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 342
    const-string v0, "[VideoView]::[showMessage]::[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mMessageTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mMessageTxtView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 346
    return-void
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 415
    const-string v0, "[VideoView]::[showProgress]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 420
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->requestLayout()V

    .line 422
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 394
    const-string v0, "[VideoView]::[suspend]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoView;->mVideoSurface:Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->suspend()V

    .line 396
    return-void
.end method
