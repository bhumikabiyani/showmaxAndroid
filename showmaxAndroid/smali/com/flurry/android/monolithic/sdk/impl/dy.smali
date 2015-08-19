.class Lcom/flurry/android/monolithic/sdk/impl/dy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/android/RequestListener;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/dx;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/dx;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/dy;->a:Lcom/flurry/android/monolithic/sdk/impl/dx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MMAdOverlayLaunched(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dy;->a:Lcom/flurry/android/monolithic/sdk/impl/dx;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dx;->onAdClicked(Ljava/util/Map;)V

    .line 119
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dx;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial MMAdView banner overlay launched."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/millennialmedia/android/MMAd;)V
    .locals 3

    .prologue
    .line 125
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dx;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial MMAdView banner request is caching."

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public requestCompleted(Lcom/millennialmedia/android/MMAd;)V
    .locals 6

    .prologue
    .line 111
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dy;->a:Lcom/flurry/android/monolithic/sdk/impl/dx;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dx;->onAdShown(Ljava/util/Map;)V

    .line 112
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dx;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Millennial MMAdView returned ad."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    .locals 6

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dy;->a:Lcom/flurry/android/monolithic/sdk/impl/dx;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/dx;->onRenderFailed(Ljava/util/Map;)V

    .line 105
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dx;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Millennial MMAdView failed to load ad with error: %d %s."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method
