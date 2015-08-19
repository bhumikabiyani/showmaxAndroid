.class Lcom/flurry/android/monolithic/sdk/impl/fx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/hw;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/hw;

.field final synthetic b:Lcom/flurry/android/monolithic/sdk/impl/ft;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ft;Lcom/flurry/android/monolithic/sdk/impl/hw;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/fx;->b:Lcom/flurry/android/monolithic/sdk/impl/ft;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/fx;->a:Lcom/flurry/android/monolithic/sdk/impl/hw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fx;->a:Lcom/flurry/android/monolithic/sdk/impl/hw;

    invoke-interface {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/hw;->a(Lcom/flurry/android/monolithic/sdk/impl/hy;)V

    .line 324
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fx;->b:Lcom/flurry/android/monolithic/sdk/impl/ft;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/ft;->c:Ljava/util/HashMap;

    const-string v1, "APPCLOUD_USER_SESSION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fx;->b:Lcom/flurry/android/monolithic/sdk/impl/ft;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/ft;->c:Ljava/util/HashMap;

    const-string v1, "APPCLOUD_USER_SESSION"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 302
    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/gr;->a:Ljava/lang/String;

    .line 304
    new-instance v1, Lcom/flurry/android/monolithic/sdk/impl/ft;

    invoke-direct {v1}, Lcom/flurry/android/monolithic/sdk/impl/ft;-><init>()V

    .line 305
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fx;->b:Lcom/flurry/android/monolithic/sdk/impl/ft;

    iget-object v2, v2, Lcom/flurry/android/monolithic/sdk/impl/ft;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/android/monolithic/sdk/impl/ft;->d:Ljava/lang/String;

    .line 306
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fx;->b:Lcom/flurry/android/monolithic/sdk/impl/ft;

    iget-object v2, v2, Lcom/flurry/android/monolithic/sdk/impl/ft;->e:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/android/monolithic/sdk/impl/ft;->e:Ljava/lang/String;

    .line 307
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fx;->b:Lcom/flurry/android/monolithic/sdk/impl/ft;

    iget-object v2, v2, Lcom/flurry/android/monolithic/sdk/impl/ft;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/flurry/android/monolithic/sdk/impl/ft;->a:Ljava/lang/String;

    .line 309
    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a(Lcom/flurry/android/monolithic/sdk/impl/ft;)V

    .line 311
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fx;->b:Lcom/flurry/android/monolithic/sdk/impl/ft;

    iget-object v1, v1, Lcom/flurry/android/monolithic/sdk/impl/ft;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/fy;->a(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/fx;->b:Lcom/flurry/android/monolithic/sdk/impl/ft;

    iget-object v1, v1, Lcom/flurry/android/monolithic/sdk/impl/ft;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/fx;->b:Lcom/flurry/android/monolithic/sdk/impl/ft;

    iget-object v2, v2, Lcom/flurry/android/monolithic/sdk/impl/ft;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/flurry/android/monolithic/sdk/impl/fy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fx;->b:Lcom/flurry/android/monolithic/sdk/impl/ft;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/ft;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/fy;->b(Ljava/lang/String;)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/fx;->a:Lcom/flurry/android/monolithic/sdk/impl/hw;

    invoke-interface {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/hw;->a(ZLjava/lang/String;)V

    .line 319
    return-void
.end method
