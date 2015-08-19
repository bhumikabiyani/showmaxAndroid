.class public Lcom/flurry/android/monolithic/sdk/impl/bn;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/android/impl/ads/FlurryAdModule;


# direct methods
.method public constructor <init>(Lcom/flurry/android/impl/ads/FlurryAdModule;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/bn;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bn;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    const-string v1, "AdsThreadQueue Single Executor"

    invoke-static {v0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/impl/ads/FlurryAdModule;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bn;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ip;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flurry/android/impl/ads/FlurryAdModule;->f:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bn;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->C()V

    .line 286
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bn;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->E()V

    .line 287
    return-void
.end method
