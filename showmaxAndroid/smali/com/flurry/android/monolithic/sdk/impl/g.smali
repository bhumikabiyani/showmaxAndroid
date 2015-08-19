.class public final Lcom/flurry/android/monolithic/sdk/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/hz;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:F

.field final synthetic c:Lcom/flurry/android/FlurryWalletOperationHandler;


# direct methods
.method public constructor <init>(Ljava/lang/String;FLcom/flurry/android/FlurryWalletOperationHandler;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/g;->a:Ljava/lang/String;

    iput p2, p0, Lcom/flurry/android/monolithic/sdk/impl/g;->b:F

    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/g;->c:Lcom/flurry/android/FlurryWalletOperationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/ft;)V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/g;->a:Ljava/lang/String;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/g;->b:F

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/g;->c:Lcom/flurry/android/FlurryWalletOperationHandler;

    invoke-static {v0, v1, v2}, Lcom/flurry/android/FlurryWallet;->a(Ljava/lang/String;FLcom/flurry/android/FlurryWalletOperationHandler;)V

    .line 249
    return-void
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/g;->c:Lcom/flurry/android/FlurryWalletOperationHandler;

    new-instance v1, Lcom/flurry/android/FlurryWalletError;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/hy;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/hy;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/flurry/android/FlurryWalletError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/flurry/android/FlurryWalletOperationHandler;->onError(Lcom/flurry/android/FlurryWalletError;)V

    .line 255
    return-void
.end method
