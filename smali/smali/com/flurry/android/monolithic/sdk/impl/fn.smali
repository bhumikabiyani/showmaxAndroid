.class Lcom/flurry/android/monolithic/sdk/impl/fn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/fr;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/hw;

.field final synthetic b:Lcom/flurry/android/monolithic/sdk/impl/fm;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/fm;Lcom/flurry/android/monolithic/sdk/impl/hw;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fn;->b:Lcom/flurry/android/monolithic/sdk/impl/fm;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/fn;->a:Lcom/flurry/android/monolithic/sdk/impl/hw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/fq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fn;->b:Lcom/flurry/android/monolithic/sdk/impl/fm;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/fm;->a(Lorg/json/JSONObject;)V

    .line 332
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fn;->a:Lcom/flurry/android/monolithic/sdk/impl/hw;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/hw;->a(ZLjava/lang/String;)V

    .line 338
    :goto_0
    return-void

    .line 335
    :cond_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hy;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->d()I

    move-result v1

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/hy;-><init>(ILjava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fn;->a:Lcom/flurry/android/monolithic/sdk/impl/hw;

    invoke-interface {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/hw;->a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V

    goto :goto_0
.end method
