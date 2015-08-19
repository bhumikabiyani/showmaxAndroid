.class Lcom/flurry/android/monolithic/sdk/impl/ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/dz;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/dz;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ea;->a:Lcom/flurry/android/monolithic/sdk/impl/dz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 6

    .prologue
    .line 65
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ea;->a:Lcom/flurry/android/monolithic/sdk/impl/dz;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dz;->a(Ljava/util/Map;)V

    .line 66
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ea;->a:Lcom/flurry/android/monolithic/sdk/impl/dz;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dz;->c(Ljava/util/Map;)V

    .line 68
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dz;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Millennial MMAdView Interstitial overlay launched."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dz;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial MMAdView Interstitial request is caching."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 6

    .prologue
    .line 53
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dz;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Millennial MMAdView returned interstitial ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ea;->a:Lcom/flurry/android/monolithic/sdk/impl/dz;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/dz;->a(Lcom/flurry/android/monolithic/sdk/impl/dz;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ea;->a:Lcom/flurry/android/monolithic/sdk/impl/dz;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/dz;->b:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->display()Z

    .line 60
    :cond_0
    return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ea;->a:Lcom/flurry/android/monolithic/sdk/impl/dz;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dz;->d(Ljava/util/Map;)V

    .line 47
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dz;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial MMAdView Interstitial failed to load ad."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
