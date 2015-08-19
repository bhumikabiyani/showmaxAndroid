.class public Lcom/flurry/android/monolithic/sdk/impl/fq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/flurry/android/monolithic/sdk/impl/ft;

.field b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fq;->b:Lorg/json/JSONObject;

    .line 15
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fq;->b:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fq;->b:Lorg/json/JSONObject;

    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fq;->b:Lorg/json/JSONObject;

    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_1

    .line 22
    :cond_0
    const/4 v0, 0x1

    .line 30
    :cond_1
    :goto_0
    return v0

    .line 26
    :catch_0
    move-exception v1

    .line 28
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fq;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fq;->b:Lorg/json/JSONObject;

    const-string v1, "note"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 45
    :cond_0
    const-string v0, "Bad response"

    goto :goto_0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fq;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fq;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fq;->b:Lorg/json/JSONObject;

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 75
    :goto_0
    return v0

    .line 71
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 75
    :cond_0
    const/16 v0, 0x190

    goto :goto_0
.end method
