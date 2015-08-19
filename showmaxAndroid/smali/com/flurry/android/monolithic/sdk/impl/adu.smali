.class public final Lcom/flurry/android/monolithic/sdk/impl/adu;
.super Lcom/flurry/android/monolithic/sdk/impl/aej;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/aej",
        "<[F>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/aej;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)[F
    .locals 1

    .prologue
    .line 129
    new-array v0, p1, [F

    return-object v0
.end method

.method public synthetic b(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/adu;->a(I)[F

    move-result-object v0

    return-object v0
.end method
