.class public final Lcom/flurry/android/monolithic/sdk/impl/du;
.super Lcom/flurry/android/monolithic/sdk/impl/cr;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/du;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/du;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/cr;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    .line 34
    const-string v0, "com.flurry.jumptap.PUBLISHER_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/du;->c:Ljava/lang/String;

    .line 35
    const-string v0, "com.flurry.jumptap.INT_SPOT_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/du;->d:Ljava/lang/String;

    .line 36
    const-string v0, "com.flurry.jumptap.INT_SITE_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/du;->e:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/du;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-static {}, Lcom/jumptap/adtag/JtAdWidgetSettingsFactory;->createWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

    move-result-object v3

    .line 44
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/du;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setPublisherId(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/du;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/du;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setSpotId(Ljava/lang/String;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/du;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/du;->e:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setSiteId(Ljava/lang/String;)V

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/du;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/il;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setApplicationId(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/du;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/il;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setApplicationVersion(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v3, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setRefreshPeriod(I)V

    .line 60
    invoke-virtual {v3, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setShouldSendLocation(Z)V

    .line 63
    const/4 v2, 0x0

    .line 65
    :try_start_0
    new-instance v1, Lcom/jumptap/adtag/JtAdInterstitial;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/du;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0, v3}, Lcom/jumptap/adtag/JtAdInterstitial;-><init>(Landroid/content/Context;Lcom/jumptap/adtag/JtAdWidgetSettings;)V
    :try_end_0
    .catch Lcom/jumptap/adtag/utils/JtException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 101
    :goto_0
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/dv;

    invoke-direct {v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/dv;-><init>(Lcom/flurry/android/monolithic/sdk/impl/du;)V

    .line 102
    invoke-virtual {v0, v1}, Lcom/jumptap/adtag/JtAdInterstitial;->setAdViewListener(Lcom/jumptap/adtag/JtAdViewListener;)V

    .line 105
    invoke-virtual {v0}, Lcom/jumptap/adtag/JtAdInterstitial;->showAsPopup()V

    .line 106
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/du;->b:Ljava/lang/String;

    const-string v3, "Jumptap JtException when creating ad object."

    invoke-static {v0, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method
