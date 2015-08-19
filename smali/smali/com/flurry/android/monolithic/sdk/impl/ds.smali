.class public Lcom/flurry/android/monolithic/sdk/impl/ds;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/ds;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ds;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/AdCreative;)V

    .line 35
    const-string v0, "com.flurry.jumptap.PUBLISHER_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ds;->f:Ljava/lang/String;

    .line 36
    const-string v0, "com.flurry.jumptap.SPOT_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ds;->g:Ljava/lang/String;

    .line 37
    const-string v0, "com.flurry.jumptap.SITE_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ds;->h:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ds;->setFocusable(Z)V

    .line 40
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ds;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public initLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    .line 44
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ds;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/jumptap/adtag/JtAdWidgetSettingsFactory;->createWidgetSettings()Lcom/jumptap/adtag/JtAdWidgetSettings;

    move-result-object v3

    .line 46
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ds;->f:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setPublisherId(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ds;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ds;->g:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setSpotId(Ljava/lang/String;)V

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ds;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ds;->h:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setSiteId(Ljava/lang/String;)V

    .line 56
    :cond_1
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/il;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setApplicationId(Ljava/lang/String;)V

    .line 57
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/il;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setApplicationVersion(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3, v2}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setRefreshPeriod(I)V

    .line 62
    invoke-virtual {v3, v2}, Lcom/jumptap/adtag/JtAdWidgetSettings;->setShouldSendLocation(Z)V

    .line 63
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ds;->setGravity(I)V

    .line 65
    const/4 v2, 0x0

    .line 67
    :try_start_0
    new-instance v1, Lcom/jumptap/adtag/JtAdView;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0, v3}, Lcom/jumptap/adtag/JtAdView;-><init>(Landroid/content/Context;Lcom/jumptap/adtag/JtAdWidgetSettings;)V
    :try_end_0
    .catch Lcom/jumptap/adtag/utils/JtException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :try_start_1
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ds;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 70
    const/4 v2, 0x3

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/ds;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scale is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    const/high16 v2, 0x43a00000    # 320.0f

    mul-float/2addr v2, v0

    add-float/2addr v2, v6

    float-to-int v2, v2

    .line 72
    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v0, v3

    add-float/2addr v0, v6

    float-to-int v0, v0

    .line 73
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Lcom/jumptap/adtag/JtAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Lcom/jumptap/adtag/utils/JtException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 110
    :goto_0
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/dt;

    invoke-direct {v1, p0}, Lcom/flurry/android/monolithic/sdk/impl/dt;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ds;)V

    .line 111
    invoke-virtual {v0, v1}, Lcom/jumptap/adtag/JtAdView;->setAdViewListener(Lcom/jumptap/adtag/JtAdViewListener;)V

    .line 114
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ds;->addView(Landroid/view/View;)V

    .line 115
    return-void

    .line 75
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 76
    :goto_1
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ds;->a:Ljava/lang/String;

    const-string v2, "Jumptap JtException when creating ad object."

    invoke-static {v7, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method
