.class Lcom/flurry/android/monolithic/sdk/impl/dq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/androidsdk/IMAdInterstitialListener;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/dp;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/dp;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/dq;->a:Lcom/flurry/android/monolithic/sdk/impl/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdRequestFailed(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dq;->a:Lcom/flurry/android/monolithic/sdk/impl/dp;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dp;->d(Ljava/util/Map;)V

    .line 51
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dp;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi imAdView ad request failed."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onAdRequestLoaded(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dp;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi Interstitial ad request completed."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->READY:Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->getState()Lcom/inmobi/androidsdk/IMAdInterstitial$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdInterstitial$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dq;->a:Lcom/flurry/android/monolithic/sdk/impl/dp;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dp;->a(Ljava/util/Map;)V

    .line 59
    invoke-virtual {p1}, Lcom/inmobi/androidsdk/IMAdInterstitial;->show()V

    .line 61
    :cond_0
    return-void
.end method

.method public onDismissAdScreen(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dq;->a:Lcom/flurry/android/monolithic/sdk/impl/dp;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dp;->c(Ljava/util/Map;)V

    .line 66
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dp;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi Interstitial ad dismissed."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dp;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi onLeaveApplication"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onShowAdScreen(Lcom/inmobi/androidsdk/IMAdInterstitial;)V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dp;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi Interstitial ad shown."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method
