.class Lcom/flurry/android/monolithic/sdk/impl/bj;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/android/monolithic/sdk/impl/an;

.field final synthetic d:Lcom/flurry/android/monolithic/sdk/impl/bi;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/bi;Landroid/content/Context;Ljava/lang/String;Lcom/flurry/android/monolithic/sdk/impl/an;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/bj;->d:Lcom/flurry/android/monolithic/sdk/impl/bi;

    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/bj;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/bj;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/bj;->c:Lcom/flurry/android/monolithic/sdk/impl/an;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/bj;->d:Lcom/flurry/android/monolithic/sdk/impl/bi;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/bi;->a:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b()Lcom/flurry/android/monolithic/sdk/impl/bw;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/bj;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/bj;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/bj;->c:Lcom/flurry/android/monolithic/sdk/impl/an;

    invoke-virtual {v3}, Lcom/flurry/android/monolithic/sdk/impl/an;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/bw;->b(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)Z

    .line 307
    return-void
.end method
