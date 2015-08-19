.class Lcom/flurry/android/monolithic/sdk/impl/fo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/fr;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/fr;

.field final synthetic b:Lcom/flurry/android/monolithic/sdk/impl/fm;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/fm;Lcom/flurry/android/monolithic/sdk/impl/fr;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fo;->b:Lcom/flurry/android/monolithic/sdk/impl/fm;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/fo;->a:Lcom/flurry/android/monolithic/sdk/impl/fr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/fq;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 353
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/fq;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "set"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 355
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 356
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/ft;

    invoke-direct {v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/ft;-><init>(Lorg/json/JSONObject;)V

    move v1, v0

    .line 358
    :goto_0
    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/ft;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 360
    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/ft;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/ft;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 362
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/fo;->b:Lcom/flurry/android/monolithic/sdk/impl/fm;

    iget-object v4, v4, Lcom/flurry/android/monolithic/sdk/impl/fm;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/go;->c()Lcom/flurry/android/monolithic/sdk/impl/gj;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/fo;->b:Lcom/flurry/android/monolithic/sdk/impl/fm;

    iget-object v5, v5, Lcom/flurry/android/monolithic/sdk/impl/fm;->a:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v0, v5, v6}, Lcom/flurry/android/monolithic/sdk/impl/gj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fo;->a:Lcom/flurry/android/monolithic/sdk/impl/fr;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fo;->a:Lcom/flurry/android/monolithic/sdk/impl/fr;

    invoke-interface {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/fr;->a(Lcom/flurry/android/monolithic/sdk/impl/fq;)V

    .line 369
    :cond_1
    return-void
.end method
