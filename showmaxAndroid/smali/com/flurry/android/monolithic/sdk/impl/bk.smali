.class Lcom/flurry/android/monolithic/sdk/impl/bk;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Z

.field final synthetic e:Lcom/flurry/android/monolithic/sdk/impl/bi;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/bi;Ljava/lang/String;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->e:Lcom/flurry/android/monolithic/sdk/impl/bi;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->b:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->c:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->d:Z

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 457
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 458
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->b:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->a:Ljava/lang/String;

    const-string v2, "market://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->e:Lcom/flurry/android/monolithic/sdk/impl/bi;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->a:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 462
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/ia;->b()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 465
    const-string v2, "url"

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    iget-boolean v2, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->d:Z

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/je;->a(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 467
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->e:Lcom/flurry/android/monolithic/sdk/impl/bi;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->c:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    goto :goto_0

    .line 469
    :cond_2
    const/4 v1, 0x6

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/bi;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to launch FlurryFullscreenTakeoverActivity, falling back to browser. Fix by declaring this Activity in your AndroidManifest.xml"

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->e:Lcom/flurry/android/monolithic/sdk/impl/bi;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/bi;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 477
    :cond_3
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->e:Lcom/flurry/android/monolithic/sdk/impl/bi;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/bi;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 478
    if-nez v0, :cond_0

    .line 482
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/bi;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to launch intent for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to launch intent for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/bi;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
