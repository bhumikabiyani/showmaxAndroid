.class Lcom/flurry/android/monolithic/sdk/impl/r;
.super Lcom/flurry/android/monolithic/sdk/impl/jf;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/p;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/p;)V
    .locals 0

    .prologue
    .line 864
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/r;->a:Lcom/flurry/android/monolithic/sdk/impl/p;

    invoke-direct {p0}, Lcom/flurry/android/monolithic/sdk/impl/jf;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/r;->a:Lcom/flurry/android/monolithic/sdk/impl/p;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/r;->a:Lcom/flurry/android/monolithic/sdk/impl/p;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/p;->b:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/r;->a:Lcom/flurry/android/monolithic/sdk/impl/p;

    iget-object v1, v1, Lcom/flurry/android/monolithic/sdk/impl/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 872
    :cond_0
    return-void
.end method
