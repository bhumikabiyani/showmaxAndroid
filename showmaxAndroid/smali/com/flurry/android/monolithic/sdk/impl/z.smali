.class Lcom/flurry/android/monolithic/sdk/impl/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/w;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/w;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/z;->a:Lcom/flurry/android/monolithic/sdk/impl/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 394
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/z;->a:Lcom/flurry/android/monolithic/sdk/impl/w;

    iget-object v1, v1, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "customViewFullScreenDialog.onDismiss()"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/z;->a:Lcom/flurry/android/monolithic/sdk/impl/w;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->n(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/z;->a:Lcom/flurry/android/monolithic/sdk/impl/w;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->o(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/z;->a:Lcom/flurry/android/monolithic/sdk/impl/w;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->o(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 399
    :cond_0
    return-void
.end method
