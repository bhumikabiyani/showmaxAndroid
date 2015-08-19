.class public final Lcom/flurry/android/monolithic/sdk/impl/ee;
.super Lcom/flurry/android/monolithic/sdk/impl/cr;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/ee;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ee;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/cr;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    .line 24
    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ee;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 31
    new-instance v1, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ee;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;-><init>(Landroid/app/Activity;)V

    .line 71
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ef;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/ef;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ee;)V

    .line 72
    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->addMobclixAdViewListener(Lcom/mobclix/android/sdk/MobclixFullScreenAdViewListener;)Z

    .line 75
    invoke-virtual {v1}, Lcom/mobclix/android/sdk/MobclixFullScreenAdView;->requestAndDisplayAd()V

    .line 76
    return-void
.end method
