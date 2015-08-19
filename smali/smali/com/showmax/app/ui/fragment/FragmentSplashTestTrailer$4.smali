.class Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$4;
.super Ljava/lang/Object;
.source "FragmentSplashTestTrailer.java"

# interfaces
.implements Lcom/mautilus/lib/videoview/util/DrmManager$DrmManagerListener;


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
    .line 258
    iput-object p1, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$4;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 275
    return-void
.end method

.method public onInitFinished(ZI)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "status"    # I

    .prologue
    .line 263
    if-eqz p1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$4;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->access$200(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->loadAndPlay(I)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$4;->this$0:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;

    # getter for: Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->mListener:Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;
    invoke-static {v0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;->access$100(Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer;)Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/showmax/app/ui/fragment/FragmentSplashTestTrailer$FragmentSplashTestTrailerListener;->onPlaybackError()V

    goto :goto_0
.end method
