.class final Lcom/flurry/android/monolithic/sdk/impl/gv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/hz;


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/flurry/android/monolithic/sdk/impl/gx;

.field final synthetic c:Lcom/flurry/android/monolithic/sdk/impl/fr;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Lcom/flurry/android/monolithic/sdk/impl/gx;Lcom/flurry/android/monolithic/sdk/impl/fr;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/gv;->a:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/gv;->b:Lcom/flurry/android/monolithic/sdk/impl/gx;

    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/gv;->c:Lcom/flurry/android/monolithic/sdk/impl/fr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/ft;)V
    .locals 4

    .prologue
    .line 162
    const/4 v0, 0x3

    const-string v1, "FlurryAppCloudRequestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RELOGIN SUCCEED, new APPCLOUD_USER_SESSION = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/flurry/android/monolithic/sdk/impl/gr;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gv;->a:Ljava/util/HashMap;

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/gr;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gv;->a:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/gr;->a(Ljava/util/HashMap;)V

    .line 167
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/gw;->a:[I

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/gv;->b:Lcom/flurry/android/monolithic/sdk/impl/gx;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/gx;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 178
    :goto_0
    return-void

    .line 169
    :pswitch_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/gr;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/hf;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/gv;->a:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/hf;-><init>(Ljava/util/HashMap;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 172
    :pswitch_1
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/gr;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/hg;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/gv;->a:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/hg;-><init>(Ljava/util/HashMap;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 175
    :pswitch_2
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/gr;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/gy;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/gv;->a:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/gy;-><init>(Ljava/util/HashMap;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V
    .locals 5

    .prologue
    const/4 v4, 0x6

    .line 182
    const/4 v0, 0x3

    const-string v1, "FlurryAppCloudRequestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RELOGIN FAILED DUE TO : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/hy;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/hy;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a(Lcom/flurry/android/monolithic/sdk/impl/ft;)V

    .line 186
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "{code:\"400\",note:\"invalid user session\"}"

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 187
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/fq;

    invoke-direct {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/fq;-><init>(Lorg/json/JSONObject;)V

    .line 188
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gv;->c:Lcom/flurry/android/monolithic/sdk/impl/fr;

    invoke-interface {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/fr;->a(Lcom/flurry/android/monolithic/sdk/impl/fq;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string v1, "FlurryAppCloudRequestManager"

    const-string v2, "checkForTokenError onError JSONException: "

    invoke-static {v4, v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 191
    :catch_1
    move-exception v0

    .line 192
    const-string v1, "FlurryAppCloudRequestManager"

    const-string v2, "checkForTokenError onError Exception: "

    invoke-static {v4, v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
