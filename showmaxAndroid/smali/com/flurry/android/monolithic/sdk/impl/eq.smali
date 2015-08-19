.class Lcom/flurry/android/monolithic/sdk/impl/eq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/ex;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/em;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/em;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/eq;->a:Lcom/flurry/android/monolithic/sdk/impl/em;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 368
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/em;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--onReport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sent. HTTP response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ja;->c()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 372
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/er;

    invoke-direct {v1, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/er;-><init>(Lcom/flurry/android/monolithic/sdk/impl/eq;I)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a(Ljava/lang/Runnable;)V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eq;->a:Lcom/flurry/android/monolithic/sdk/impl/em;

    invoke-static {v0, p3, p4, p1}, Lcom/flurry/android/monolithic/sdk/impl/em;->a(Lcom/flurry/android/monolithic/sdk/impl/em;Ljava/lang/String;Ljava/lang/String;I)V

    .line 382
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eq;->a:Lcom/flurry/android/monolithic/sdk/impl/em;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/em;->c(Lcom/flurry/android/monolithic/sdk/impl/em;)V

    .line 383
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 387
    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/em;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--onServerError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/eq;->a:Lcom/flurry/android/monolithic/sdk/impl/em;

    invoke-static {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/em;->a(Lcom/flurry/android/monolithic/sdk/impl/em;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method
