.class public final Lcom/flurry/android/monolithic/sdk/impl/dj;
.super Lcom/flurry/android/monolithic/sdk/impl/cr;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Lcom/google/ads/InterstitialAd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/dj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/dj;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/cr;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    .line 32
    const-string v0, "com.flurry.admob.MY_AD_UNIT_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dj;->c:Ljava/lang/String;

    .line 33
    const-string v0, "com.flurry.admob.MYTEST_AD_DEVICE_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dj;->d:Ljava/lang/String;

    .line 34
    const-string v0, "com.flurry.admob.test"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dj;->e:Z

    .line 36
    new-instance v1, Lcom/google/ads/InterstitialAd;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/dj;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/dj;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/ads/InterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/dj;->f:Lcom/google/ads/InterstitialAd;

    .line 37
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dj;->f:Lcom/google/ads/InterstitialAd;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/dl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/flurry/android/monolithic/sdk/impl/dl;-><init>(Lcom/flurry/android/monolithic/sdk/impl/dj;Lcom/flurry/android/monolithic/sdk/impl/dk;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/InterstitialAd;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/dj;)Lcom/google/ads/InterstitialAd;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dj;->f:Lcom/google/ads/InterstitialAd;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/dj;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 43
    iget-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/dj;->e:Z

    if-eqz v1, :cond_0

    .line 44
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/android/monolithic/sdk/impl/dj;->b:Ljava/lang/String;

    const-string v3, "Admob AdView set to Test Mode."

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/google/ads/AdRequest;->TEST_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 47
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/dj;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/dj;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->addTestDevice(Ljava/lang/String;)Lcom/google/ads/AdRequest;

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/dj;->f:Lcom/google/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/ads/InterstitialAd;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 52
    return-void
.end method
