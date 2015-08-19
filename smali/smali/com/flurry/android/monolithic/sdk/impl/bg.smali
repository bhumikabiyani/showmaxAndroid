.class final Lcom/flurry/android/monolithic/sdk/impl/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/co;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/bf;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public a_(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)Lcom/flurry/android/monolithic/sdk/impl/cn;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/cg;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/cg;-><init>(Landroid/content/Context;Lcom/flurry/android/impl/ads/FlurryAdModule;Lcom/flurry/android/monolithic/sdk/impl/m;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    return-object v0
.end method
