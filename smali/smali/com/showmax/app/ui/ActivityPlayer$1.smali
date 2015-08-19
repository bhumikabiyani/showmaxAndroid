.class Lcom/showmax/app/ui/ActivityPlayer$1;
.super Ljava/lang/Object;
.source "ActivityPlayer.java"

# interfaces
.implements Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;


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
    .line 225
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 270
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_0

    .line 274
    const-string v0, "[APlayer]::[onAudioTrackClick]::[onCancelClick]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mClickedWhenPaused:Z
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$300(Lcom/showmax/app/ui/ActivityPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mautilus/lib/videoview/ui/VideoView;->resume()V

    .line 281
    :cond_0
    return-void
.end method

.method public onLanguageSelected(ILcom/showmax/lib/api/model/catalogue/Language;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "language"    # Lcom/showmax/lib/api/model/catalogue/Language;

    .prologue
    const/4 v1, 0x0

    const v5, 0x7f0d00bd

    .line 229
    const/16 v2, 0x1b

    if-ne p1, v2, :cond_2

    .line 234
    const-string v2, "[APlayer]::[onAudioTrackClick]::[onOkClick]::[subtitles: %s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mautilus/lib/videoview/ui/VideoView;->getCurrentPosition()I

    move-result v3

    # setter for: Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I
    invoke-static {v2, v3}, Lcom/showmax/app/ui/ActivityPlayer;->access$102(Lcom/showmax/app/ui/ActivityPlayer;I)I

    .line 238
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mClickedWhenPaused:Z
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityPlayer;->access$300(Lcom/showmax/app/ui/ActivityPlayer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mautilus/lib/videoview/ui/VideoView;->resume()V

    .line 244
    :cond_0
    new-instance v0, Lcom/showmax/lib/api/model/catalogue/Language;

    invoke-direct {v0}, Lcom/showmax/lib/api/model/catalogue/Language;-><init>()V

    .line 245
    .local v0, "off":Lcom/showmax/lib/api/model/catalogue/Language;
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-virtual {v2, v5}, Lcom/showmax/app/ui/ActivityPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Language;->name:Ljava/lang/String;

    .line 246
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-virtual {v2, v5}, Lcom/showmax/app/ui/ActivityPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/showmax/lib/api/model/catalogue/Language;->iso6393:Ljava/lang/String;

    .line 248
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mSubtitlesHelper:Lcom/showmax/app/util/SubtitlesHelper;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityPlayer;->access$400(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/app/util/SubtitlesHelper;

    move-result-object v2

    invoke-virtual {p2, v0}, Lcom/showmax/lib/api/model/catalogue/Language;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p2, v1

    .end local p2    # "language":Lcom/showmax/lib/api/model/catalogue/Language;
    :cond_1
    iget-object v3, p0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mautilus/lib/videoview/ui/VideoView;->getCurrentPosition()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, p2, v4, v5}, Lcom/showmax/app/util/SubtitlesHelper;->switchSubtitles(Lcom/showmax/lib/api/model/catalogue/Language;J)V

    .line 249
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mSubtitlesHelper:Lcom/showmax/app/util/SubtitlesHelper;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityPlayer;->access$400(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/showmax/app/util/SubtitlesHelper;

    move-result-object v2

    new-instance v3, Lcom/showmax/app/ui/ActivityPlayer$1$1;

    invoke-direct {v3, p0}, Lcom/showmax/app/ui/ActivityPlayer$1$1;-><init>(Lcom/showmax/app/ui/ActivityPlayer$1;)V

    invoke-virtual {v2, v3}, Lcom/showmax/app/util/SubtitlesHelper;->setSubtitlesHelperListener(Lcom/showmax/app/util/SubtitlesHelper$SubtitlesHelperListener;)V

    .line 258
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    invoke-static {v2}, Lcom/showmax/app/util/MauFlurry;->onPlaybackSubtitleChange(Landroid/content/Context;)V

    .line 259
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivityPlayer;->access$500(Lcom/showmax/app/ui/ActivityPlayer;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoView:Lcom/mautilus/lib/videoview/ui/VideoView;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityPlayer;->access$200(Lcom/showmax/app/ui/ActivityPlayer;)Lcom/mautilus/lib/videoview/ui/VideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mautilus/lib/videoview/ui/VideoView;->getCurrentPosition()I

    move-result v3

    # setter for: Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I
    invoke-static {v2, v3}, Lcom/showmax/app/ui/ActivityPlayer;->access$102(Lcom/showmax/app/ui/ActivityPlayer;I)I

    .line 262
    invoke-static {}, Lcom/showmax/app/util/analytics/MauAnalytics;->getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;

    move-result-object v2

    iget-object v3, p0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mVideoId:Ljava/lang/String;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivityPlayer;->access$500(Lcom/showmax/app/ui/ActivityPlayer;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/showmax/app/ui/ActivityPlayer$1;->this$0:Lcom/showmax/app/ui/ActivityPlayer;

    # getter for: Lcom/showmax/app/ui/ActivityPlayer;->mCurrentPosition:I
    invoke-static {v4}, Lcom/showmax/app/ui/ActivityPlayer;->access$100(Lcom/showmax/app/ui/ActivityPlayer;)I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/showmax/app/util/analytics/MauAnalytics;->onPlaybackSubtitles(Ljava/lang/String;Ljava/lang/String;I)V

    .line 265
    .end local v0    # "off":Lcom/showmax/lib/api/model/catalogue/Language;
    :cond_2
    return-void
.end method
