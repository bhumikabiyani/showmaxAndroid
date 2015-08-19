.class public final Lcom/flurry/android/monolithic/sdk/impl/cg;
.super Lcom/flurry/android/monolithic/sdk/impl/cn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/cn;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cg;->c()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a()Lcom/flurry/android/monolithic/sdk/impl/bi;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cg;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/cg;->e()Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/cg;->a:Ljava/lang/String;

    const-string v1, "Unable to launch FlurryFullscreenTakeoverActivity. Fix by declaring this Activity in your AndroidManifest.xml"

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method
