.class final Lcom/flurry/android/monolithic/sdk/impl/au;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/ar;


# direct methods
.method private constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ar;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ar;Lcom/flurry/android/monolithic/sdk/impl/as;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/au;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ar;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 134
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ar;->a(Lcom/flurry/android/monolithic/sdk/impl/ar;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageFinished: url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->b(Lcom/flurry/android/monolithic/sdk/impl/ar;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ar;->a(Lcom/flurry/android/monolithic/sdk/impl/ar;Z)Z

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 112
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ar;->a(Lcom/flurry/android/monolithic/sdk/impl/ar;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageStarted: url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->b(Lcom/flurry/android/monolithic/sdk/impl/ar;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->d(Lcom/flurry/android/monolithic/sdk/impl/ar;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/ar;->c(Lcom/flurry/android/monolithic/sdk/impl/ar;)Lcom/flurry/android/monolithic/sdk/impl/az;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 121
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->c(Lcom/flurry/android/monolithic/sdk/impl/ar;)Lcom/flurry/android/monolithic/sdk/impl/az;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/ar;->d(Lcom/flurry/android/monolithic/sdk/impl/ar;)Z

    move-result v2

    invoke-interface {v0, v1, p2, v2}, Lcom/flurry/android/monolithic/sdk/impl/az;->a(Lcom/flurry/android/monolithic/sdk/impl/ar;Ljava/lang/String;Z)Z

    move-result v0

    .line 125
    :cond_2
    if-eqz v0, :cond_3

    .line 126
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ar;->a(Lcom/flurry/android/monolithic/sdk/impl/ar;Z)Z

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 95
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/ar;->a(Lcom/flurry/android/monolithic/sdk/impl/ar;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldOverrideUrlLoading: url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->b(Lcom/flurry/android/monolithic/sdk/impl/ar;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 108
    :goto_0
    return v0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->c(Lcom/flurry/android/monolithic/sdk/impl/ar;)Lcom/flurry/android/monolithic/sdk/impl/az;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->c(Lcom/flurry/android/monolithic/sdk/impl/ar;)Lcom/flurry/android/monolithic/sdk/impl/az;

    move-result-object v0

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v3}, Lcom/flurry/android/monolithic/sdk/impl/ar;->d(Lcom/flurry/android/monolithic/sdk/impl/ar;)Z

    move-result v3

    invoke-interface {v0, v2, p2, v3}, Lcom/flurry/android/monolithic/sdk/impl/az;->a(Lcom/flurry/android/monolithic/sdk/impl/ar;Ljava/lang/String;Z)Z

    move-result v0

    .line 107
    :goto_1
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/au;->a:Lcom/flurry/android/monolithic/sdk/impl/ar;

    invoke-static {v2, v1}, Lcom/flurry/android/monolithic/sdk/impl/ar;->a(Lcom/flurry/android/monolithic/sdk/impl/ar;Z)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
