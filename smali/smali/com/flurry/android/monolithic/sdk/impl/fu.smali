.class final Lcom/flurry/android/monolithic/sdk/impl/fu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/fr;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/android/monolithic/sdk/impl/hz;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/hz;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fu;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/fu;->b:Lcom/flurry/android/monolithic/sdk/impl/hz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/fq;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 163
    if-eqz p1, :cond_1

    .line 166
    :try_start_0
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/fq;->b:Lorg/json/JSONObject;

    const-string v1, "set"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 168
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 169
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/ft;

    invoke-direct {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ft;-><init>(Lorg/json/JSONObject;)V

    .line 170
    iput-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/fq;->a:Lcom/flurry/android/monolithic/sdk/impl/ft;

    .line 171
    const/4 v2, 0x4

    const-string v3, "AppCloudUser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Login user"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a(Lcom/flurry/android/monolithic/sdk/impl/ft;)V

    .line 174
    const-string v2, "_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    const-string v3, "username"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    const-string v4, "email"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v4, p1, Lcom/flurry/android/monolithic/sdk/impl/fq;->b:Lorg/json/JSONObject;

    const-string v5, "APPCLOUD_USER_SESSION"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/fy;->a(Ljava/lang/String;)V

    .line 180
    invoke-static {v3, v0, v4}, Lcom/flurry/android/monolithic/sdk/impl/fy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fu;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/fy;->b(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ft;->d()V

    .line 184
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fu;->b:Lcom/flurry/android/monolithic/sdk/impl/hz;

    invoke-interface {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/hz;->a(Lcom/flurry/android/monolithic/sdk/impl/ft;)V

    .line 198
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fu;->b:Lcom/flurry/android/monolithic/sdk/impl/hz;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/hy;

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->d()I

    move-result v2

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/hy;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/hz;->a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V

    .line 188
    const/4 v0, 0x4

    const-string v1, "AppCloudUser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Login Fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fu;->b:Lcom/flurry/android/monolithic/sdk/impl/hz;

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/hy;

    const/16 v2, 0x190

    const-string v3, "Bad response"

    invoke-direct {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/hy;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/hz;->a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V

    goto :goto_0
.end method
