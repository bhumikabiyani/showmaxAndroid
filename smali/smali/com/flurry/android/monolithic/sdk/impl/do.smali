.class Lcom/flurry/android/monolithic/sdk/impl/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/androidsdk/IMAdListener;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/dn;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/dn;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/do;->a:Lcom/flurry/android/monolithic/sdk/impl/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdRequestCompleted(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/do;->a:Lcom/flurry/android/monolithic/sdk/impl/dn;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dn;->onAdShown(Ljava/util/Map;)V

    .line 157
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dn;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi imAdView ad request completed."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public onAdRequestFailed(Lcom/inmobi/androidsdk/IMAdView;Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/do;->a:Lcom/flurry/android/monolithic/sdk/impl/dn;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dn;->onRenderFailed(Ljava/util/Map;)V

    .line 149
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dn;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InMobi imAdView ad request failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public onDismissAdScreen(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/do;->a:Lcom/flurry/android/monolithic/sdk/impl/dn;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dn;->onAdClosed(Ljava/util/Map;)V

    .line 142
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dn;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi imAdView dismiss ad."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 3

    .prologue
    .line 163
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dn;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi onLeaveApplication"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public onShowAdScreen(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/do;->a:Lcom/flurry/android/monolithic/sdk/impl/dn;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dn;->onAdClicked(Ljava/util/Map;)V

    .line 135
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dn;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InMobi imAdView ad shown."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method
