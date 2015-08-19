.class Lcom/flurry/android/monolithic/sdk/impl/dt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jumptap/adtag/JtAdViewListener;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/ds;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ds;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/dt;->a:Lcom/flurry/android/monolithic/sdk/impl/ds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdError(Lcom/jumptap/adtag/JtAdView;II)V
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ds;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Jumptap AdView error."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dt;->a:Lcom/flurry/android/monolithic/sdk/impl/ds;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ds;->onRenderFailed(Ljava/util/Map;)V

    .line 108
    return-void
.end method

.method public onFocusChange(Lcom/jumptap/adtag/JtAdView;IZ)V
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ds;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Jumptap AdView focus changed."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public onInterstitialDismissed(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dt;->a:Lcom/flurry/android/monolithic/sdk/impl/ds;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ds;->onAdClosed(Ljava/util/Map;)V

    .line 96
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ds;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Jumptap AdView dismissed."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public onNewAd(Lcom/jumptap/adtag/JtAdView;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dt;->a:Lcom/flurry/android/monolithic/sdk/impl/ds;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ds;->onAdShown(Ljava/util/Map;)V

    .line 90
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ds;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Jumptap AdView new ad."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onNoAdFound(Lcom/jumptap/adtag/JtAdView;I)V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dt;->a:Lcom/flurry/android/monolithic/sdk/impl/ds;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ds;->onRenderFailed(Ljava/util/Map;)V

    .line 84
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ds;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Jumptap AdView no ad found."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method
