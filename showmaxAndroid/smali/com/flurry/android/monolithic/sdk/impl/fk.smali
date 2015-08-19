.class public final Lcom/flurry/android/monolithic/sdk/impl/fk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/hx;


# instance fields
.field private final a:Lcom/flurry/android/FlurryWalletOperationHandler;


# direct methods
.method public constructor <init>(Lcom/flurry/android/FlurryWalletOperationHandler;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fk;->a:Lcom/flurry/android/FlurryWalletOperationHandler;

    .line 15
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fk;->a:Lcom/flurry/android/FlurryWalletOperationHandler;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fk;->a:Lcom/flurry/android/FlurryWalletOperationHandler;

    invoke-interface {v0}, Lcom/flurry/android/FlurryWalletOperationHandler;->onOperationSucceed()V

    .line 22
    :cond_0
    return-void
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fk;->a:Lcom/flurry/android/FlurryWalletOperationHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fk;->a:Lcom/flurry/android/FlurryWalletOperationHandler;

    new-instance v1, Lcom/flurry/android/FlurryWalletError;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/hy;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/hy;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/flurry/android/FlurryWalletError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryWalletOperationHandler;->onError(Lcom/flurry/android/FlurryWalletError;)V

    .line 29
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    if-ne p0, p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    instance-of v2, p1, Lcom/flurry/android/monolithic/sdk/impl/fk;

    if-nez v2, :cond_2

    move v0, v1

    .line 38
    goto :goto_0

    .line 41
    :cond_2
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/fk;

    .line 42
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fk;->a:Lcom/flurry/android/FlurryWalletOperationHandler;

    iget-object v3, p1, Lcom/flurry/android/monolithic/sdk/impl/fk;->a:Lcom/flurry/android/FlurryWalletOperationHandler;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 47
    .line 48
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fk;->a:Lcom/flurry/android/FlurryWalletOperationHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 49
    return v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fk;->a:Lcom/flurry/android/FlurryWalletOperationHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
