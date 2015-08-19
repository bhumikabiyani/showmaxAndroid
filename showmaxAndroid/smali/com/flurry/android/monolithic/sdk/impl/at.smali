.class final Lcom/flurry/android/monolithic/sdk/impl/at;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/ar;


# direct methods
.method private constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ar;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/at;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ar;Lcom/flurry/android/monolithic/sdk/impl/as;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/at;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ar;)V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/at;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ar;->a(Lcom/flurry/android/monolithic/sdk/impl/ar;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onHideCustomView()"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/at;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->e(Lcom/flurry/android/monolithic/sdk/impl/ar;)Lcom/flurry/android/monolithic/sdk/impl/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/at;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->e(Lcom/flurry/android/monolithic/sdk/impl/ar;)Lcom/flurry/android/monolithic/sdk/impl/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/at;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-interface {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/aw;->a(Lcom/flurry/android/monolithic/sdk/impl/ar;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/at;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ar;->b(Lcom/flurry/android/monolithic/sdk/impl/ar;Z)Z

    .line 174
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    .prologue
    .line 159
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/at;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ar;->a(Lcom/flurry/android/monolithic/sdk/impl/ar;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onShowCustomView(14)"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/at;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ar;->b(Lcom/flurry/android/monolithic/sdk/impl/ar;Z)Z

    .line 161
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/at;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->e(Lcom/flurry/android/monolithic/sdk/impl/ar;)Lcom/flurry/android/monolithic/sdk/impl/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/at;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->e(Lcom/flurry/android/monolithic/sdk/impl/ar;)Lcom/flurry/android/monolithic/sdk/impl/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/at;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/ba;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/at;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-direct {v2, v3, p3}, Lcom/flurry/android/monolithic/sdk/impl/ba;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ar;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/flurry/android/monolithic/sdk/impl/aw;->a(Lcom/flurry/android/monolithic/sdk/impl/ar;Landroid/view/View;ILcom/flurry/android/monolithic/sdk/impl/ax;)V

    .line 165
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4

    .prologue
    .line 147
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/at;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ar;->a(Lcom/flurry/android/monolithic/sdk/impl/ar;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onShowCustomView(7)"

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/at;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ar;->b(Lcom/flurry/android/monolithic/sdk/impl/ar;Z)Z

    .line 149
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/at;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->e(Lcom/flurry/android/monolithic/sdk/impl/ar;)Lcom/flurry/android/monolithic/sdk/impl/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/at;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->e(Lcom/flurry/android/monolithic/sdk/impl/ar;)Lcom/flurry/android/monolithic/sdk/impl/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/at;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/ba;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/at;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-direct {v2, v3, p2}, Lcom/flurry/android/monolithic/sdk/impl/ba;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ar;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/flurry/android/monolithic/sdk/impl/aw;->a(Lcom/flurry/android/monolithic/sdk/impl/ar;Landroid/view/View;Lcom/flurry/android/monolithic/sdk/impl/ax;)V

    .line 153
    :cond_0
    return-void
.end method
