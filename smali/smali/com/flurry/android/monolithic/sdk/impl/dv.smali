.class Lcom/flurry/android/monolithic/sdk/impl/dv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jumptap/adtag/JtAdViewListener;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/du;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/du;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/dv;->a:Lcom/flurry/android/monolithic/sdk/impl/du;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdError(Lcom/jumptap/adtag/JtAdView;II)V
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/du;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Jumptap Interstitial error."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dv;->a:Lcom/flurry/android/monolithic/sdk/impl/du;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/du;->d(Ljava/util/Map;)V

    .line 99
    return-void
.end method

.method public onFocusChange(Lcom/jumptap/adtag/JtAdView;IZ)V
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/du;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Jumptap Interstitial focus changed."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onInterstitialDismissed(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dv;->a:Lcom/flurry/android/monolithic/sdk/impl/du;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/du;->c(Ljava/util/Map;)V

    .line 87
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/du;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Jumptap Interstitial dismissed."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public onNewAd(Lcom/jumptap/adtag/JtAdView;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dv;->a:Lcom/flurry/android/monolithic/sdk/impl/du;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/du;->a(Ljava/util/Map;)V

    .line 81
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/du;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Jumptap Interstitial new ad."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onNoAdFound(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dv;->a:Lcom/flurry/android/monolithic/sdk/impl/du;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/du;->d(Ljava/util/Map;)V

    .line 75
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/du;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Jumptap Interstitial no ad found."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method
