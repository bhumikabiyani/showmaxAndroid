.class Lcom/flurry/android/monolithic/sdk/impl/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/o;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/o;)V
    .locals 0

    .prologue
    .line 1217
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/v;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 1220
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/v;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extendedWebViewDialog.onDismiss()"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/v;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/v;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:if(window.mraid){window.mraid.close();};"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1225
    :cond_0
    return-void
.end method
