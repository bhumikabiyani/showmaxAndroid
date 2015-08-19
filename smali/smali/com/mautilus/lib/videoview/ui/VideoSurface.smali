.class public Lcom/mautilus/lib/videoview/ui/VideoSurface;
.super Landroid/view/SurfaceView;
.source "VideoSurface.java"

# interfaces
.implements Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mautilus/lib/videoview/ui/VideoSurface$OnBufferingChangeListener;
    }
.end annotation


# static fields
.field private static final LOG:Z = true

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAdjustScreenRatioEnabled:Z

.field private mAudioSession:I

.field private mBufferingState:Z

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCheckerRunable:Ljava/lang/Runnable;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHandler:Landroid/os/Handler;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPosition:I

.field private mMediaController:Lcom/mautilus/lib/videoview/ui/PlayerController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnBufferingChangeListener:Lcom/mautilus/lib/videoview/ui/VideoSurface$OnBufferingChangeListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoSurface$1;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface$1;-><init>(Lcom/mautilus/lib/videoview/ui/VideoSurface;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCheckerRunable:Ljava/lang/Runnable;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mHandler:Landroid/os/Handler;

    .line 122
    iput-boolean v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mBufferingState:Z

    .line 123
    iput v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mLastPosition:I

    .line 125
    const-string v0, "VideoSurface"

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->TAG:Ljava/lang/String;

    .line 144
    iput v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentState:I

    .line 145
    iput v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mTargetState:I

    .line 148
    iput-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 149
    iput-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 424
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoSurface$2;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface$2;-><init>(Lcom/mautilus/lib/videoview/ui/VideoSurface;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 439
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;-><init>(Lcom/mautilus/lib/videoview/ui/VideoSurface;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 499
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoSurface$4;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface$4;-><init>(Lcom/mautilus/lib/videoview/ui/VideoSurface;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 517
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoSurface$5;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface$5;-><init>(Lcom/mautilus/lib/videoview/ui/VideoSurface;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 542
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoSurface$6;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface$6;-><init>(Lcom/mautilus/lib/videoview/ui/VideoSurface;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 592
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;-><init>(Lcom/mautilus/lib/videoview/ui/VideoSurface;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 168
    const-string v0, "[VideoSurface]::[VideoSurface]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->initVideoView()V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 175
    const-string v0, "[VideoSurface]::[VideoSurface]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->initVideoView()V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 181
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoSurface$1;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface$1;-><init>(Lcom/mautilus/lib/videoview/ui/VideoSurface;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCheckerRunable:Ljava/lang/Runnable;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mHandler:Landroid/os/Handler;

    .line 122
    iput-boolean v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mBufferingState:Z

    .line 123
    iput v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mLastPosition:I

    .line 125
    const-string v0, "VideoSurface"

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->TAG:Ljava/lang/String;

    .line 144
    iput v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentState:I

    .line 145
    iput v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mTargetState:I

    .line 148
    iput-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 149
    iput-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 424
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoSurface$2;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface$2;-><init>(Lcom/mautilus/lib/videoview/ui/VideoSurface;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 439
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface$3;-><init>(Lcom/mautilus/lib/videoview/ui/VideoSurface;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 499
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoSurface$4;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface$4;-><init>(Lcom/mautilus/lib/videoview/ui/VideoSurface;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 517
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoSurface$5;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface$5;-><init>(Lcom/mautilus/lib/videoview/ui/VideoSurface;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 542
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoSurface$6;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface$6;-><init>(Lcom/mautilus/lib/videoview/ui/VideoSurface;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 592
    new-instance v0, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;

    invoke-direct {v0, p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface$7;-><init>(Lcom/mautilus/lib/videoview/ui/VideoSurface;)V

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 182
    const-string v0, "[VideoSurface]::[VideoSurface]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->initVideoView()V

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mBufferingState:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .prologue
    .line 30
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1002(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .prologue
    .line 30
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1102(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .prologue
    .line 30
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mTargetState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mTargetState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Lcom/mautilus/lib/videoview/ui/PlayerController;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaController:Lcom/mautilus/lib/videoview/ui/PlayerController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1802(Lcom/mautilus/lib/videoview/ui/VideoSurface;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/mautilus/lib/videoview/ui/VideoSurface;)V
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->openVideo()V

    return-void
.end method

.method static synthetic access$200(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .prologue
    .line 30
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mLastPosition:I

    return v0
.end method

.method static synthetic access$2000(Lcom/mautilus/lib/videoview/ui/VideoSurface;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->release(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mLastPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/mautilus/lib/videoview/ui/VideoSurface;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->onBufferingChange(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .prologue
    .line 30
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$502(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$600(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .prologue
    .line 30
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$602(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$702(Lcom/mautilus/lib/videoview/ui/VideoSurface;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentState:I

    return p1
.end method

.method static synthetic access$800(Lcom/mautilus/lib/videoview/ui/VideoSurface;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mautilus/lib/videoview/ui/VideoSurface;)I
    .locals 1
    .param p0, "x0"    # Lcom/mautilus/lib/videoview/ui/VideoSurface;

    .prologue
    .line 30
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSeekWhenPrepared:I

    return v0
.end method

.method private attachMediaController()V
    .locals 2

    .prologue
    .line 416
    const-string v0, "[VideoSurface]::[attachMediaController]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaController:Lcom/mautilus/lib/videoview/ui/PlayerController;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaController:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0, p0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setMediaPlayer(Lcom/mautilus/lib/videoview/ui/PlayerController$MediaPlayerControl;)V

    .line 420
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaController:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->isInPlaybackState()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setEnabled(Z)V

    .line 422
    :cond_0
    return-void
.end method

.method private checkerStart()V
    .locals 4

    .prologue
    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mLastPosition:I

    .line 103
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCheckerRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCheckerRunable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    return-void
.end method

.method private checkerStop()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCheckerRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mBufferingState:Z

    .line 112
    return-void
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    const-string v0, "[VideoSurface]::[initVideoView]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 289
    iput v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I

    .line 290
    iput v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I

    .line 291
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 292
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 293
    invoke-virtual {p0, v3}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->setFocusable(Z)V

    .line 294
    invoke-virtual {p0, v3}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->setFocusableInTouchMode(Z)V

    .line 295
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->requestFocus()Z

    .line 296
    iput v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentState:I

    .line 297
    iput v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mTargetState:I

    .line 298
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 742
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBufferingChange(Z)V
    .locals 2
    .param p1, "stopBuffering"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mBufferingState:Z

    .line 79
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mOnBufferingChangeListener:Lcom/mautilus/lib/videoview/ui/VideoSurface$OnBufferingChangeListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mOnBufferingChangeListener:Lcom/mautilus/lib/videoview/ui/VideoSurface$OnBufferingChangeListener;

    invoke-interface {v0, p1}, Lcom/mautilus/lib/videoview/ui/VideoSurface$OnBufferingChangeListener;->onBufferingChange(Z)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaController:Lcom/mautilus/lib/videoview/ui/PlayerController;

    if-eqz v0, :cond_1

    .line 86
    iget-object v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaController:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->setEnabled(Z)V

    .line 88
    :cond_1
    return-void

    .line 86
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 342
    const-string v2, "[VideoSurface]::[openVideo]"

    invoke-static {v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 356
    invoke-direct {p0, v7}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->release(Z)V

    .line 359
    :try_start_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 360
    iget v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mAudioSession:I

    if-eqz v2, :cond_2

    .line 362
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mAudioSession:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 368
    :goto_1
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 369
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 370
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 371
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 372
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 373
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 374
    const/4 v2, 0x0

    iput v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentBufferPercentage:I

    .line 375
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 376
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 377
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 378
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 379
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 382
    const/4 v2, 0x1

    iput v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentState:I

    .line 383
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 387
    .local v0, "ex":Ljava/io/IOException;
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    iput v6, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentState:I

    .line 389
    iput v6, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mTargetState:I

    .line 390
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v8, v7}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 366
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v2

    iput v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mAudioSession:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 393
    :catch_1
    move-exception v0

    .line 395
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    iput v6, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentState:I

    .line 397
    iput v6, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mTargetState:I

    .line 398
    iget-object v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v2, v3, v8, v7}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 2
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 632
    const-string v0, "[VideoSurface]::[release]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 635
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->checkerStop()V

    .line 636
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 637
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 639
    iput v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentState:I

    .line 640
    if-eqz p1, :cond_0

    .line 642
    iput v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mTargetState:I

    .line 645
    :cond_0
    return-void
.end method


# virtual methods
.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 735
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentBufferPercentage:I

    .line 737
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 706
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mLastPosition:I

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 691
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 696
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

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
    .line 270
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 271
    const-class v0, Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 272
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 278
    const-class v0, Lcom/mautilus/lib/videoview/ui/VideoSurface;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 279
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    .line 189
    const-string v6, "[VideoSurface]::[onMeasure]"

    invoke-static {v6}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 190
    iget v6, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I

    invoke-static {v6, p1}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->getDefaultSize(II)I

    move-result v3

    .line 191
    .local v3, "width":I
    iget v6, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I

    invoke-static {v6, p2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->getDefaultSize(II)I

    move-result v0

    .line 192
    .local v0, "height":I
    iget v6, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I

    if-lez v6, :cond_6

    iget v6, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I

    if-lez v6, :cond_6

    .line 195
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 196
    .local v4, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 197
    .local v5, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 198
    .local v1, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 200
    .local v2, "heightSpecSize":I
    if-ne v4, v7, :cond_2

    if-ne v1, v7, :cond_2

    .line 203
    move v3, v5

    .line 204
    move v0, v2

    .line 207
    iget v6, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I

    mul-int/2addr v7, v3

    if-ge v6, v7, :cond_1

    .line 210
    iget v6, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I

    div-int v3, v6, v7

    .line 264
    .end local v1    # "heightSpecMode":I
    .end local v2    # "heightSpecSize":I
    .end local v4    # "widthSpecMode":I
    .end local v5    # "widthSpecSize":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->setMeasuredDimension(II)V

    .line 265
    return-void

    .line 211
    .restart local v1    # "heightSpecMode":I
    .restart local v2    # "heightSpecSize":I
    .restart local v4    # "widthSpecMode":I
    .restart local v5    # "widthSpecSize":I
    :cond_1
    iget v6, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I

    mul-int/2addr v7, v3

    if-le v6, v7, :cond_0

    .line 214
    iget v6, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I

    mul-int/2addr v6, v3

    iget v7, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I

    div-int v0, v6, v7

    goto :goto_0

    .line 217
    :cond_2
    if-ne v4, v7, :cond_3

    .line 220
    move v3, v5

    .line 221
    iget v6, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I

    mul-int/2addr v6, v3

    iget v7, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I

    div-int v0, v6, v7

    .line 222
    if-ne v1, v8, :cond_0

    if-le v0, v2, :cond_0

    .line 225
    move v0, v2

    goto :goto_0

    .line 228
    :cond_3
    if-ne v1, v7, :cond_4

    .line 231
    move v0, v2

    .line 232
    iget v6, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I

    div-int v3, v6, v7

    .line 233
    if-ne v4, v8, :cond_0

    if-le v3, v5, :cond_0

    .line 236
    move v3, v5

    goto :goto_0

    .line 242
    :cond_4
    iget v3, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I

    .line 243
    iget v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I

    .line 244
    if-ne v1, v8, :cond_5

    if-le v0, v2, :cond_5

    .line 247
    move v0, v2

    .line 248
    iget v6, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I

    div-int v3, v6, v7

    .line 250
    :cond_5
    if-ne v4, v8, :cond_0

    if-le v3, v5, :cond_0

    .line 253
    move v3, v5

    .line 254
    iget v6, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I

    mul-int/2addr v6, v3

    iget v7, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I

    div-int v0, v6, v7

    goto :goto_0

    .line 261
    .end local v1    # "heightSpecMode":I
    .end local v2    # "heightSpecSize":I
    .end local v4    # "widthSpecMode":I
    .end local v5    # "widthSpecSize":I
    :cond_6
    const-string v6, "[VideoSurface]::[onMeasure]::[no size yet, just adopt the given spec sizes]::[mVideoWidth %d]::[mVideoHeight %d]::[width %d]::[height %d]"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget v9, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mVideoWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 262
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 261
    invoke-static {v6, v7}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 663
    const-string v0, "[VideoSurface]::[pause]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 664
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->checkerStop()V

    .line 669
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 670
    iput v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentState:I

    .line 673
    :cond_0
    iput v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mTargetState:I

    .line 674
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 1
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 283
    invoke-static {p1, p2}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->getDefaultSize(II)I

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 684
    const-string v0, "[VideoSurface]::[resume]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 685
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->openVideo()V

    .line 686
    return-void
.end method

.method public seekTo(I)V
    .locals 4
    .param p1, "msec"    # I

    .prologue
    const/4 v3, 0x0

    .line 712
    const-string v0, "[VideoSurface]::[seekTo]::[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 713
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 716
    iput v3, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSeekWhenPrepared:I

    .line 722
    :goto_0
    return-void

    .line 720
    :cond_0
    iput p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Lcom/mautilus/lib/videoview/ui/PlayerController;)V
    .locals 1
    .param p1, "controller"    # Lcom/mautilus/lib/videoview/ui/PlayerController;

    .prologue
    .line 405
    const-string v0, "[VideoSurface]::[setMediaController]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaController:Lcom/mautilus/lib/videoview/ui/PlayerController;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaController:Lcom/mautilus/lib/videoview/ui/PlayerController;

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/PlayerController;->hide()V

    .line 410
    :cond_0
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaController:Lcom/mautilus/lib/videoview/ui/PlayerController;

    .line 411
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->attachMediaController()V

    .line 412
    return-void
.end method

.method public setOnBufferingChangeListener(Lcom/mautilus/lib/videoview/ui/VideoSurface$OnBufferingChangeListener;)V
    .locals 0
    .param p1, "onBufferingChangeListener"    # Lcom/mautilus/lib/videoview/ui/VideoSurface$OnBufferingChangeListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mOnBufferingChangeListener:Lcom/mautilus/lib/videoview/ui/VideoSurface$OnBufferingChangeListener;

    .line 96
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 569
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 580
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 590
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 559
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 302
    const-string v0, "[VideoSurface]::[setVideoPath]::[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->setVideoURI(Landroid/net/Uri;)V

    .line 304
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 308
    const-string v0, "[VideoSurface]::[setVideoURI]::[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 310
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 317
    const-string v0, "[VideoSurface]::[setVideoURI, headers]::[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    iput-object p1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mUri:Landroid/net/Uri;

    .line 319
    iput-object p2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mHeaders:Ljava/util/Map;

    .line 320
    iput v2, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mSeekWhenPrepared:I

    .line 321
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->openVideo()V

    .line 322
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->requestLayout()V

    .line 323
    invoke-virtual {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->invalidate()V

    .line 324
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 650
    const-string v0, "[VideoSurface]::[start]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 651
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->checkerStart()V

    .line 654
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 655
    iput v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentState:I

    .line 657
    :cond_0
    iput v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mTargetState:I

    .line 658
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 328
    const-string v0, "[VideoSurface]::[stopPlayback]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->checkerStop()V

    .line 330
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 333
    iget-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 335
    iput v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mCurrentState:I

    .line 336
    iput v1, p0, Lcom/mautilus/lib/videoview/ui/VideoSurface;->mTargetState:I

    .line 338
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 678
    const-string v0, "[VideoSurface]::[suspend]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 679
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mautilus/lib/videoview/ui/VideoSurface;->release(Z)V

    .line 680
    return-void
.end method
