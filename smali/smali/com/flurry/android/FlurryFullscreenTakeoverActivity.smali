.class public final Lcom/flurry/android/FlurryFullscreenTakeoverActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static final EXTRA_KEY_ADSPACENAME:Ljava/lang/String; = "adSpaceName"

.field public static final EXTRA_KEY_FRAMEINDEX:Ljava/lang/String; = "frameIndex"

.field public static final EXTRA_KEY_TARGETINTENT:Ljava/lang/String; = "targetIntent"

.field public static final EXTRA_KEY_URL:Ljava/lang/String; = "url"

.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/flurry/android/monolithic/sdk/impl/o;

.field private c:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

.field private d:Landroid/view/ViewGroup;

.field private e:Lcom/flurry/android/monolithic/sdk/impl/ar;

.field private f:Landroid/app/ProgressDialog;

.field private g:Landroid/widget/VideoView;

.field private h:Z

.field private i:Landroid/widget/MediaController;

.field private j:Z

.field private k:Landroid/content/Intent;

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Lcom/flurry/android/monolithic/sdk/impl/ay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ay;->a:Lcom/flurry/android/monolithic/sdk/impl/ay;

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->n:Lcom/flurry/android/monolithic/sdk/impl/ay;

    .line 468
    return-void
.end method

.method public static synthetic a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    return-object v0
.end method

.method public static synthetic a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    return-object p1
.end method

.method public static synthetic a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/android/monolithic/sdk/impl/ay;)Lcom/flurry/android/monolithic/sdk/impl/ay;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->n:Lcom/flurry/android/monolithic/sdk/impl/ay;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 396
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 400
    :cond_0
    iput-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Landroid/app/ProgressDialog;

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-virtual {v0, v3}, Lcom/flurry/android/monolithic/sdk/impl/ar;->setVisibility(I)V

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_5

    .line 408
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 409
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 412
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 413
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 416
    :cond_4
    iput-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    .line 419
    :cond_5
    iput-boolean v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->h:Z

    .line 420
    iput-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->i:Landroid/widget/MediaController;

    .line 421
    return-void
.end method

