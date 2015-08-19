.class public final Lcom/flurry/android/monolithic/sdk/impl/ga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/fz;


# instance fields
.field private final a:Lcom/flurry/android/FlurryWalletHandler;


# direct methods
.method public constructor <init>(Lcom/flurry/android/FlurryWalletHandler;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ga;->a:Lcom/flurry/android/FlurryWalletHandler;

    .line 14
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ga;->a:Lcom/flurry/android/FlurryWalletHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ga;->a:Lcom/flurry/android/FlurryWalletHandler;

    new-instance v1, Lcom/flurry/android/FlurryWalletError;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/hy;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/hy;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/flurry/android/FlurryWalletError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryWalletHandler;->onError(Lcom/flurry/android/FlurryWalletError;)V

    .line 29
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ga;->a:Lcom/flurry/android/FlurryWalletHandler;

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Lcom/flurry/android/FlurryWalletInfo;

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/flurry/android/FlurryWalletInfo;-><init>(Ljava/lang/String;F)V

    .line 20
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ga;->a:Lcom/flurry/android/FlurryWalletHandler;

    invoke-interface {v1, v0}, Lcom/flurry/android/FlurryWalletHandler;->onValueUpdated(Lcom/flurry/android/FlurryWalletInfo;)V

    .line 22
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

    .line 43
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    instance-of v2, p1, Lcom/flurry/android/monolithic/sdk/impl/ga;

    if-nez v2, :cond_2

    move v0, v1

    .line 38
    goto :goto_0

    .line 41
    :cond_2
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/ga;

    .line 43
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ga;->a:Lcom/flurry/android/FlurryWalletHandler;

    iget-object v3, p1, Lcom/flurry/android/monolithic/sdk/impl/ga;->a:Lcom/flurry/android/FlurryWalletHandler;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 48
    .line 49
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ga;->a:Lcom/flurry/android/FlurryWalletHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 50
    return v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ga;->a:Lcom/flurry/android/FlurryWalletHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method
