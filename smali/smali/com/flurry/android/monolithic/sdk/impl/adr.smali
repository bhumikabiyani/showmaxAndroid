.class public final Lcom/flurry/android/monolithic/sdk/impl/adr;
.super Lcom/flurry/android/monolithic/sdk/impl/aej;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/android/monolithic/sdk/impl/aej",
        "<[Z>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/aej;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)[Z
    .locals 1

    .prologue
    .line 92
    new-array v0, p1, [Z

    return-object v0
.end method

.method public synthetic b(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/adr;->a(I)[Z

    move-result-object v0

    return-object v0
.end method
