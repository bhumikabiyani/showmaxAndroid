.class Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$2;
.super Ljava/lang/Object;
.source "FragmentSplashTestTrailer.java"

# interfaces
.implements Lcom/mautilus/lib/videoview/ui/VideoView$VideoViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$2;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackClicked()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public onDrmError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 241
    return-void
.end method

.method public onDrmInitSuccessful(ZI)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "status"    # I

    .prologue
    .line 237
    return-void
.end method

.method public onPauseClick()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public onPlaybackError(ZII)V
    .locals 1
    .param p1, "retriesCountReached"    # Z
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$2;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mListener:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->access$100(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;->onPlaybackError()V

    .line 225
    return-void
.end method

.method public onPlaybackFinished()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$2;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    # invokes: Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->finishWelcomeVideo()V
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->access$000(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)V

    .line 218
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$2;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mListener:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->access$100(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;->onPlaybackFinished()V

    .line 219
    return-void
.end method

.method public onPlaybackInfo(II)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 212
    return-void
.end method

.method public onPrepared()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$2;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->access$200(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->resume()V

    .line 207
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$2;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    # invokes: Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->showSkipDelayed()V
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->access$300(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)V

    .line 208
    return-void
.end method

.method public onResumeClick()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public onSeekEnd(J)V
    .locals 0
    .param p1, "currentPosition"    # J

    .prologue
    .line 195
    return-void
.end method

.method public onSeekStart(J)V
    .locals 0
    .param p1, "currentPosition"    # J

    .prologue
    .line 191
    return-void
.end method

.method public onSubtitlesSelectionClicked()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method
