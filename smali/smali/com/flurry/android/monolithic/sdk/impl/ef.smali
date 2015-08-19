.class Lcom/flurry/android/monolithic/sdk/impl/ef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/ee;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ee;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ef;->a:Lcom/flurry/android/monolithic/sdk/impl/ee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keywords()Ljava/lang/String;
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ee;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mobclix keyword callback."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDismissAd(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ef;->a:Lcom/flurry/android/monolithic/sdk/impl/ee;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ee;->c(Ljava/util/Map;)V

    .line 38
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ee;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mobclix Interstitial ad dismissed."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onFailedLoad(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;I)V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ef;->a:Lcom/flurry/android/monolithic/sdk/impl/ee;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ee;->d(Ljava/util/Map;)V

    .line 44
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ee;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mobclix Interstitial ad failed to load."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public onFinishLoad(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ee;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mobclix Interstitial ad successfully loaded."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public onPresentAd(Lcom/mobclix/android/sdk/MobclixFullScreenAdView;)V
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ef;->a:Lcom/flurry/android/monolithic/sdk/impl/ee;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ee;->a(Ljava/util/Map;)V

    .line 55
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ee;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mobclix Interstitial ad successfully shown."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public query()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ee;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mobclix query callback."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method
