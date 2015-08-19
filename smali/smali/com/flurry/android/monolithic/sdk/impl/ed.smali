.class Lcom/flurry/android/monolithic/sdk/impl/ed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mobclix/android/sdk/MobclixAdViewListener;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/ec;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ec;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ed;->a:Lcom/flurry/android/monolithic/sdk/impl/ec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keywords()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ec;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mobclix keyword callback."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAdClick(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ed;->a:Lcom/flurry/android/monolithic/sdk/impl/ec;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ec;->onAdClicked(Ljava/util/Map;)V

    .line 90
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ec;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mobclix AdView ad clicked."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onCustomAdTouchThrough(Lcom/mobclix/android/sdk/MobclixAdView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ed;->a:Lcom/flurry/android/monolithic/sdk/impl/ec;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ec;->onAdClicked(Ljava/util/Map;)V

    .line 97
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ec;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mobclix AdView custom ad clicked."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public onFailedLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ed;->a:Lcom/flurry/android/monolithic/sdk/impl/ec;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ec;->onRenderFailed(Ljava/util/Map;)V

    .line 76
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ec;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mobclix AdView ad failed to load."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onOpenAllocationLoad(Lcom/mobclix/android/sdk/MobclixAdView;I)Z
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ec;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mobclix AdView loaded an open allocation ad."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public onSuccessfulLoad(Lcom/mobclix/android/sdk/MobclixAdView;)V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ed;->a:Lcom/flurry/android/monolithic/sdk/impl/ec;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ec;->onAdShown(Ljava/util/Map;)V

    .line 69
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ec;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mobclix AdView ad successfully loaded."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public query()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ec;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mobclix query callback."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method
