.class Lcom/flurry/android/monolithic/sdk/impl/es;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/flurry/android/monolithic/sdk/impl/em;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/em;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/es;->d:Lcom/flurry/android/monolithic/sdk/impl/em;

    iput p2, p0, Lcom/flurry/android/monolithic/sdk/impl/es;->a:I

    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/es;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/es;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 404
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/es;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 406
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/eg;->a()Lcom/flurry/android/monolithic/sdk/impl/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/eg;->d()Lcom/flurry/android/monolithic/sdk/impl/fb;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/fb;->b()V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/es;->d:Lcom/flurry/android/monolithic/sdk/impl/em;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/em;->a(Lcom/flurry/android/monolithic/sdk/impl/em;)V

    .line 416
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/es;->d:Lcom/flurry/android/monolithic/sdk/impl/em;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/em;->d:Lcom/flurry/android/monolithic/sdk/impl/ey;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/es;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/es;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ey;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 418
    if-nez v0, :cond_1

    .line 419
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/em;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error. Block wasn\'t deleted with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/es;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/es;->d:Lcom/flurry/android/monolithic/sdk/impl/em;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/em;->e:Ljava/util/Set;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/es;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 425
    if-nez v0, :cond_2

    .line 426
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/em;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error. Block with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/es;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not in progress state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_2
    return-void
.end method
