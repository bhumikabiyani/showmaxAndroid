.class public abstract Lcom/flurry/android/monolithic/sdk/impl/fm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->a:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->b:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->c:Ljava/util/HashMap;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)F
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 103
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    move v0, v1

    .line 110
    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Lcom/flurry/android/monolithic/sdk/impl/fr;)V
    .locals 3

    .prologue
    .line 347
    :try_start_0
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hm;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/hm;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/go;->a()Lcom/flurry/android/monolithic/sdk/impl/hi;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/fo;

    invoke-direct {v2, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/fo;-><init>(Lcom/flurry/android/monolithic/sdk/impl/fm;Lcom/flurry/android/monolithic/sdk/impl/fr;)V

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/hi;->b(Lcom/flurry/android/monolithic/sdk/impl/hm;Lcom/flurry/android/monolithic/sdk/impl/fr;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/hw;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hk;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/hk;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/fm;->b()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/hk;->a(Ljava/util/Vector;)V

    .line 302
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    const-string v1, "username"

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/hk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->f:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 308
    const-string v1, "password"

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/hk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 312
    const-string v1, "email"

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/hk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 317
    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/hm;

    const/4 v1, 0x0

    invoke-direct {v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/hm;-><init>(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/hk;->a()Ljava/util/Vector;

    move-result-object v3

    .line 320
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 321
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/flurry/android/monolithic/sdk/impl/hm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 324
    :cond_3
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/go;->a()Lcom/flurry/android/monolithic/sdk/impl/hi;

    move-result-object v0

    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/fn;

    invoke-direct {v1, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/fn;-><init>(Lcom/flurry/android/monolithic/sdk/impl/fm;Lcom/flurry/android/monolithic/sdk/impl/hw;)V

    invoke-virtual {v0, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/hi;->a(Lcom/flurry/android/monolithic/sdk/impl/hm;Lcom/flurry/android/monolithic/sdk/impl/fr;)V

    .line 342
    :cond_4
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 39
    const-string v0, "code"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "note"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->c:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->c:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/hx;)V
    .locals 3

    .prologue
    .line 381
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hm;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/hm;-><init>(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/hm;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/go;->a()Lcom/flurry/android/monolithic/sdk/impl/hi;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/fp;

    invoke-direct {v2, p0, p3}, Lcom/flurry/android/monolithic/sdk/impl/fp;-><init>(Lcom/flurry/android/monolithic/sdk/impl/fm;Lcom/flurry/android/monolithic/sdk/impl/hx;)V

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/monolithic/sdk/impl/hi;->c(Lcom/flurry/android/monolithic/sdk/impl/hm;Lcom/flurry/android/monolithic/sdk/impl/fr;)V

    .line 405
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 160
    :try_start_0
    const-string v0, "username"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "username"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->e:Ljava/lang/String;

    .line 164
    :cond_0
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->d:Ljava/lang/String;

    .line 168
    :cond_1
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->a:Ljava/lang/String;

    .line 171
    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 173
    invoke-virtual {p1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 181
    :cond_3
    return-void
.end method

.method public b()Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 124
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 126
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "username"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "email"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "code"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "note"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_1
    return-object v2
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->a:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 256
    .line 259
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/go;->b()Lcom/flurry/android/monolithic/sdk/impl/gn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/gn;->c()Lcom/flurry/android/monolithic/sdk/impl/gl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/gl;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/go;->b()Lcom/flurry/android/monolithic/sdk/impl/gn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/gn;->c()Lcom/flurry/android/monolithic/sdk/impl/gl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/gl;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/hk;

    move-result-object v0

    move-object v1, v0

    .line 263
    :goto_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/go;->b()Lcom/flurry/android/monolithic/sdk/impl/gn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/gn;->b()Lcom/flurry/android/monolithic/sdk/impl/gm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/gm;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/go;->b()Lcom/flurry/android/monolithic/sdk/impl/gn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/gn;->b()Lcom/flurry/android/monolithic/sdk/impl/gm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/gm;->a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/hk;

    move-result-object v2

    move-object v4, v2

    .line 267
    :goto_1
    if-nez v1, :cond_1

    if-nez v4, :cond_1

    .line 293
    :cond_0
    return-void

    .line 271
    :cond_1
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/fm;->b(Ljava/lang/String;)V

    .line 273
    if-eqz v4, :cond_2

    move v2, v3

    .line 275
    :goto_2
    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/hk;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 277
    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/hk;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    .line 278
    invoke-virtual {v4}, Lcom/flurry/android/monolithic/sdk/impl/hk;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {p0, v5, v0}, Lcom/flurry/android/monolithic/sdk/impl/fm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 284
    :cond_2
    if-eqz v1, :cond_0

    .line 285
    :goto_3
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/hk;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 287
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/hk;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/hk;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-virtual {p0, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/fm;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    move-object v4, v2

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    .line 190
    :cond_0
    invoke-static {}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->getInstance()Lcom/flurry/android/impl/appcloud/AppCloudModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->b()Lcom/flurry/android/monolithic/sdk/impl/hd;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/hd;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 241
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/fm;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/fm;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/fm;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/go;->b()Lcom/flurry/android/monolithic/sdk/impl/gn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/gn;->b()Lcom/flurry/android/monolithic/sdk/impl/gm;

    move-result-object v3

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->b:Ljava/lang/String;

    invoke-virtual {v3, v2, v0, v4, v5}, Lcom/flurry/android/monolithic/sdk/impl/gm;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 252
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 147
    const-string v0, ""

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fm;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/fm;->b()Ljava/util/Vector;

    move-result-object v3

    .line 151
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n( key : value ) = ( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 154
    :cond_0
    return-object v0
.end method
