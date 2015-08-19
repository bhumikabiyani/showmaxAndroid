.class Lcom/flurry/android/monolithic/sdk/impl/bs;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/br;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/br;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/bs;->a:Lcom/flurry/android/monolithic/sdk/impl/br;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 603
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bs;->a:Lcom/flurry/android/monolithic/sdk/impl/br;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/br;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    const-string v1, "AdsThreadQueue Single Executor"

    invoke-static {v0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/impl/ads/FlurryAdModule;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bs;->a:Lcom/flurry/android/monolithic/sdk/impl/br;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/br;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bs;->a:Lcom/flurry/android/monolithic/sdk/impl/br;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/br;->a(Lcom/flurry/android/monolithic/sdk/impl/br;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/bs;->a:Lcom/flurry/android/monolithic/sdk/impl/br;

    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/br;->b(Lcom/flurry/android/monolithic/sdk/impl/br;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/bs;->a:Lcom/flurry/android/monolithic/sdk/impl/br;

    invoke-static {v3}, Lcom/flurry/android/monolithic/sdk/impl/br;->c(Lcom/flurry/android/monolithic/sdk/impl/br;)Z

    move-result v3

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/bs;->a:Lcom/flurry/android/monolithic/sdk/impl/br;

    invoke-static {v4}, Lcom/flurry/android/monolithic/sdk/impl/br;->d(Lcom/flurry/android/monolithic/sdk/impl/br;)Lcom/flurry/android/FlurryAdSize;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Ljava/lang/String;Landroid/view/ViewGroup;ZLcom/flurry/android/FlurryAdSize;)Ljava/util/List;

    move-result-object v0

    .line 606
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bs;->a:Lcom/flurry/android/monolithic/sdk/impl/br;

    iget-object v1, v1, Lcom/flurry/android/monolithic/sdk/impl/br;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-static {v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/impl/ads/FlurryAdModule;)Lcom/flurry/android/monolithic/sdk/impl/bw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/bw;->a(Ljava/util/List;)V

    .line 610
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bs;->a:Lcom/flurry/android/monolithic/sdk/impl/br;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/br;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-static {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Lcom/flurry/android/impl/ads/FlurryAdModule;)Lcom/flurry/android/monolithic/sdk/impl/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bs;->a:Lcom/flurry/android/monolithic/sdk/impl/br;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/br;->a(Lcom/flurry/android/monolithic/sdk/impl/br;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/bw;->h(Ljava/lang/String;)V

    .line 611
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->L()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fetchAdTaskExecute :setting cache request limit count"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bs;->a:Lcom/flurry/android/monolithic/sdk/impl/br;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/br;->e(Lcom/flurry/android/monolithic/sdk/impl/br;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a()Lcom/flurry/android/monolithic/sdk/impl/ia;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bs;->a:Lcom/flurry/android/monolithic/sdk/impl/br;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/br;->e(Lcom/flurry/android/monolithic/sdk/impl/br;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ia;->a(Ljava/lang/Runnable;)V

    .line 617
    :cond_0
    return-void
.end method
