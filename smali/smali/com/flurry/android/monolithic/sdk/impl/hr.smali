.class Lcom/flurry/android/monolithic/sdk/impl/hr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/fr;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/ho;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ho;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/hr;->a:Lcom/flurry/android/monolithic/sdk/impl/ho;

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
    const/4 v3, 0x4

    .line 251
    if-eqz p1, :cond_0

    .line 252
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    const-string v0, "OperationsExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hr;->a:Lcom/flurry/android/monolithic/sdk/impl/ho;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ho;->a(Lcom/flurry/android/monolithic/sdk/impl/ho;)Lcom/flurry/android/monolithic/sdk/impl/hn;

    move-result-object v0

    const/16 v1, 0x2bd

    iput v1, v0, Lcom/flurry/android/monolithic/sdk/impl/hn;->a:I

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hr;->a:Lcom/flurry/android/monolithic/sdk/impl/ho;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ho;->a(Lcom/flurry/android/monolithic/sdk/impl/ho;)Lcom/flurry/android/monolithic/sdk/impl/hn;

    move-result-object v0

    iput-object p1, v0, Lcom/flurry/android/monolithic/sdk/impl/hn;->b:Lcom/flurry/android/monolithic/sdk/impl/fq;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hr;->a:Lcom/flurry/android/monolithic/sdk/impl/ho;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ho;->b(Lcom/flurry/android/monolithic/sdk/impl/ho;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hr;->a:Lcom/flurry/android/monolithic/sdk/impl/ho;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ho;->b(Lcom/flurry/android/monolithic/sdk/impl/ho;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 267
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    return-void

    .line 257
    :cond_1
    const-string v0, "OperationsExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get Fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hr;->a:Lcom/flurry/android/monolithic/sdk/impl/ho;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ho;->a(Lcom/flurry/android/monolithic/sdk/impl/ho;)Lcom/flurry/android/monolithic/sdk/impl/hn;

    move-result-object v0

    const/16 v1, 0x2db

    iput v1, v0, Lcom/flurry/android/monolithic/sdk/impl/hn;->a:I

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
