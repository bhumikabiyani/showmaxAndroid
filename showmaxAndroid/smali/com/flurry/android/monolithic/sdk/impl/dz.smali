.class public final Lcom/flurry/android/monolithic/sdk/impl/dz;
.super Lcom/flurry/android/monolithic/sdk/impl/cr;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field b:Lcom/millennialmedia/android/MMInterstitial;

.field private d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/flurry/android/monolithic/sdk/impl/dz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/dz;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/cr;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    .line 29
    const-string v0, "com.flurry.millennial.MYAPIDINTERSTITIAL"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dz;->e:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/dz;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dz;->d:Z

    return v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/dz;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 37
    new-instance v1, Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/dz;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/millennialmedia/android/MMInterstitial;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/dz;->b:Lcom/millennialmedia/android/MMInterstitial;

    .line 38
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dz;->b:Lcom/millennialmedia/android/MMInterstitial;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/dz;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMInterstitial;->setApid(Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/ea;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/ea;-><init>(Lcom/flurry/android/monolithic/sdk/impl/dz;)V

    .line 81
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/dz;->b:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMInterstitial;->setListener(Lcom/millennialmedia/android/RequestListener;)V

    .line 85
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dz;->b:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->fetch()V

    .line 86
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dz;->b:Lcom/millennialmedia/android/MMInterstitial;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMInterstitial;->display()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dz;->d:Z

    .line 88
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/dz;->d:Z

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/dz;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial MMAdView Interstitial ad displayed immediately:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/dz;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 93
    :cond_0
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/dz;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Millennial MMAdView Interstitial ad did not display immediately:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/dz;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
