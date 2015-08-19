.class public final Lcom/flurry/android/monolithic/sdk/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/az;


# instance fields
.field final synthetic a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;


# direct methods
.method private constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/d;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/android/monolithic/sdk/impl/a;)V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/d;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/ar;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 426
    const/4 v1, 0x0

    .line 427
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/d;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v2, p2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 428
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/d;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    new-instance v2, Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/d;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v2, v3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    .line 429
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/d;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 430
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/d;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 431
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/d;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v1, p3}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Z)Z

    .line 432
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/d;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v1, p2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;)V

    .line 456
    :cond_0
    :goto_0
    return v0

    .line 434
    :cond_1
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/d;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v2, p2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->c(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 436
    if-nez p3, :cond_2

    .line 437
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/d;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/ar;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->a(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    .line 440
    :cond_2
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    .line 441
    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a()Lcom/flurry/android/monolithic/sdk/impl/bi;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/d;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/d;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-static {v3}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->b(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    if-eqz p3, :cond_0

    .line 443
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/e;

    invoke-direct {v1, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/e;-><init>(Lcom/flurry/android/monolithic/sdk/impl/d;Lcom/flurry/android/monolithic/sdk/impl/ar;)V

    invoke-virtual {p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/ar;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
