.class public final Lcom/flurry/android/monolithic/sdk/impl/ads;
.super Lcom/flurry/android/monolithic/sdk/impl/aej;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/aej",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/aej;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)[B
    .locals 1

    .prologue
    .line 100
    new-array v0, p1, [B

    return-object v0
.end method

.method public synthetic b(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ads;->a(I)[B

    move-result-object v0

    return-object v0
.end method