.method public static synthetic a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Z)Z
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->h:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 330
    .line 331
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    if-eqz v1, :cond_0

    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 336
    :cond_0
    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v0

    .line 354
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 355
    const-string v2, "link"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 360
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic b(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 340
    .line 341
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 343
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "market"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 345
    :cond_0
    return v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 368
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    new-instance v0, Landroid/widget/MediaController;

    invoke-direct {v0, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->i:Landroid/widget/MediaController;

    .line 374
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 375
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 376
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 377
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->i:Landroid/widget/MediaController;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 378
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 380
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Landroid/app/ProgressDialog;

    .line 385
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 386
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 388
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 390
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ar;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    return-object v0
.end method

.method public getAdUnityView()Lcom/flurry/android/monolithic/sdk/impl/o;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    return-object v0
.end method

.method public getResult()Lcom/flurry/android/monolithic/sdk/impl/ay;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->n:Lcom/flurry/android/monolithic/sdk/impl/ay;

    return-object v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 311
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onCompletion"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 175
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onConfigurationChange"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 177
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v4, 0x3

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/4 v3, 0x0

    .line 76
    sget-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    const v0, 0x1030007

    invoke-virtual {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setTheme(I)V

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/cq;->a(Landroid/view/Window;)V

    .line 82
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 83
    const-string v0, "targetIntent"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->k:Landroid/content/Intent;

    .line 84
    const-string v0, "adSpaceName"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->m:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->k:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->k:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->l:J
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p0, p1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 140
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "Cannot launch Activity"

    invoke-static {v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    iput-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->k:Landroid/content/Intent;

    .line 93
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_0

    .line 96
    :cond_0
    const-string v0, "url"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    if-nez v0, :cond_4

    .line 99
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d:Landroid/view/ViewGroup;

    .line 101
    if-nez p1, :cond_2

    .line 102
    :goto_1
    if-gez v5, :cond_1

    .line 104
    const-string v0, "frameIndex"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 106
    :cond_1
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->H()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    .line 108
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    if-eqz v0, :cond_3

    .line 109
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->G()Lcom/flurry/android/monolithic/sdk/impl/m;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/o;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;I)V

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    .line 110
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->initLayout()V

    .line 111
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 112
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 113
    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 101
    :cond_2
    const-string v0, "frameIndex"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_1

    .line 116
    :cond_3
    sget-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v1, "appSpotModule.getTakeoverAdUnit() IS null "

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_4
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d:Landroid/view/ViewGroup;

    .line 122
    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setContentView(Landroid/view/View;)V

    .line 124
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 125
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/n;

    invoke-direct {v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/n;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    .line 126
    invoke-direct {p0, v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_5
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-direct {v1, p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    .line 129
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/d;

    invoke-direct {v1, p0, v3}, Lcom/flurry/android/monolithic/sdk/impl/d;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/android/monolithic/sdk/impl/a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ar;->setBasicWebViewUrlLoadingHandler(Lcom/flurry/android/monolithic/sdk/impl/az;)V

    .line 130
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/b;

    invoke-direct {v1, p0, v3}, Lcom/flurry/android/monolithic/sdk/impl/b;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/android/monolithic/sdk/impl/a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ar;->setBasicWebViewClosingHandler(Lcom/flurry/android/monolithic/sdk/impl/av;)V

    .line 131
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/c;

    invoke-direct {v1, p0, v3}, Lcom/flurry/android/monolithic/sdk/impl/c;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/android/monolithic/sdk/impl/a;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ar;->setBasicWebViewFullScreenTransitionHandler(Lcom/flurry/android/monolithic/sdk/impl/aw;)V

    .line 133
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 216
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a()V

    .line 218
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->c()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->stop()V

    .line 226
    :cond_1
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    .line 227
    invoke-virtual {v0, p0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Landroid/app/Activity;)V

    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 230
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    .line 286
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onError"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 287
    sget-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v1, "Error occurs during video playback"

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    if-eqz v0, :cond_2

    .line 291
    iget-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->h:Z

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->b()V

    .line 294
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a()V

    .line 305
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_0

    .line 299
    :cond_1
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a()V

    goto :goto_0

    .line 302
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 251
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 252
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    const-string v1, "adWillClose"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/o;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/o;->getAdLog()Lcom/flurry/android/monolithic/sdk/impl/m;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v5}, Lcom/flurry/android/monolithic/sdk/impl/o;->getAdFrameIndex()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    move v0, v7

    .line 280
    :goto_0
    return v0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    if-eqz v0, :cond_4

    .line 258
    iget-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->h:Z

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->b()V

    .line 261
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a()V

    move v0, v7

    .line 262
    goto :goto_0

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a()V

    move v0, v7

    .line 266
    goto :goto_0

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    if-eqz v0, :cond_4

    .line 270
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->e:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->b()V

    :goto_1
    move v0, v7

    .line 276
    goto :goto_0

    .line 273
    :cond_3
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ay;->b:Lcom/flurry/android/monolithic/sdk/impl/ay;

    iput-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->n:Lcom/flurry/android/monolithic/sdk/impl/ay;

    .line 274
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_1

    .line 280
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 202
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onPause"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->j:Z

    .line 205
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->c()V

    .line 213
    :cond_1
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 317
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onPrepared"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->j:Z

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 327
    :cond_1
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 181
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onRestart"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 183
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 187
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onResume"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->j:Z

    .line 190
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->i:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->i:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->b()V

    .line 198
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 166
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "frameIndex"

    iget-object v1, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->getAdFrameIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 145
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onStart"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 147
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 157
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v2, "onStop"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 160
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 234
    sget-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged hasFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-boolean v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->j:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->k:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->l:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 237
    sget-object v0, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a:Ljava/lang/String;

    const-string v1, "terminate this launcher activity because launched activity was terminated or wasn\'t launched"

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->finish()V

    .line 242
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 243
    return-void
.end method
