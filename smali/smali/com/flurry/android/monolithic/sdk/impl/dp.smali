.class public Lcom/flurry/android/monolithic/sdk/impl/dp;
.super Lcom/flurry/android/monolithic/sdk/impl/cr;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/dp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/dp;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/cr;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    .line 31
    const-string v0, "com.flurry.inmobi.MY_APP_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dp;->c:Ljava/lang/String;

    .line 32
    const-string v0, "com.flurry.inmobi.test"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dp;->d:Z

    .line 33
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/dp;->g()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dp;->e:Ljava/lang/reflect/Method;

    .line 34
    return-void
.end method

.method private a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdInterstitialListener;)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dp;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dp;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/dp;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static g()Ljava/lang/reflect/Method;
    .locals 7

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 111
    const-class v0, Lcom/inmobi/androidsdk/IMAdInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 112
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 113
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 114
    const-string v6, "setIMAdInterstitialListener"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "setImAdInterstitialListener"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 121
    :cond_0
    :goto_1
    return-object v0

    .line 112
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 42
    new-instance v1, Lcom/inmobi/androidsdk/IMAdInterstitial;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/dp;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/dp;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/inmobi/androidsdk/IMAdInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/dq;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/dq;-><init>(Lcom/flurry/android/monolithic/sdk/impl/dp;)V

    .line 82
    invoke-direct {p0, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/dp;->a(Lcom/inmobi/androidsdk/IMAdInterstitial;Lcom/inmobi/androidsdk/IMAdInterstitialListener;)V

    .line 86
    new-instance v0, Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/IMAdRequest;-><init>()V

    .line 87
    iget-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/dp;->d:Z

    if-eqz v2, :cond_0

    .line 88
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/dp;->b:Ljava/lang/String;

    const-string v4, "InMobi Interstitial set to Test Mode."

    invoke-static {v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/IMAdRequest;->setTestMode(Z)V

    .line 93
    :cond_0
    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/IMAdInterstitial;->loadNewAd(Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 94
    return-void
.end method
