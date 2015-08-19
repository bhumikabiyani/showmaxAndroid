.class public final Lcom/flurry/android/monolithic/sdk/impl/adv;
.super Lcom/flurry/android/monolithic/sdk/impl/aej;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/aej",
        "<[I>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/aej;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)[I
    .locals 1

    .prologue
    .line 114
    new-array v0, p1, [I

    return-object v0
.end method

.method public synthetic b(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/adv;->a(I)[I

    move-result-object v0

    return-object v0
.end method
