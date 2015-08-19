.class public Lcom/mautilus/lib/videoview/ui/PlayerController;
.super Landroid/widget/FrameLayout;
.source "PlayerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mautilus/lib/videoview/ui/PlayerController$SettingsContentObserver;,
        Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;,
        Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;,
        Lcom/mautilus/lib/videoview/ui/PlayerController$onSubtitlesBtnClickListener;,
        Lcom/mautilus/lib/videoview/ui/PlayerController$OnBackClickListener;,
        Lcom/mautilus/lib/videoview/ui/PlayerController$OnBufferingChangeListener;,
        Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;
    }
.end annotation


# static fields
.field private static final FADE_OUT:I = 0x1

.field public static final HIDER_FLAGS:I = 0x6

.field private static final LOG:Z = true

.field private static final SHOW_PROGRESS:I = 0x2


# instance fields
.field private mAutoHide:Z

.field private mAutoHideDelayMs:I

.field private mBackIconIv:Landroid/view/View;

.field private mBottomContainer:Landroid/view/ViewGroup;

.field private mCurrentPosition:I

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDelayHideTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field

.field private mDragging:Z

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mHandler:Landroid/os/Handler;

.field private mHideHandler:Landroid/os/Handler;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private mMiddleContainer:Landroid/view/ViewGroup;

.field private mMiddleMovieDetailDescription:Landroid/widget/TextView;

.field private mMiddleMovieDetailLength:Landroid/widget/TextView;

.field private mMiddleMovieDetailTitle:Landroid/widget/TextView;

.field private mMiddleMovieDetailYear:Landroid/widget/TextView;

.field private mMovieDetailEnabled:Z

.field private mMovieDetailShown:Z

.field private mMuteListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mMuteToggleBtn:Landroid/widget/ToggleButton;

.field private mOnBackClickListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnBackClickListener;

.field private mOnPlayListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;

.field private mOnSeekListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;

.field private mOnVisibilityChangeListener:Lcom/mautilus/lib/videoview/util/SystemUiHider$OnVisibilityChangeListener;

.field private mPauseBtnId:I

.field private mPauseDrawableId:I

.field private mPauseListener:Landroid/view/View$OnClickListener;

.field private mPauseResumeBtn:Landroid/widget/ImageButton;

.field private mPlayDrawableId:I

.field private mPlaybackSeekBar:Landroid/widget/SeekBar;

.field private mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSubtitlesBtn:Landroid/widget/Button;

.field private mSubtitlesSelectionEnabled:Z

.field private mSubtitlesSelectionListener:Lcom/mautilus/lib/videoview/ui/PlayerController$onSubtitlesBtnClickListener;

.field private mSystemUiHider:Lcom/mautilus/lib/videoview/util/SystemUiHider;

.field private mTitleTv:Landroid/widget/TextView;

.field private mTopContainer:Landroid/view/ViewGroup;

.field private mTopIconResId:I

.field private mTotalTime:Landroid/widget/TextView;

.field private mVideoViewAsset:Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;

.field private mVolumeControlsEnabled:Z

.field private mVolumeObserver:Lcom/mautilus/lib/videoview/ui/PlayerController$SettingsContentObserver;

.field private mVolumeSeekBar:Landroid/widget/SeekBar;

