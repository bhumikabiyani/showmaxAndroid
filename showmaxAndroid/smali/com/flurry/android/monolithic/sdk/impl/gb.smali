.class public abstract Lcom/flurry/android/monolithic/sdk/impl/gb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/flurry/android/monolithic/sdk/impl/gf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gb;->a:Lcom/flurry/android/monolithic/sdk/impl/gf;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/hk;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gb;->a:Lcom/flurry/android/monolithic/sdk/impl/gf;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/gf;->b(Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/hk;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/gb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->getInstance()Lcom/flurry/android/impl/appcloud/AppCloudModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->b()Lcom/flurry/android/monolithic/sdk/impl/hd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->getInstance()Lcom/flurry/android/impl/appcloud/AppCloudModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/impl/appcloud/AppCloudModule;->b()Lcom/flurry/android/monolithic/sdk/impl/hd;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/hd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/gb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ft;->e()Lcom/flurry/android/monolithic/sdk/impl/ft;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ft;->e()Lcom/flurry/android/monolithic/sdk/impl/ft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ft;->e()Lcom/flurry/android/monolithic/sdk/impl/ft;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/ft;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gb;->a:Lcom/flurry/android/monolithic/sdk/impl/gf;

    invoke-virtual {v0, p1}, Lcom/flurry/android/monolithic/sdk/impl/gf;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 52
    invoke-virtual {p0, p1, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/gb;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    const/4 v1, 0x4

    const-string v2, "CacheContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value in cache = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ; new value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0, p3, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/gb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gb;->a:Lcom/flurry/android/monolithic/sdk/impl/gf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/flurry/android/monolithic/sdk/impl/gf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/gb;->a:Lcom/flurry/android/monolithic/sdk/impl/gf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/android/monolithic/sdk/impl/gf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
