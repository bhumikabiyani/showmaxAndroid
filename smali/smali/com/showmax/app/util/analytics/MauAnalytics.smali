.class public Lcom/showmax/app/util/analytics/MauAnalytics;
.super Ljava/lang/Object;
.source "MauAnalytics.java"


# static fields
.field private static sInstance:Lcom/showmax/app/util/analytics/MauAnalytics;


# instance fields
.field private mEnabled:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p2, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    .line 31
    invoke-static {p1, p2}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->initInstance(Landroid/content/Context;Z)V

    .line 32
    invoke-static {p1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lcom/showmax/app/util/analytics/LogEventManager;->initInstance(ZLjava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/showmax/app/util/analytics/MauAnalytics;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/showmax/app/util/analytics/MauAnalytics;->sInstance:Lcom/showmax/app/util/analytics/MauAnalytics;

    return-object v0
.end method

.method public static initInstance(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-object v0, Lcom/showmax/app/util/analytics/MauAnalytics;->sInstance:Lcom/showmax/app/util/analytics/MauAnalytics;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/showmax/app/util/analytics/MauAnalytics;

    invoke-direct {v0, p0, p1, p2}, Lcom/showmax/app/util/analytics/MauAnalytics;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    sput-object v0, Lcom/showmax/app/util/analytics/MauAnalytics;->sInstance:Lcom/showmax/app/util/analytics/MauAnalytics;

    .line 41
    :cond_0
    return-void
.end method

.method private toSeconds(I)I
    .locals 1
    .param p1, "ms"    # I

    .prologue
    .line 306
    div-int/lit16 v0, p1, 0x3e8

    return v0
.end method


# virtual methods
.method public onApiError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onApiError(ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/showmax/app/util/analytics/LogEventManager;->onApiError(ILjava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    return-void
.end method

.method public onAppClose(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onAppClose()V

    .line 82
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/analytics/LogEventManager;->onAppClose(Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onAppFirstStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onAppFirstStart()V

    .line 64
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/analytics/LogEventManager;->onAppFirstStart(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public onAppStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onAppStart()V

    .line 73
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/analytics/LogEventManager;->onAppStart(Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public onAssetPurchaseSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onAssetPurchaseSuccess(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/analytics/LogEventManager;->onAssetPurchaseSuccess(Ljava/lang/String;)V

    .line 285
    :cond_0
    return-void
.end method

.method public onNavToAssetDetail(Ljava/lang/String;)V
    .locals 1
    .param p1, "assetId"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onNavToAssetDetail(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/analytics/LogEventManager;->onNavToAssetDetail(Ljava/lang/String;)V

    .line 169
    :cond_0
    return-void
.end method

.method public onNavToMovies(Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onNavToMovies(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/analytics/LogEventManager;->onNavToMovies(Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method

.method public onNavToMyAccount()V
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onNavToMyAccount()V

    .line 122
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/app/util/analytics/LogEventManager;->onNavToMyAccount()V

    .line 124
    :cond_0
    return-void
.end method

.method public onNavToMyFlix()V
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onNavToMyFlix()V

    .line 131
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/app/util/analytics/LogEventManager;->onNavToMyFlix()V

    .line 133
    :cond_0
    return-void
.end method

.method public onNavToSearch(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onNavToSearch(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/analytics/LogEventManager;->onNavToSearch(Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method

.method public onNavToSection(Ljava/lang/String;)V
    .locals 1
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onNavToSection(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/analytics/LogEventManager;->onNavToSection(Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public onNavToTvShows(Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onNavToTvShows(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/analytics/LogEventManager;->onNavToTvShows(Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onPlaybackBufferUnderrun(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionMs"    # I

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onPlaybackBufferUnderrun(Ljava/lang/String;I)V

    .line 216
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/showmax/app/util/analytics/LogEventManager;->onPlaybackBufferUnderrun(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    :cond_0
    return-void
.end method

.method public onPlaybackFullScreen(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionMs"    # I

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 269
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onPlaybackFullScreen(Ljava/lang/String;I)V

    .line 270
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/showmax/app/util/analytics/LogEventManager;->onPlaybackFullScreen(Ljava/lang/String;Ljava/lang/String;I)V

    .line 272
    :cond_0
    return-void
.end method

.method public onPlaybackPause(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionMs"    # I

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onPlaybackPause(Ljava/lang/String;I)V

    .line 189
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/showmax/app/util/analytics/LogEventManager;->onPlaybackPause(Ljava/lang/String;Ljava/lang/String;I)V

    .line 191
    :cond_0
    return-void
.end method

.method public onPlaybackProfileChange(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionMs"    # I

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onPlaybackProfileChange(Ljava/lang/String;I)V

    .line 252
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/showmax/app/util/analytics/LogEventManager;->onPlaybackProfileChange(Ljava/lang/String;Ljava/lang/String;I)V

    .line 254
    :cond_0
    return-void
.end method

.method public onPlaybackResume(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionMs"    # I

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onPlaybackResume(Ljava/lang/String;I)V

    .line 198
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/showmax/app/util/analytics/LogEventManager;->onPlaybackResume(Ljava/lang/String;Ljava/lang/String;I)V

    .line 200
    :cond_0
    return-void
.end method

.method public onPlaybackResumeUnderrun(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionMs"    # I

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onPlaybackResumeUnderrun(Ljava/lang/String;I)V

    .line 207
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/showmax/app/util/analytics/LogEventManager;->onPlaybackResumeUnderrun(Ljava/lang/String;Ljava/lang/String;I)V

    .line 209
    :cond_0
    return-void
.end method

.method public onPlaybackSeek(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionMs"    # I

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onPlaybackSeek(Ljava/lang/String;I)V

    .line 225
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/showmax/app/util/analytics/LogEventManager;->onPlaybackSeek(Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    :cond_0
    return-void
.end method

.method public onPlaybackStart(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionMs"    # I

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onPlaybackStart(Ljava/lang/String;I)V

    .line 180
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/showmax/app/util/analytics/LogEventManager;->onPlaybackStart(Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    :cond_0
    return-void
.end method

.method public onPlaybackStop(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionMs"    # I

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onPlaybackStop(Ljava/lang/String;I)V

    .line 243
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/showmax/app/util/analytics/LogEventManager;->onPlaybackStop(Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    :cond_0
    return-void
.end method

.method public onPlaybackSubtitles(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionMs"    # I

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 233
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onPlaybackSubtitles(Ljava/lang/String;I)V

    .line 234
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/showmax/app/util/analytics/LogEventManager;->onPlaybackSubtitles(Ljava/lang/String;Ljava/lang/String;I)V

    .line 236
    :cond_0
    return-void
.end method

.method public onPlaybackThroughput(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "currentPositionMs"    # I

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 260
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onPlaybackThroughput(Ljava/lang/String;I)V

    .line 261
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/showmax/app/util/analytics/MauAnalytics;->toSeconds(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/showmax/app/util/analytics/LogEventManager;->onPlaybackThroughput(Ljava/lang/String;Ljava/lang/String;I)V

    .line 263
    :cond_0
    return-void
.end method

.method public onResume(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onResume()V

    .line 100
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/analytics/LogEventManager;->onResume(Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onSuspend(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/showmax/app/util/analytics/MauAnalytics;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->getInstance()Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/app/util/analytics/GoogleAnalyticsManager;->onSuspend()V

    .line 91
    invoke-static {}, Lcom/showmax/app/util/analytics/LogEventManager;->getInstance()Lcom/showmax/app/util/analytics/LogEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/showmax/app/util/analytics/LogEventManager;->onSuspend(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method
