.class Lcom/flurry/android/monolithic/sdk/impl/et;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/android/monolithic/sdk/impl/em;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/em;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/et;->b:Lcom/flurry/android/monolithic/sdk/impl/em;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/et;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 438
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/et;->b:Lcom/flurry/android/monolithic/sdk/impl/em;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/em;->a(Lcom/flurry/android/monolithic/sdk/impl/em;)V

    .line 441
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/et;->b:Lcom/flurry/android/monolithic/sdk/impl/em;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/em;->e:Ljava/util/Set;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/et;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 442
    if-nez v0, :cond_0

    .line 443
    const/4 v0, 0x6

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/em;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error. Block with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/et;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not in progress state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_0
    return-void
.end method
