.class Lcom/flurry/android/monolithic/sdk/impl/bl;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z

.field final synthetic d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

.field final synthetic e:Lcom/flurry/android/monolithic/sdk/impl/bi;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/bi;Ljava/lang/String;Landroid/content/Context;ZLcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/bl;->e:Lcom/flurry/android/monolithic/sdk/impl/bi;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/bl;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/bl;->b:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/flurry/android/monolithic/sdk/impl/bl;->c:Z

    iput-object p5, p0, Lcom/flurry/android/monolithic/sdk/impl/bl;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 515
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bl;->e:Lcom/flurry/android/monolithic/sdk/impl/bi;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/bi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_0

    .line 517
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bl;->e:Lcom/flurry/android/monolithic/sdk/impl/bi;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/bl;->b:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/flurry/android/monolithic/sdk/impl/bl;->c:Z

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/bl;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    .line 521
    :goto_0
    return-void

    .line 519
    :cond_0
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/bi;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Redirect URL could not be found for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/bl;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