.field private mVolumeSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mCurrentPosition:I

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mAutoHide:Z

    .line 183
    const/16 v0, 0x1388

    iput v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mAutoHideDelayMs:I

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mHideHandler:Landroid/os/Handler;

    .line 185
    new-instance v0, Lcom/mautilus/lib/videoview/ui/PlayerController$1;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$1;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mHideRunnable:Ljava/lang/Runnable;

    .line 606
    new-instance v0, Lcom/mautilus/lib/videoview/ui/PlayerController$4;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$4;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mHandler:Landroid/os/Handler;

    .line 749
    new-instance v0, Lcom/mautilus/lib/videoview/ui/PlayerController$5;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$5;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 850
    new-instance v0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$6;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1006
    new-instance v0, Lcom/mautilus/lib/videoview/ui/PlayerController$7;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$7;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1035
    new-instance v0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$8;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMuteListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1161
    new-instance v0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$10;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mOnVisibilityChangeListener:Lcom/mautilus/lib/videoview/util/SystemUiHider$OnVisibilityChangeListener;

    .line 1223
    new-instance v0, Lcom/mautilus/lib/videoview/ui/PlayerController$11;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$11;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mDelayHideTouchListener:Landroid/view/View$OnTouchListener;

    .line 209
    const-string v0, "[PlayerController]::[Constructor]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->initControllerView()V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mCurrentPosition:I

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mAutoHide:Z

    .line 183
    const/16 v0, 0x1388

    iput v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mAutoHideDelayMs:I

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mHideHandler:Landroid/os/Handler;

    .line 185
    new-instance v0, Lcom/mautilus/lib/videoview/ui/PlayerController$1;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$1;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mHideRunnable:Ljava/lang/Runnable;

    .line 606
    new-instance v0, Lcom/mautilus/lib/videoview/ui/PlayerController$4;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$4;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mHandler:Landroid/os/Handler;

    .line 749
    new-instance v0, Lcom/mautilus/lib/videoview/ui/PlayerController$5;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$5;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseListener:Landroid/view/View$OnClickListener;

    .line 850
    new-instance v0, Lcom/mautilus/lib/videoview/ui/PlayerController$6;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$6;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1006
    new-instance v0, Lcom/mautilus/lib/videoview/ui/PlayerController$7;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$7;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1035
    new-instance v0, Lcom/mautilus/lib/videoview/ui/PlayerController$8;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$8;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMuteListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1161
    new-instance v0, Lcom/mautilus/lib/videoview/ui/PlayerController$10;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$10;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mOnVisibilityChangeListener:Lcom/mautilus/lib/videoview/util/SystemUiHider$OnVisibilityChangeListener;

    .line 1223
    new-instance v0, Lcom/mautilus/lib/videoview/ui/PlayerController$11;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$11;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mDelayHideTouchListener:Landroid/view/View$OnTouchListener;

    .line 201
    const-string v0, "[PlayerController]::[Constructor]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->initControllerView()V

    .line 203
    return-void
.end method

