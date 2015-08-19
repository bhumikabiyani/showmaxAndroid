.class Lcom/flurry/android/monolithic/sdk/impl/fp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/fr;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/hx;

.field final synthetic b:Lcom/flurry/android/monolithic/sdk/impl/fm;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/fm;Lcom/flurry/android/monolithic/sdk/impl/hx;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fp;->b:Lcom/flurry/android/monolithic/sdk/impl/fm;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/fp;->a:Lcom/flurry/android/monolithic/sdk/impl/hx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/fq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 390
    if-eqz p1, :cond_1

    .line 391
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fp;->b:Lcom/flurry/android/monolithic/sdk/impl/fm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/fm;->a(Lcom/flurry/android/monolithic/sdk/impl/fr;)V

    .line 393
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fp;->a:Lcom/flurry/android/monolithic/sdk/impl/hx;

    invoke-interface {v0}, Lcom/flurry/android/monolithic/sdk/impl/hx;->a()V

    .line 403
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fp;->a:Lcom/flurry/android/monolithic/sdk/impl/hx;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/hy;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->d()I

    move-result v2

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/hy;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/hx;->a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V

    goto :goto_0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fp;->a:Lcom/flurry/android/monolithic/sdk/impl/hx;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/hy;

    const/16 v2, 0x190

    const-string v3, "Bad response"

    invoke-direct {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/hy;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/hx;->a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V

    goto :goto_0
.end method
