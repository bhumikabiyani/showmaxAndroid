.class public Lcom/flurry/android/monolithic/sdk/impl/ft;
.super Lcom/flurry/android/monolithic/sdk/impl/fm;
.source "SourceFile"


# static fields
.field private static g:Lcom/flurry/android/monolithic/sdk/impl/ft;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/ft;->g:Lcom/flurry/android/monolithic/sdk/impl/ft;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/fm;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/fm;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a(Lorg/json/JSONObject;)V

    .line 42
    return-void
.end method

.method public static a(Lcom/flurry/android/monolithic/sdk/impl/ft;)V
    .locals 0

    .prologue
    .line 92
    sput-object p0, Lcom/flurry/android/monolithic/sdk/impl/ft;->g:Lcom/flurry/android/monolithic/sdk/impl/ft;

    .line 93
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/hz;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "userid"

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "password"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :goto_0
    invoke-static {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a(Ljava/util/List;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/hz;)V

    .line 120
    return-void

    .line 114
    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "email"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "password"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/flurry/android/monolithic/sdk/impl/hz;)V
    .locals 3

    .prologue
    const/16 v2, 0x190

    .line 224
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hy;

    const-string v1, "User name is not set."

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/hy;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/flurry/android/monolithic/sdk/impl/hz;->a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V

    .line 290
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hy;

    const-string v1, "Password is not set."

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/hy;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/flurry/android/monolithic/sdk/impl/hz;->a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V

    goto :goto_0

    .line 234
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hy;

    const-string v1, "Email is not set."

    invoke-direct {v0, v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/hy;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/flurry/android/monolithic/sdk/impl/hz;->a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V

    goto :goto_0

    .line 240
    :cond_2
    if-nez p3, :cond_3

    .line 241
    :try_start_0
    invoke-static {p0, p1, p4}, Lcom/flurry/android/monolithic/sdk/impl/ft;->b(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/hz;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 244
    :cond_3
    :try_start_1
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/fv;

    invoke-direct {v0, p4, p0, p2, p1}, Lcom/flurry/android/monolithic/sdk/impl/fv;-><init>(Lcom/flurry/android/monolithic/sdk/impl/hz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ft;->b(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/hz;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static a(Ljava/util/List;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/hz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/flurry/android/monolithic/sdk/impl/hz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->getInstance()Lcom/flurry/android/impl/appcloud/AppCloudModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hy;

    const/16 v1, 0x190

    const-string v2, "Bad response"

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/hy;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/flurry/android/monolithic/sdk/impl/hz;->a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V

    .line 204
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "v1/user/login"

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/fu;

    invoke-direct {v2, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/fu;-><init>(Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/hz;)V

    invoke-static {v0, v1, p0, v2}, Lcom/flurry/android/monolithic/sdk/impl/gr;->c(ZLjava/lang/String;Ljava/util/List;Lcom/flurry/android/monolithic/sdk/impl/fr;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/hz;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "userid"

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "password"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :goto_0
    invoke-static {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a(Ljava/util/List;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/hz;)V

    .line 146
    return-void

    .line 141
    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "username"

    invoke-direct {v1, v2, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "password"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static e()Lcom/flurry/android/monolithic/sdk/impl/ft;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/ft;->g:Lcom/flurry/android/monolithic/sdk/impl/ft;

    return-object v0
.end method

.method public static f()Lcom/flurry/android/monolithic/sdk/impl/ft;
    .locals 2

    .prologue
    .line 75
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ft;->e()Lcom/flurry/android/monolithic/sdk/impl/ft;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->c()Lcom/flurry/android/monolithic/sdk/impl/ft;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a(Lcom/flurry/android/monolithic/sdk/impl/ft;)V

    .line 80
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/fy;->h()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gr;->a:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ft;->e()Lcom/flurry/android/monolithic/sdk/impl/ft;

    move-result-object v0

    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ft;->e()Lcom/flurry/android/monolithic/sdk/impl/ft;

    move-result-object v1

    iget-object v1, v1, Lcom/flurry/android/monolithic/sdk/impl/ft;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ft;->c(Ljava/lang/String;)V

    .line 87
    :cond_0
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ft;->e()Lcom/flurry/android/monolithic/sdk/impl/ft;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/hw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 295
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/fx;

    invoke-direct {v0, p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/fx;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ft;Lcom/flurry/android/monolithic/sdk/impl/hw;)V

    invoke-super {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/fm;->a(Lcom/flurry/android/monolithic/sdk/impl/hw;)V

    .line 327
    return-void
.end method

.method public a(Ljava/lang/String;FLcom/flurry/android/monolithic/sdk/impl/hx;)V
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ft;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/hy;

    const/16 v1, 0x190

    const-string v2, "Please assign an object id."

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/hy;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, v0}, Lcom/flurry/android/monolithic/sdk/impl/hx;->a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lcom/flurry/android/monolithic/sdk/impl/fm;->a(Ljava/lang/String;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/hx;)V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ft;->d:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ft;->e:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ft;->f:Ljava/lang/String;

    .line 66
    return-void
.end method