.method static synthetic access$000(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/util/SystemUiHider;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSystemUiHider:Lcom/mautilus/lib/videoview/util/SystemUiHider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mautilus/lib/videoview/ui/PlayerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMovieDetailShown:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mautilus/lib/videoview/ui/PlayerController;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->stringForTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mautilus/lib/videoview/ui/PlayerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->updatePauseResumeBtnDrawables()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mautilus/lib/videoview/ui/PlayerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getCurrentVolumeFromAudioManager()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/mautilus/lib/videoview/ui/PlayerController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setCurrentVolumeForAudioManager(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mautilus/lib/videoview/ui/PlayerController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setVolumeMuted(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mTopContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mautilus/lib/videoview/ui/PlayerController;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mBottomContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$onSubtitlesBtnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSubtitlesSelectionListener:Lcom/mautilus/lib/videoview/ui/PlayerController$onSubtitlesBtnClickListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mautilus/lib/videoview/ui/PlayerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mAutoHide:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/mautilus/lib/videoview/ui/PlayerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mAutoHideDelayMs:I

    return v0
.end method

.method static synthetic access$2200(Lcom/mautilus/lib/videoview/ui/PlayerController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->delayedHide(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/mautilus/lib/videoview/ui/PlayerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseBtnId:I

    return v0
.end method

.method static synthetic access$2400(Lcom/mautilus/lib/videoview/ui/PlayerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->removeAnyPendingDelayedHide()V

    return-void
.end method

.method static synthetic access$300(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$OnBackClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mOnBackClickListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnBackClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mautilus/lib/videoview/ui/PlayerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mautilus/lib/videoview/ui/PlayerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mDragging:Z

    return v0
.end method

.method static synthetic access$502(Lcom/mautilus/lib/videoview/ui/PlayerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mDragging:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mOnPlayListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mautilus/lib/videoview/ui/PlayerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->doPauseResume()V

    return-void
.end method

.method static synthetic access$900(Lcom/mautilus/lib/videoview/ui/PlayerController;)Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mOnSeekListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;

    return-object v0
.end method

.method private delayedHide(I)V
    .locals 4
    .param p1, "delayMillis"    # I

    .prologue
    .line 1265
    const-string v0, "[PlayerControll]::[delayedHide]::[is movie detail shown: %b]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMovieDetailShown:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1266
    iget-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMovieDetailShown:Z

    if-nez v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1269
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1271
    :cond_0
    return-void
.end method

.method private doPauseResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 791
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    if-nez v0, :cond_0

    .line 818
    :goto_0
    return-void

    .line 796
    :cond_0
    const-string v0, "[PlayerController]::[doPauseResume]::[isPlaying %b]"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    invoke-interface {v2}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 799
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->pause()V

    .line 800
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlaybackSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlaybackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 804
    :cond_1
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->showMovieDetail()V

    .line 817
    :goto_1
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->updatePauseResumeBtnDrawables()V

    goto :goto_0

    .line 808
    :cond_2
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->start()V

    .line 809
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlaybackSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    .line 811
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlaybackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 813
    :cond_3
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->hideMovieDetail()V

    .line 814
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->show()V

    .line 815
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mAutoHideDelayMs:I

    invoke-direct {p0, v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->delayedHide(I)V

    goto :goto_1
.end method

.method private getCurrentVolumeFromAudioManager()I
    .locals 6

    .prologue
    .line 980
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 981
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 982
    .local v1, "value":I
    const-string v2, "[PlayerController]::[getCurrentVolumeFromAudioManager]::[%d]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 983
    return v1
.end method

.method private getMaxVolumeFromAudioManager()I
    .locals 3

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 989
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    return v1
.end method

.method private hideMovieDetail()V
    .locals 2

    .prologue
    .line 823
    const-string v0, "[PlayerController]::[hideMovieInfo]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMiddleContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 825
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMovieDetailShown:Z

    .line 826
    return-void
.end method

.method private initBackIconIv(I)V
    .locals 2
    .param p1, "backIconTvId"    # I

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mBackIconIv:Landroid/view/View;

    .line 285
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mBackIconIv:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mBackIconIv:Landroid/view/View;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mDelayHideTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 288
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mBackIconIv:Landroid/view/View;

    new-instance v1, Lcom/mautilus/lib/videoview/ui/PlayerController$3;

    invoke-direct {v1, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$3;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    :cond_0
    return-void
.end method

.method private initControllerView()V
    .locals 20

    .prologue
    .line 222
    const-string v2, "[PlayerController]::[initControllerView]"

    invoke-static {v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/LayoutInflater;

    .line 225
    .local v19, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/mautilus/lib/videoview/R$layout;->view_player_controller:I

    const/4 v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 228
    new-instance v2, Lcom/mautilus/lib/videoview/ui/PlayerController$SettingsContentObserver;

    invoke-virtual/range {p0 .. p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/mautilus/lib/videoview/ui/PlayerController$SettingsContentObserver;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeObserver:Lcom/mautilus/lib/videoview/ui/PlayerController$SettingsContentObserver;

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeObserver:Lcom/mautilus/lib/videoview/ui/PlayerController$SettingsContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 232
    sget v2, Lcom/mautilus/lib/videoview/R$id;->top_container:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mTopContainer:Landroid/view/ViewGroup;

    .line 233
    sget v2, Lcom/mautilus/lib/videoview/R$layout;->view_player_controller_top_container:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setTopContainer(I)V

    .line 236
    sget v2, Lcom/mautilus/lib/videoview/R$id;->middle_container:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMiddleContainer:Landroid/view/ViewGroup;

    .line 237
    sget v2, Lcom/mautilus/lib/videoview/R$layout;->view_player_controller_middle_container:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setMiddleContainer(I)V

    .line 240
    sget v2, Lcom/mautilus/lib/videoview/R$id;->bottom_container:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mBottomContainer:Landroid/view/ViewGroup;

    .line 241
    sget v2, Lcom/mautilus/lib/videoview/R$layout;->view_player_controller_bottom_container:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setBottomContainer(I)V

    .line 243
    sget v3, Lcom/mautilus/lib/videoview/R$id;->top_container_title:I

    sget v4, Lcom/mautilus/lib/videoview/R$id;->top_container_subtitles:I

    sget v5, Lcom/mautilus/lib/videoview/R$id;->top_container_icon:I

    sget v6, Lcom/mautilus/lib/videoview/R$id;->top_container_icon:I

    sget v7, Lcom/mautilus/lib/videoview/R$id;->top_container_volume_mute:I

    sget v8, Lcom/mautilus/lib/videoview/R$id;->top_container_volume_seekBar:I

    sget v9, Lcom/mautilus/lib/videoview/R$id;->middle_container_title:I

    sget v10, Lcom/mautilus/lib/videoview/R$id;->middle_container_year:I

    sget v11, Lcom/mautilus/lib/videoview/R$id;->middle_container_lenght:I

    sget v12, Lcom/mautilus/lib/videoview/R$id;->middle_container_description:I

    sget v13, Lcom/mautilus/lib/videoview/R$id;->bottom_container_pause:I

    sget v14, Lcom/mautilus/lib/videoview/R$id;->bottom_container_progress:I

    sget v15, Lcom/mautilus/lib/videoview/R$id;->bottom_container_time_current:I

    sget v16, Lcom/mautilus/lib/videoview/R$id;->bottom_container_time_total:I

    sget v17, Lcom/mautilus/lib/videoview/R$drawable;->ic_media_pause:I

    sget v18, Lcom/mautilus/lib/videoview/R$drawable;->ic_media_play:I

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v18}, Lcom/mautilus/lib/videoview/ui/PlayerController;->initCustomControls(IIIIIIIIIIIIIIII)V

    .line 247
    return-void
.end method

.method private initMiddleDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMiddleMovieDetailDescription:Landroid/widget/TextView;

    .line 342
    return-void
.end method

.method private initMiddleLenght(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 336
    invoke-virtual {p0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMiddleMovieDetailLength:Landroid/widget/TextView;

    .line 337
    return-void
.end method

.method private initMiddleTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMiddleMovieDetailTitle:Landroid/widget/TextView;

    .line 327
    return-void
.end method

.method private initMiddleYear(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMiddleMovieDetailYear:Landroid/widget/TextView;

    .line 332
    return-void
.end method

.method private initMuteToggleBtn(I)V
    .locals 2
    .param p1, "muteToggleBtnId"    # I

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMuteToggleBtn:Landroid/widget/ToggleButton;

    .line 317
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMuteToggleBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMuteToggleBtn:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mDelayHideTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 320
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMuteToggleBtn:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMuteListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 322
    :cond_0
    return-void
.end method

.method private initPlaybackSeekBar(III)V
    .locals 4
    .param p1, "playbackSeekBarId"    # I
    .param p2, "currentTimeTvId"    # I
    .param p3, "totalTimeTvId"    # I

    .prologue
    const/4 v3, 0x0

    .line 367
    invoke-virtual {p0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlaybackSeekBar:Landroid/widget/SeekBar;

    .line 368
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlaybackSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlaybackSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 371
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlaybackSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 372
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlaybackSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mDelayHideTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 375
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mCurrentTime:Landroid/widget/TextView;

    .line 376
    invoke-virtual {p0, p3}, Lcom/mautilus/lib/videoview/ui/PlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mTotalTime:Landroid/widget/TextView;

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 379
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mFormatter:Ljava/util/Formatter;

    .line 381
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mTotalTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mTotalTime:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/mautilus/lib/videoview/ui/PlayerController;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/mautilus/lib/videoview/ui/PlayerController;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :cond_2
    return-void
.end method

.method private initSubtitlesBtn(I)V
    .locals 2
    .param p1, "subtitlesBtnId"    # I

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSubtitlesBtn:Landroid/widget/Button;

    .line 265
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSubtitlesBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSubtitlesBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mDelayHideTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 268
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSubtitlesBtn:Landroid/widget/Button;

    new-instance v1, Lcom/mautilus/lib/videoview/ui/PlayerController$2;

    invoke-direct {v1, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$2;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    :cond_0
    return-void
.end method

.method private initTitleTv(I)V
    .locals 1
    .param p1, "titleTvId"    # I

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mTitleTv:Landroid/widget/TextView;

    .line 260
    return-void
.end method

.method private initVolumeSeekBar(I)V
    .locals 2
    .param p1, "volumeSeekBarId"    # I

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;

    .line 305
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mDelayHideTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 308
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 309
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getMaxVolumeFromAudioManager()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 310
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getCurrentVolumeFromAudioManager()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 312
    :cond_0
    return-void
.end method

.method private removeAnyPendingDelayedHide()V
    .locals 2

    .prologue
    .line 1276
    const-string v0, "[PlayerControll]::[removeAnyPendingDelayedHide]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 1277
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1278
    return-void
.end method

.method private setCurrentVolumeForAudioManager(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 995
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 996
    return-void
.end method

.method private setProgress()I
    .locals 10

    .prologue
    .line 645
    iget-object v5, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mDragging:Z

    if-eqz v5, :cond_1

    .line 647
    :cond_0
    const/4 v4, 0x0

    .line 672
    :goto_0
    return v4

    .line 649
    :cond_1
    iget-object v5, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    invoke-interface {v5}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->getCurrentPosition()I

    move-result v4

    .line 650
    .local v4, "position":I
    iget-object v5, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    invoke-interface {v5}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 651
    .local v0, "duration":I
    iget-object v5, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlaybackSeekBar:Landroid/widget/SeekBar;

    if-eqz v5, :cond_3

    .line 653
    if-lez v0, :cond_2

    .line 656
    const-wide/16 v6, 0x3e8

    int-to-long v8, v4

    mul-long/2addr v6, v8

    int-to-long v8, v0

    div-long v2, v6, v8

    .line 657
    .local v2, "pos":J
    iget-object v5, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlaybackSeekBar:Landroid/widget/SeekBar;

    long-to-int v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 659
    .end local v2    # "pos":J
    :cond_2
    iget-object v5, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    invoke-interface {v5}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->getBufferPercentage()I

    move-result v1

    .line 660
    .local v1, "percent":I
    iget-object v5, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlaybackSeekBar:Landroid/widget/SeekBar;

    mul-int/lit8 v6, v1, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 663
    .end local v1    # "percent":I
    :cond_3
    iget-object v5, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mTotalTime:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 665
    iget-object v5, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mTotalTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    :cond_4
    iget-object v5, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 669
    iget-object v5, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/mautilus/lib/videoview/ui/PlayerController;->stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    :cond_5
    iput v4, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mCurrentPosition:I

    goto :goto_0
.end method

.method private setVolumeMuted(Z)V
    .locals 3
    .param p1, "muted"    # Z

    .prologue
    .line 1000
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1001
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1002
    return-void
.end method

.method private showMovieDetail()V
    .locals 2

    .prologue
    .line 831
    const-string v0, "[PlayerController]::[showMovieInfo]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 832
    iget-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMovieDetailEnabled:Z

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMiddleContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMovieDetailShown:Z

    .line 837
    :cond_0
    return-void
.end method

.method private stringForTime(I)Ljava/lang/String;
    .locals 9
    .param p1, "timeMs"    # I

    .prologue
    const/4 v8, 0x0

    .line 631
    div-int/lit16 v3, p1, 0x3e8

    .line 633
    .local v3, "totalSeconds":I
    rem-int/lit8 v2, v3, 0x3c

    .line 634
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 635
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    .line 637
    .local v0, "hours":I
    iget-object v4, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 638
    iget-object v4, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private updatePauseResumeBtnDrawables()V
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseResumeBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseResumeBtn:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseDrawableId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseResumeBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseResumeBtn:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayDrawableId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 598
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 599
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 601
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 603
    :cond_0
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeObserver:Lcom/mautilus/lib/videoview/ui/PlayerController$SettingsContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 604
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 695
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 696
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 697
    .local v1, "uniqueDown":Z
    :goto_0
    const/16 v3, 0x4f

    if-eq v0, v3, :cond_0

    const/16 v3, 0x55

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_3

    .line 699
    :cond_0
    if-eqz v1, :cond_1

    .line 701
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->doPauseResume()V

    .line 702
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->show()V

    .line 703
    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseResumeBtn:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    .line 705
    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseResumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 746
    :cond_1
    :goto_1
    return v2

    .line 696
    .end local v1    # "uniqueDown":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 710
    .restart local v1    # "uniqueDown":Z
    :cond_3
    const/16 v3, 0x7e

    if-ne v0, v3, :cond_4

    .line 712
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    invoke-interface {v3}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_1

    .line 714
    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    invoke-interface {v3}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->start()V

    .line 715
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->updatePauseResumeBtnDrawables()V

    .line 716
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->show()V

    goto :goto_1

    .line 720
    :cond_4
    const/16 v3, 0x56

    if-eq v0, v3, :cond_5

    const/16 v3, 0x7f

    if-ne v0, v3, :cond_6

    .line 722
    :cond_5
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    invoke-interface {v3}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 724
    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    invoke-interface {v3}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->pause()V

    .line 725
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->updatePauseResumeBtnDrawables()V

    .line 726
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->show()V

    goto :goto_1

    .line 730
    :cond_6
    const/16 v3, 0x19

    if-eq v0, v3, :cond_7

    const/16 v3, 0x18

    if-eq v0, v3, :cond_7

    const/16 v3, 0xa4

    if-eq v0, v3, :cond_7

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_8

    .line 734
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1

    .line 736
    :cond_8
    const/4 v3, 0x4

    if-eq v0, v3, :cond_9

    const/16 v3, 0x52

    if-ne v0, v3, :cond_a

    .line 738
    :cond_9
    if-eqz v1, :cond_1

    .line 740
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->hide()V

    goto :goto_1

    .line 745
    :cond_a
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->show()V

    .line 746
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mCurrentPosition:I

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 585
    const-string v0, "[PlayerController]::[hide]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 588
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSystemUiHider:Lcom/mautilus/lib/videoview/util/SystemUiHider;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSystemUiHider:Lcom/mautilus/lib/videoview/util/SystemUiHider;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/util/SystemUiHider;->hide()V

    .line 592
    :cond_0
    return-void
.end method

.method public hideControls()V
    .locals 1

    .prologue
    .line 1149
    const-string v0, "[PlayerController]::[hideControls]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSystemUiHider:Lcom/mautilus/lib/videoview/util/SystemUiHider;

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSystemUiHider:Lcom/mautilus/lib/videoview/util/SystemUiHider;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/util/SystemUiHider;->hide()V

    .line 1154
    :cond_0
    return-void
.end method

.method public initBottomContainer(I)V
    .locals 3
    .param p1, "bottomContainerLayoutId"    # I

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 347
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 348
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 349
    return-void
.end method

.method public initCustomControls(IIIIIIIIIIIIIIII)V
    .locals 2
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
    .line 425
    invoke-direct {p0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->initTitleTv(I)V

    .line 426
    invoke-direct {p0, p2}, Lcom/mautilus/lib/videoview/ui/PlayerController;->initSubtitlesBtn(I)V

    .line 427
    invoke-direct {p0, p3}, Lcom/mautilus/lib/videoview/ui/PlayerController;->initBackIconIv(I)V

    .line 428
    invoke-direct {p0, p5}, Lcom/mautilus/lib/videoview/ui/PlayerController;->initMuteToggleBtn(I)V

    .line 429
    invoke-direct {p0, p6}, Lcom/mautilus/lib/videoview/ui/PlayerController;->initVolumeSeekBar(I)V

    .line 431
    invoke-direct {p0, p7}, Lcom/mautilus/lib/videoview/ui/PlayerController;->initMiddleTitle(I)V

    .line 432
    invoke-direct {p0, p10}, Lcom/mautilus/lib/videoview/ui/PlayerController;->initMiddleDescription(I)V

    .line 433
    invoke-direct {p0, p9}, Lcom/mautilus/lib/videoview/ui/PlayerController;->initMiddleLenght(I)V

    .line 434
    invoke-direct {p0, p8}, Lcom/mautilus/lib/videoview/ui/PlayerController;->initMiddleYear(I)V

    .line 436
    move/from16 v0, p15

    move/from16 v1, p16

    invoke-virtual {p0, p11, v0, v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->initPauseResumeBtn(III)V

    .line 437
    move/from16 v0, p14

    invoke-direct {p0, p12, p13, v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->initPlaybackSeekBar(III)V

    .line 438
    return-void
.end method

.method public initPauseResumeBtn(III)V
    .locals 2
    .param p1, "pauseResumeBtnId"    # I
    .param p2, "pauseDrawableId"    # I
    .param p3, "resumeDrawableId"    # I

    .prologue
    .line 353
    iput p2, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseDrawableId:I

    .line 354
    iput p3, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayDrawableId:I

    .line 355
    iput p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseBtnId:I

    .line 357
    invoke-virtual {p0, p1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseResumeBtn:Landroid/widget/ImageButton;

    .line 358
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseResumeBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseResumeBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mDelayHideTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 361
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseResumeBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    :cond_0
    return-void
.end method

.method public initTopContainer(I)V
    .locals 3
    .param p1, "topContainerLayoutId"    # I

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 253
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 254
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 255
    return-void
.end method

.method public isControlsVisible()Z
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSystemUiHider:Lcom/mautilus/lib/videoview/util/SystemUiHider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSystemUiHider:Lcom/mautilus/lib/videoview/util/SystemUiHider;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/util/SystemUiHider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    const/4 v0, 0x1

    .line 1113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 937
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 938
    const-class v0, Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 939
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 944
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 945
    const-class v0, Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 946
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->show()V

    .line 689
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1078
    const-string v0, "[PlayerController]::[pause]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->show()V

    .line 1082
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->doPauseResume()V

    .line 1084
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1094
    const-string v0, "[PlayerController]::[resume]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 1095
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    invoke-interface {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->hide()V

    .line 1098
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->doPauseResume()V

    .line 1100
    :cond_0
    return-void
.end method

.method public setAsset(Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;Z)V
    .locals 2
    .param p1, "asset"    # Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;
    .param p2, "showTopTitle"    # Z

    .prologue
    .line 547
    const-string v0, "[PlayerController]::[setAsset]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 548
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVideoViewAsset:Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;

    .line 550
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mTitleTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 552
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mTitleTv:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVideoViewAsset:Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;

    invoke-interface {v0}, Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMiddleMovieDetailTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVideoViewAsset:Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;

    invoke-interface {v1}, Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMiddleMovieDetailLength:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVideoViewAsset:Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;

    invoke-interface {v1}, Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;->getLenght()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMiddleMovieDetailYear:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVideoViewAsset:Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;

    invoke-interface {v1}, Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;->getYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMiddleMovieDetailDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVideoViewAsset:Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;

    invoke-interface {v1}, Lcom/mautilus/lib/videoview/model/data/VideoViewAsset;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    return-void

    .line 552
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public setBottomContainer(I)V
    .locals 3
    .param p1, "bottomContainerId"    # I

    .prologue
    .line 393
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 394
    if-lez p1, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 397
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 398
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mBottomContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mDelayHideTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 400
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 922
    const-string v2, "[PlayerController]::[setEnabled]::[%b]"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 923
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseResumeBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 925
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseResumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 927
    :cond_0
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlaybackSeekBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_1

    .line 929
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlaybackSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    invoke-interface {v3}, Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 931
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 932
    return-void

    :cond_2
    move v0, v1

    .line 929
    goto :goto_0
.end method

.method public setMediaPlayer(Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;)V
    .locals 1
    .param p1, "controls"    # Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    .prologue
    .line 496
    const-string v0, "[PlayerController]::[setMediaPlayer]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 497
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlayer:Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;

    .line 498
    return-void
.end method

.method public setMiddleContainer(I)V
    .locals 3
    .param p1, "middleContainerId"    # I

    .prologue
    .line 442
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMiddleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 443
    if-lez p1, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 446
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMiddleContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 448
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method public setMovieDetailEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 529
    const-string v0, "[PlayerController]::[setMovieDetailEnabled]::[%b]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    iput-boolean p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMovieDetailEnabled:Z

    .line 531
    return-void
.end method

.method public setOnBackClickListener(Lcom/mautilus/lib/videoview/ui/PlayerController$OnBackClickListener;)V
    .locals 1
    .param p1, "onBackClickListener"    # Lcom/mautilus/lib/videoview/ui/PlayerController$OnBackClickListener;

    .prologue
    .line 468
    const-string v0, "[PlayerController]::[setOnBackClickListener]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 469
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mOnBackClickListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnBackClickListener;

    .line 470
    return-void
.end method

.method public setOnPlayButtonListener(Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;)V
    .locals 1
    .param p1, "onPlayButtonListener"    # Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;

    .prologue
    .line 475
    const-string v0, "[PlayerController]::[setOnPlayButtonListener]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 476
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mOnPlayListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnPlayButtonListener;

    .line 477
    return-void
.end method

.method public setOnSeekListener(Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;)V
    .locals 1
    .param p1, "onSeekListener"    # Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;

    .prologue
    .line 482
    const-string v0, "[PlayerController]::[setOnSeekListener]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 483
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mOnSeekListener:Lcom/mautilus/lib/videoview/ui/PlayerController$OnSeekListener;

    .line 484
    return-void
.end method

.method public setOnSubtitlesBtnClickListener(Lcom/mautilus/lib/videoview/ui/PlayerController$onSubtitlesBtnClickListener;)V
    .locals 1
    .param p1, "onSubtitlesBtnClickListener"    # Lcom/mautilus/lib/videoview/ui/PlayerController$onSubtitlesBtnClickListener;

    .prologue
    .line 489
    const-string v0, "[PlayerController]::[setOnSubtitlesBtnClickListener]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 490
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSubtitlesSelectionListener:Lcom/mautilus/lib/videoview/ui/PlayerController$onSubtitlesBtnClickListener;

    .line 491
    return-void
.end method

.method public setSeekBarsColor(I)V
    .locals 2
    .param p1, "color"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlaybackSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlaybackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 456
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPlaybackSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 461
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 463
    :cond_1
    return-void
.end method

.method public setSubtitlesSelectionEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 503
    const-string v1, "[PlayerController]::[setSubtitlesSelectionEnabled]::[%b]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    iput-boolean p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSubtitlesSelectionEnabled:Z

    .line 505
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSubtitlesBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSubtitlesBtn:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSubtitlesSelectionEnabled:Z

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 509
    :cond_0
    return-void

    .line 507
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSystemUiHider(Lcom/mautilus/lib/videoview/util/SystemUiHider;Landroid/view/View;)V
    .locals 2
    .param p1, "hider"    # Lcom/mautilus/lib/videoview/util/SystemUiHider;
    .param p2, "contentView"    # Landroid/view/View;

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSystemUiHider:Lcom/mautilus/lib/videoview/util/SystemUiHider;

    .line 1119
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSystemUiHider:Lcom/mautilus/lib/videoview/util/SystemUiHider;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mOnVisibilityChangeListener:Lcom/mautilus/lib/videoview/util/SystemUiHider$OnVisibilityChangeListener;

    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/util/SystemUiHider;->setOnVisibilityChangeListener(Lcom/mautilus/lib/videoview/util/SystemUiHider$OnVisibilityChangeListener;)V

    .line 1121
    new-instance v0, Lcom/mautilus/lib/videoview/ui/PlayerController$9;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController$9;-><init>(Lcom/mautilus/lib/videoview/ui/PlayerController;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1134
    return-void
.end method

.method public setTopContainer(I)V
    .locals 3
    .param p1, "topContainerId"    # I

    .prologue
    .line 412
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 413
    if-lez p1, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 416
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mTopContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 417
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mTopContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mDelayHideTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 419
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    return-void
.end method

.method public setTopContainerVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 404
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mTopContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 406
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mTopContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 408
    :cond_0
    return-void

    .line 406
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setVolumeControlsEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 514
    const-string v0, "[PlayerController]::[setVolumeControlsEnabled]::[%b]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    iput-boolean p1, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeControlsEnabled:Z

    .line 516
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 518
    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeControlsEnabled:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMuteToggleBtn:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mMuteToggleBtn:Landroid/widget/ToggleButton;

    iget-boolean v3, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mVolumeControlsEnabled:Z

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 524
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 518
    goto :goto_0

    :cond_3
    move v1, v2

    .line 522
    goto :goto_1
.end method

.method public show()V
    .locals 2

    .prologue
    .line 563
    const-string v0, "[PlayerController]::[show]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSystemUiHider:Lcom/mautilus/lib/videoview/util/SystemUiHider;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSystemUiHider:Lcom/mautilus/lib/videoview/util/SystemUiHider;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/util/SystemUiHider;->show()V

    .line 568
    :cond_0
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setProgress()I

    .line 569
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseResumeBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mPauseResumeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 574
    :cond_1
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->updatePauseResumeBtnDrawables()V

    .line 579
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 580
    return-void
.end method

.method public toggleControls()V
    .locals 1

    .prologue
    .line 1139
    const-string v0, "[PlayerController]::[toggleControls]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSystemUiHider:Lcom/mautilus/lib/videoview/util/SystemUiHider;

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/PlayerController;->mSystemUiHider:Lcom/mautilus/lib/videoview/util/SystemUiHider;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/util/SystemUiHider;->toggle()V

    .line 1144
    :cond_0
    return-void
.end method
