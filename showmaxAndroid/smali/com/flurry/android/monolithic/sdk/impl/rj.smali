.class public Lcom/flurry/android/monolithic/sdk/impl/rj;
.super Lcom/flurry/android/monolithic/sdk/impl/op;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/rj;-><init>(Lcom/flurry/android/monolithic/sdk/impl/rk;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/rk;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/op;-><init>(Lcom/flurry/android/monolithic/sdk/impl/pc;)V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/rk;

    invoke-direct {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/rk;-><init>(Lcom/flurry/android/monolithic/sdk/impl/op;)V

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/rj;->a(Lcom/flurry/android/monolithic/sdk/impl/pc;)Lcom/flurry/android/monolithic/sdk/impl/op;

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/flurry/android/monolithic/sdk/impl/pc;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/rj;->c()Lcom/flurry/android/monolithic/sdk/impl/rk;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/flurry/android/monolithic/sdk/impl/rk;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/rj;->f:Lcom/flurry/android/monolithic/sdk/impl/pc;

    check-cast v0, Lcom/flurry/android/monolithic/sdk/impl/rk;

    return-object v0
.end method
