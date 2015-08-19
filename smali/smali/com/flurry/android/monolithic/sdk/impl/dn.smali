.class public final Lcom/flurry/android/monolithic/sdk/impl/dn;
.super Lcom/flurry/android/AdNetworkView;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/dn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/dn;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/AdCreative;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/AdNetworkView;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/AdCreative;)V

    .line 32
    const-string v0, "com.flurry.inmobi.MY_APP_ID"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dn;->f:Ljava/lang/String;

    .line 33
    const-string v0, "com.flurry.inmobi.test"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dn;->g:Z

    .line 34
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/dn;->setFocusable(Z)V

    .line 35
    return-void
.end method

.method private a(II)I
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 39
    const/16 v0, 0x2d8

    if-lt p2, v0, :cond_0

    const/16 v0, 0x5a

    if-lt p1, v0, :cond_0

    .line 41
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/dn;->a:Ljava/lang/String;

    const-string v1, "Determined InMobi AdSize as 728x90"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    const/16 v0, 0xb

    .line 67
    :goto_0
    return v0

    .line 44
    :cond_0
    const/16 v0, 0x1d4

    if-lt p2, v0, :cond_1

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    .line 46
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/dn;->a:Ljava/lang/String;

    const-string v1, "Determined InMobi AdSize as 468x60"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    const/16 v0, 0xc

    goto :goto_0

    .line 49
    :cond_1
    const/16 v0, 0x140

    if-lt p2, v0, :cond_2

    const/16 v0, 0x32

    if-lt p1, v0, :cond_2

    .line 51
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/dn;->a:Ljava/lang/String;

    const-string v1, "Determined InMobi AdSize as 320x50"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    const/16 v0, 0xf

    goto :goto_0

    .line 54
    :cond_2
    const/16 v0, 0x12c

    if-lt p2, v0, :cond_3

    const/16 v0, 0xfa

    if-lt p1, v0, :cond_3

    .line 56
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/dn;->a:Ljava/lang/String;

    const-string v1, "Determined InMobi AdSize as 300x250"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    const/16 v0, 0xa

    goto :goto_0

    .line 59
    :cond_3
    const/16 v0, 0x78

    if-lt p2, v0, :cond_4

    const/16 v0, 0x258

    if-lt p1, v0, :cond_4

    .line 61
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/dn;->a:Ljava/lang/String;

    const-string v1, "Determined InMobi AdSize as 120x600"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    const/16 v0, 0xd

    goto :goto_0

    .line 66
    :cond_4
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/dn;->a:Ljava/lang/String;

    const-string v1, "Could not find InMobi AdSize that matches size"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/dn;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public initLayout()V
    .locals 9

    .prologue
    const/16 v2, 0x140

    const/16 v1, 0x32

    const/4 v8, 0x3

    const/4 v7, -0x1

    const/high16 v6, 0x3f000000    # 0.5f

    .line 75
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/dn;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 77
    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    iget v5, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 78
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float v3, v5, v3

    float-to-int v3, v3

    .line 87
    invoke-direct {p0, v4, v3}, Lcom/flurry/android/monolithic/sdk/impl/dn;->a(II)I

    move-result v3

    .line 89
    if-eq v3, v7, :cond_5

    .line 92
    new-instance v4, Lcom/inmobi/androidsdk/IMAdView;

    check-cast v0, Landroid/app/Activity;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/dn;->f:Ljava/lang/String;

    invoke-direct {v4, v0, v3, v5}, Lcom/inmobi/androidsdk/IMAdView;-><init>(Landroid/app/Activity;ILjava/lang/String;)V

    .line 97
    const/16 v0, 0xf

    if-ne v3, v0, :cond_0

    .line 102
    :cond_0
    const/16 v0, 0xb

    if-ne v3, v0, :cond_6

    .line 104
    const/16 v1, 0x2d8

    .line 105
    const/16 v0, 0x5a

    .line 107
    :goto_0
    const/16 v2, 0xc

    if-ne v3, v2, :cond_1

    .line 109
    const/16 v1, 0x1d4

    .line 110
    const/16 v0, 0x3c

    .line 112
    :cond_1
    const/16 v2, 0xa

    if-ne v3, v2, :cond_2

    .line 114
    const/16 v1, 0x12c

    .line 115
    const/16 v0, 0xfa

    .line 117
    :cond_2
    const/16 v2, 0xd

    if-ne v3, v2, :cond_3

    .line 119
    const/16 v1, 0x78

    .line 120
    const/16 v0, 0x258

    .line 124
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/dn;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 125
    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 126
    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v6

    float-to-int v0, v0

    .line 127
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2}, Lcom/inmobi/androidsdk/IMAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/do;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/do;-><init>(Lcom/flurry/android/monolithic/sdk/impl/dn;)V

    .line 167
    invoke-virtual {v4, v0}, Lcom/inmobi/androidsdk/IMAdView;->setIMAdListener(Lcom/inmobi/androidsdk/IMAdListener;)V

    .line 168
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/dn;->setGravity(I)V

    .line 169
    invoke-virtual {p0, v4}, Lcom/flurry/android/monolithic/sdk/impl/dn;->addView(Landroid/view/View;)V

    .line 173
    new-instance v0, Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/IMAdRequest;-><init>()V

    .line 174
    iget-boolean v1, p0, Lcom/flurry/android/monolithic/sdk/impl/dn;->g:Z

    if-eqz v1, :cond_4

    .line 176
    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/dn;->a:Ljava/lang/String;

    const-string v2, "InMobi AdView set to Test Mode."

    invoke-static {v8, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->setTestMode(Z)V

    .line 185
    :cond_4
    invoke-virtual {v4, v0}, Lcom/inmobi/androidsdk/IMAdView;->setIMAdRequest(Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 188
    invoke-virtual {v4, v7}, Lcom/inmobi/androidsdk/IMAdView;->setRefreshInterval(I)V

    .line 191
    invoke-virtual {v4}, Lcom/inmobi/androidsdk/IMAdView;->loadNewAd()V

    .line 197
    :goto_1
    return-void

    .line 195
    :cond_5
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/dn;->a:Ljava/lang/String;

    const-string v1, "**********Could not load InMobi Ad"

    invoke-static {v8, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v0, v1

    move v1, v2

    goto :goto_0
.end method
