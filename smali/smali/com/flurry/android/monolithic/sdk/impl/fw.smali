.class Lcom/flurry/android/monolithic/sdk/impl/fw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/hw;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/fv;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/fv;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fw;->a:Lcom/flurry/android/monolithic/sdk/impl/fv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fw;->a:Lcom/flurry/android/monolithic/sdk/impl/fv;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/fv;->a:Lcom/flurry/android/monolithic/sdk/impl/hz;

    invoke-interface {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/hz;->a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V

    .line 272
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fw;->a:Lcom/flurry/android/monolithic/sdk/impl/fv;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/fv;->a:Lcom/flurry/android/monolithic/sdk/impl/hz;

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ft;->e()Lcom/flurry/android/monolithic/sdk/impl/ft;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/hz;->a(Lcom/flurry/android/monolithic/sdk/impl/ft;)V

    .line 267
    return-void
.end method
