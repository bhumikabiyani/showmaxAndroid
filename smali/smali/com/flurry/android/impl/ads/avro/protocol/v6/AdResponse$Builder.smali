.class public Lcom/flurry/android/impl/ads/avro/protocol/v6/AdResponse$Builder;
.super Lcom/flurry/android/monolithic/sdk/impl/nv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/nv",
        "<",
        "Lcom/flurry/android/impl/ads/avro/protocol/v6/AdResponse;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdResponse;->SCHEMA$:Lcom/flurry/android/monolithic/sdk/impl/ji;

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/nv;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ji;)V

    .line 88
    return-void
.end method
