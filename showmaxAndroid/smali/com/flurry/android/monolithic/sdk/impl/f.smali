.class public final Lcom/flurry/android/monolithic/sdk/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/hz;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/android/FlurryWalletHandler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/flurry/android/FlurryWalletHandler;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/f;->b:Lcom/flurry/android/FlurryWalletHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/ft;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/f;->b:Lcom/flurry/android/FlurryWalletHandler;

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryWallet;->a(Ljava/lang/String;Lcom/flurry/android/FlurryWalletHandler;)V

    .line 83
    return-void
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V
    .locals 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/f;->b:Lcom/flurry/android/FlurryWalletHandler;

    new-instance v1, Lcom/flurry/android/FlurryWalletError;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/hy;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/hy;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/flurry/android/FlurryWalletError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryWalletHandler;->onError(Lcom/flurry/android/FlurryWalletError;)V

    .line 89
    return-void
.end method
