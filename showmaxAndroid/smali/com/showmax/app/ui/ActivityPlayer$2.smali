.class Lcom/showmax/app/ui/ActivityPlayer$2;
.super Ljava/lang/Object;
.source "ActivityPlayer.java"

# interfaces
.implements Lcom/showmax/app/ui/widget/ContentWarningView$ContentWarningListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityPlayer;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityPlayer;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityPlayer$2;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseClick()V
    .locals 1

    .prologue
    .line 426
    const-string v0, "[APlayer]::[mContentWarningListener]::[onCloseClick]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$2;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivityPlayer;->finish()V

    .line 429
    return-void
.end method

.method public onEndShowing()V
    .locals 2

    .prologue
    .line 416
    const-string v0, "[APlayer]::[mContentWarningListener]::[onEndShowing]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$2;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer$2;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$100(Lcom/showmax/app/ui/ActivityPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->loadAndPlay(I)V

    .line 419
    return-void
.end method

.method public onStartFetchingBg()V
    .locals 1

    .prologue
    .line 406
    const-string v0, "[APlayer]::[mContentWarningListener]::[onStartFetchingBg]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$2;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->showProgress()V

    .line 409
    return-void
.end method

.method public onStartShowing(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 396
    const-string v0, "[APlayer]::[mContentWarningListener]::[onStartShowing]::[success: %b]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$2;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->hideProgress()V

    .line 399
    return-void
.end method

.method public onWatchClick()V
    .locals 2

    .prologue
    .line 386
    const-string v0, "[APlayer]::[mContentWarningListener]::[onWatchClick]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$2;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivityPlayer$2;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I
    invoke-static {v1}, Lcom/showmax/app/ui/ActivityPlayer;->access$100(Lcom/showmax/app/ui/ActivityPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mautilus/lib/videoview/ui/VideoView;->loadAndPlay(I)V

    .line 389
    return-void
.end method
