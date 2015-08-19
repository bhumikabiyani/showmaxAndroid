.class Lcom/flurry/android/monolithic/sdk/impl/aa;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/o;


# direct methods
.method private constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/o;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/o;Lcom/flurry/android/monolithic/sdk/impl/p;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/aa;-><init>(Lcom/flurry/android/monolithic/sdk/impl/o;)V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 129
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadResource: url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 132
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->c(Lcom/flurry/android/monolithic/sdk/impl/o;)V

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->d(Lcom/flurry/android/monolithic/sdk/impl/o;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    const-string v1, "mraid.js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;Z)Z

    .line 157
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->e(Lcom/flurry/android/monolithic/sdk/impl/o;)V

    .line 159
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->f(Lcom/flurry/android/monolithic/sdk/impl/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->g(Lcom/flurry/android/monolithic/sdk/impl/o;)V

    .line 161
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->h(Lcom/flurry/android/monolithic/sdk/impl/o;)V

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 189
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished: url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 190
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->c(Lcom/flurry/android/monolithic/sdk/impl/o;)V

    .line 200
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->k(Lcom/flurry/android/monolithic/sdk/impl/o;)V

    .line 203
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->l(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->l(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->l(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentBinding()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getCurrentBinding()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adding WebView to AdUnityView"

    invoke-static {v4, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->addView(Landroid/view/View;)V

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0, v3}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(Lcom/flurry/android/monolithic/sdk/impl/o;Z)Z

    .line 216
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->d(Lcom/flurry/android/monolithic/sdk/impl/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->g(Lcom/flurry/android/monolithic/sdk/impl/o;)V

    .line 218
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->h(Lcom/flurry/android/monolithic/sdk/impl/o;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 170
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/lang/String;

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

    .line 171
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->i(Lcom/flurry/android/monolithic/sdk/impl/o;)V

    .line 179
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->j(Lcom/flurry/android/monolithic/sdk/impl/o;)V

    .line 181
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0, v4}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(Lcom/flurry/android/monolithic/sdk/impl/o;Z)Z

    .line 182
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0, v4}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;Z)Z

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 289
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->l(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->l(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->l(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    const-string v1, "renderFailed"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v3, v3, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v4, v4, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget v5, v5, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    .line 295
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 226
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading: url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 227
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 228
    :cond_0
    const/4 v0, 0x0

    .line 281
    :goto_0
    return v0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/cp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 243
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldOverrideUrlLoading: target url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    .line 247
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "flurry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 250
    const-string v1, "event"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    if-eqz v1, :cond_3

    .line 253
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/o;->m(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/je;->f(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 256
    const-string v0, "guid"

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    const-string v0, "guid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    move-result-object v3

    .line 259
    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    const-string v0, "guid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(Lcom/flurry/android/monolithic/sdk/impl/o;Ljava/lang/String;)Lcom/flurry/android/monolithic/sdk/impl/m;

    move-result-object v4

    .line 260
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 262
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    .line 270
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 267
    :cond_4
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v3, v3, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v4, v4, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget v5, v5, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    goto :goto_1

    .line 274
    :cond_5
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    const-string v1, "clicked"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v3, v3, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    iget-object v4, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v4, v4, Lcom/flurry/android/monolithic/sdk/impl/o;->c:Lcom/flurry/android/monolithic/sdk/impl/m;

    iget-object v5, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget v5, v5, Lcom/flurry/android/monolithic/sdk/impl/o;->e:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Ljava/lang/String;Ljava/util/Map;Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;Lcom/flurry/android/monolithic/sdk/impl/m;II)V

    .line 275
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 276
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->b(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 281
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 279
    :cond_6
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v0, v0, Lcom/flurry/android/monolithic/sdk/impl/o;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a()Lcom/flurry/android/monolithic/sdk/impl/bi;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/flurry/android/monolithic/sdk/impl/aa;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v3, v3, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/flurry/android/monolithic/sdk/impl/bi;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;)V

    goto :goto_2
.end method
