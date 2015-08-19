.class public Lcom/flurry/android/monolithic/sdk/impl/bo;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/android/impl/ads/FlurryAdModule;


# direct methods
.method public constructor <init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/bo;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 313
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->L()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Attempting to persist AdLogs"

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bo;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->B()V

    .line 315
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->L()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Attempting to persist FreqCap"

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bo;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->D()V

    .line 317
    return-void
.end method
