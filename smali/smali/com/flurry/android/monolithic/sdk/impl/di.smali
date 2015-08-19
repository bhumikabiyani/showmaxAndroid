.class final Lcom/flurry/android/monolithic/sdk/impl/di;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/AdListener;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/dg;


# direct methods
.method private constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/dg;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/di;->a:Lcom/flurry/android/monolithic/sdk/impl/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/dg;Lcom/flurry/android/monolithic/sdk/impl/dh;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/di;-><init>(Lcom/flurry/android/monolithic/sdk/impl/dg;)V

    return-void
.end method


# virtual methods
.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/di;->a:Lcom/flurry/android/monolithic/sdk/impl/dg;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dg;->onAdClosed(Ljava/util/Map;)V

    .line 123
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dg;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Admob AdView dismissed from screen."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/di;->a:Lcom/flurry/android/monolithic/sdk/impl/dg;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dg;->onRenderFailed(Ljava/util/Map;)V

    .line 112
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dg;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Admob AdView failed to receive ad."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/di;->a:Lcom/flurry/android/monolithic/sdk/impl/dg;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dg;->onAdClicked(Ljava/util/Map;)V

    .line 129
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dg;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Admob AdView leave application."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 3

    .prologue
    .line 117
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dg;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Admob AdView present on screen."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/di;->a:Lcom/flurry/android/monolithic/sdk/impl/dg;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dg;->onAdShown(Ljava/util/Map;)V

    .line 106
    const/4 v0, 0x4

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dg;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Admob AdView received ad."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method
