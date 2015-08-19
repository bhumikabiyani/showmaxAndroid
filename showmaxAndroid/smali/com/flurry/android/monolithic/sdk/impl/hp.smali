.class Lcom/flurry/android/monolithic/sdk/impl/hp;
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
    .line 100
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/hp;->a:Lcom/flurry/android/monolithic/sdk/impl/ho;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/fq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 109
    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hp;->a:Lcom/flurry/android/monolithic/sdk/impl/ho;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ho;->a(Lcom/flurry/android/monolithic/sdk/impl/ho;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    const/4 v0, 0x4

    const-string v1, "OperationsExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created object"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->c()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hp;->a:Lcom/flurry/android/monolithic/sdk/impl/ho;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ho;->a(Lcom/flurry/android/monolithic/sdk/impl/ho;)Lcom/flurry/android/monolithic/sdk/impl/hn;

    move-result-object v0

    const/16 v1, 0x2bd

    iput v1, v0, Lcom/flurry/android/monolithic/sdk/impl/hn;->a:I

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hp;->a:Lcom/flurry/android/monolithic/sdk/impl/ho;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ho;->a(Lcom/flurry/android/monolithic/sdk/impl/ho;)Lcom/flurry/android/monolithic/sdk/impl/hn;

    move-result-object v0

    iput-object p1, v0, Lcom/flurry/android/monolithic/sdk/impl/hn;->b:Lcom/flurry/android/monolithic/sdk/impl/fq;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hp;->a:Lcom/flurry/android/monolithic/sdk/impl/ho;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ho;->b(Lcom/flurry/android/monolithic/sdk/impl/ho;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 130
    :try_start_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hp;->a:Lcom/flurry/android/monolithic/sdk/impl/ho;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ho;->b(Lcom/flurry/android/monolithic/sdk/impl/ho;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 131
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x4

    :try_start_2
    const-string v1, "OperationsExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created object Fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/hp;->a:Lcom/flurry/android/monolithic/sdk/impl/ho;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ho;->a(Lcom/flurry/android/monolithic/sdk/impl/ho;)Lcom/flurry/android/monolithic/sdk/impl/hn;

    move-result-object v0

    const/16 v1, 0x2db

    iput v1, v0, Lcom/flurry/android/monolithic/sdk/impl/hn;->a:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 131
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
