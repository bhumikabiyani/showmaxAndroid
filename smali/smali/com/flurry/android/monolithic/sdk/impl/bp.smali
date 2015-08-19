.class public Lcom/flurry/android/monolithic/sdk/impl/bp;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/android/impl/ads/FlurryAdModule;


# direct methods
.method public constructor <init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V
    .locals 0

    .prologue
    .line 865
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/bp;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bp;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    const-string v1, "AdsThreadQueue Single Executor"

    invoke-static {v0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/impl/ads/FlurryAdModule;Ljava/lang/String;)V

    .line 870
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/bq;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/bq;-><init>(Lcom/flurry/android/monolithic/sdk/impl/bp;)V

    .line 879
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bp;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v1, v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/monolithic/sdk/impl/jf;)V

    .line 880
    return-void
.end method
