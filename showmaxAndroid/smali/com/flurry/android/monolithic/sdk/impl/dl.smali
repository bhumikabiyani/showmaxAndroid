.class final Lcom/flurry/android/monolithic/sdk/impl/dl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/AdListener;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/dj;


# direct methods
.method private constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/dj;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/dl;->a:Lcom/flurry/android/monolithic/sdk/impl/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/dj;Lcom/flurry/android/monolithic/sdk/impl/dk;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/dl;-><init>(Lcom/flurry/android/monolithic/sdk/impl/dj;)V

    return-void
.end method


# virtual methods
.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dl;->a:Lcom/flurry/android/monolithic/sdk/impl/dj;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dj;->c(Ljava/util/Map;)V

    .line 78
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dj;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Admob Interstitial dismissed from screen."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dl;->a:Lcom/flurry/android/monolithic/sdk/impl/dj;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dj;->d(Ljava/util/Map;)V

    .line 67
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dj;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Admob Interstitial failed to receive takeover."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dl;->a:Lcom/flurry/android/monolithic/sdk/impl/dj;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dj;->b(Ljava/util/Map;)V

    .line 84
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dj;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Admob Interstitial leave application."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dj;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Admob Interstitial present on screen."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dl;->a:Lcom/flurry/android/monolithic/sdk/impl/dj;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/dj;->a(Lcom/flurry/android/monolithic/sdk/impl/dj;)Lcom/google/ads/InterstitialAd;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 58
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dj;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Admob Interstitial received takeover."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dl;->a:Lcom/flurry/android/monolithic/sdk/impl/dj;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dj;->a(Ljava/util/Map;)V

    .line 60
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dl;->a:Lcom/flurry/android/monolithic/sdk/impl/dj;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/dj;->a(Lcom/flurry/android/monolithic/sdk/impl/dj;)Lcom/google/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/InterstitialAd;->show()V

    .line 62
    :cond_0
    return-void
.end method
