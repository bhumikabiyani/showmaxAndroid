.class public Lcom/showmax/app/util/MauFlurry;
.super Ljava/lang/Object;
.source "MauFlurry.java"

# interfaces
.implements Lcom/showmax/app/Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/util/MauFlurry$SystemEvent;,
        Lcom/showmax/app/util/MauFlurry$ActionEvent;,
        Lcom/showmax/app/util/MauFlurry$NavigationEvent;
    }
.end annotation


# static fields
.field private static mInitiated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    sput-boolean v0, Lcom/showmax/app/util/MauFlurry;->mInitiated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    return-void
.end method

.method public static closeSession(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 286
    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v0

    iget-boolean v0, v0, Lcom/showmax/app/Build;->FLURRY:Z

    if-eqz v0, :cond_0

    .line 288
    const-string v0, "[MauFlurry]::[closeSession]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 289
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 291
    :cond_0
    return-void
.end method

.method public static onAppToBackground(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 466
    sget-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->APP_BACKGROUNDED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$SystemEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public static onAppToForeground(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 471
    sget-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->APP_RESUMED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$SystemEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public static onConnectionLost(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 441
    sget-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->CONNECTION_LOST:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$SystemEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public static onConnectionRestore(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 446
    sget-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->CONNECTION_RESTORED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$SystemEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public static onLanguageSwitch(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 416
    sget-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->LANGUAGE_SWITCH:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$ActionEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public static onNavAllMovies(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->ALL_MOVIES:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public static onNavAllTvShows(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 341
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->ALL_TV_SHOWS:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public static onNavAppClose(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->APP_CLOSE:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public static onNavAppStart(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->APP_START:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public static onNavBollywood(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 316
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->BOLLYWOOD:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public static onNavDetailClose(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 371
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->DETAIL_CLOSE:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public static onNavDetailOpen(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 366
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->DETAIL_OPEN:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public static onNavGenreMovies(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 336
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->GENRE_MOVIES:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public static onNavGenreTvShows(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 346
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->GENRE_TV_SHOWS:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public static onNavHollywood(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 306
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->HOLLYWOOD:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public static onNavJazwood(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->JAZWOOD:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public static onNavKids(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 321
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->KIDS:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public static onNavLanguageSelection(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 356
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->LANGUAGE_SELECTION:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public static onNavMenuCollapse(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 396
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->MENU_COLLAPSE:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method public static onNavMenuExpand(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 391
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->MENU_EXPAND:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public static onNavMyFlix(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->MY_FLIX:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public static onNavPlaybackContent(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->PLAYBACK_CONTENT:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public static onNavPlaybackExit(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 386
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->PLAYBACK_EXIT:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public static onNavPlaybackTrailer(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 376
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->PLAYBACK_TRAILER:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public static onNavSearch(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 326
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->SEARCH:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public static onNavSignIn(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 361
    sget-object v0, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->SIGN_IN:Lcom/showmax/app/util/MauFlurry$NavigationEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$NavigationEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public static onPlaybackLongBuffering(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 451
    sget-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->PLAYBACK_LONG_BUFFERING:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$SystemEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public static onPlaybackPause(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 421
    sget-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->PLAYBACK_PAUSE:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$ActionEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public static onPlaybackResume(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 426
    sget-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->PLAYBACK_RESUME:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$ActionEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public static onPlaybackSeek(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 431
    sget-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->PLAYBACK_SEEK:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$ActionEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public static onPlaybackSubtitleChange(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 436
    sget-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->PLAYBACK_SUBTITLES_CHANGE:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$ActionEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public static onSessionExpired(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 456
    sget-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->SESSION_EXPIRED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$SystemEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public static onSignIn(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 401
    sget-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->SIGN_IN:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$ActionEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public static onSignOut(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 406
    sget-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->SIGN_OUT:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$ActionEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public static onSignUp(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 411
    sget-object v0, Lcom/showmax/app/util/MauFlurry$ActionEvent;->SIGN_UP:Lcom/showmax/app/util/MauFlurry$ActionEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$ActionEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public static onSubscriptionExpired(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 461
    sget-object v0, Lcom/showmax/app/util/MauFlurry$SystemEvent;->SUBSCRIPTION_EXPIRED:Lcom/showmax/app/util/MauFlurry$SystemEvent;

    invoke-virtual {v0}, Lcom/showmax/app/util/MauFlurry$SystemEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/showmax/app/util/MauFlurry;->sendEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method private static sendEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 476
    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v0

    iget-boolean v0, v0, Lcom/showmax/app/Build;->FLURRY:Z

    if-eqz v0, :cond_0

    .line 478
    invoke-static {p1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    .line 480
    :cond_0
    return-void
.end method

.method public static startSession(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 267
    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v0

    iget-boolean v0, v0, Lcom/showmax/app/Build;->FLURRY:Z

    if-eqz v0, :cond_1

    .line 269
    sget-boolean v0, Lcom/showmax/app/util/MauFlurry;->mInitiated:Z

    if-nez v0, :cond_0

    .line 271
    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->setLogEvents(Z)V

    .line 272
    sput-boolean v1, Lcom/showmax/app/util/MauFlurry;->mInitiated:Z

    .line 274
    :cond_0
    const-string v0, "[MauFlurry]::[startSession]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->d(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v0

    iget-object v0, v0, Lcom/showmax/app/Build;->API_KEY_FLURRY:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    :cond_1
    return-void
.end method
