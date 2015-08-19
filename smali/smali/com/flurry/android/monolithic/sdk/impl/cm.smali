.class public final Lcom/flurry/android/monolithic/sdk/impl/cm;
.super Lcom/flurry/android/monolithic/sdk/impl/cl;
.source "SourceFile"


# instance fields
.field private final a:Lcom/flurry/android/monolithic/sdk/impl/cn;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/cn;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p2}, Lcom/flurry/android/monolithic/sdk/impl/cl;-><init>(Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    .line 14
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/cm;->a:Lcom/flurry/android/monolithic/sdk/impl/cn;

    .line 15
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cm;->a:Lcom/flurry/android/monolithic/sdk/impl/cn;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cm;->a:Lcom/flurry/android/monolithic/sdk/impl/cn;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/cn;->a()V

    .line 22
    :cond_0
    return-void
.end method
