.class public final Lcom/flurry/android/monolithic/sdk/impl/ar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/webkit/WebViewClient;

.field private d:Landroid/webkit/WebChromeClient;

.field private e:Z

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:Lcom/flurry/android/monolithic/sdk/impl/az;

.field private m:Lcom/flurry/android/monolithic/sdk/impl/av;

.field private n:Lcom/flurry/android/monolithic/sdk/impl/aw;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 180
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->a:Ljava/lang/String;

    .line 59
    iput v2, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->i:I

    .line 60
    iput v4, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->j:I

    .line 61
    iput v6, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->k:I

    .line 182
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    .line 183
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/au;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/au;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ar;Lcom/flurry/android/monolithic/sdk/impl/as;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->c:Landroid/webkit/WebViewClient;

    .line 184
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/at;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/at;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ar;Lcom/flurry/android/monolithic/sdk/impl/as;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->d:Landroid/webkit/WebChromeClient;

    .line 186
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 188
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 189
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->c:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 195
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->d:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 196
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 198
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->f:Landroid/widget/ImageView;

    .line 199
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 200
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->g:Landroid/widget/ImageView;

    .line 204
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setId(I)V

    .line 205
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->g:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->h:Landroid/widget/ImageView;

    .line 209
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 210
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 211
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 214
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->addView(Landroid/view/View;)V

    .line 217
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 218
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 219
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 222
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 223
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 226
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 227
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    return-void
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/ar;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/android/monolithic/sdk/impl/ar;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/flurry/android/monolithic/sdk/impl/ar;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b(Lcom/flurry/android/monolithic/sdk/impl/ar;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/flurry/android/monolithic/sdk/impl/ar;)Lcom/flurry/android/monolithic/sdk/impl/az;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->l:Lcom/flurry/android/monolithic/sdk/impl/az;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/android/monolithic/sdk/impl/ar;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->o:Z

    return v0
.end method

.method static synthetic e(Lcom/flurry/android/monolithic/sdk/impl/ar;)Lcom/flurry/android/monolithic/sdk/impl/aw;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->n:Lcom/flurry/android/monolithic/sdk/impl/aw;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->e:Z

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->d:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0
.end method

.method public c()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/ar;->removeView(Landroid/view/View;)V

    .line 288
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    .line 295
    :cond_1
    return-void
.end method

.method public getBasicWebViewClosingHandler()Lcom/flurry/android/monolithic/sdk/impl/av;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->m:Lcom/flurry/android/monolithic/sdk/impl/av;

    return-object v0
.end method

.method public getBasicWebViewFullScreenTransitionHandler()Lcom/flurry/android/monolithic/sdk/impl/aw;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->n:Lcom/flurry/android/monolithic/sdk/impl/aw;

    return-object v0
.end method

.method public getBasicWebViewUrlLoadingHandler()Lcom/flurry/android/monolithic/sdk/impl/az;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->l:Lcom/flurry/android/monolithic/sdk/impl/az;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_0
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 258
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->m:Lcom/flurry/android/monolithic/sdk/impl/av;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->m:Lcom/flurry/android/monolithic/sdk/impl/av;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ay;->c:Lcom/flurry/android/monolithic/sdk/impl/ay;

    invoke-interface {v0, p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/av;->a(Lcom/flurry/android/monolithic/sdk/impl/ar;Lcom/flurry/android/monolithic/sdk/impl/ay;)V

    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0

    .line 269
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->m:Lcom/flurry/android/monolithic/sdk/impl/av;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->m:Lcom/flurry/android/monolithic/sdk/impl/av;

    sget-object v1, Lcom/flurry/android/monolithic/sdk/impl/ay;->b:Lcom/flurry/android/monolithic/sdk/impl/ay;

    invoke-interface {v0, p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/av;->a(Lcom/flurry/android/monolithic/sdk/impl/ar;Lcom/flurry/android/monolithic/sdk/impl/ay;)V

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBasicWebViewClosingHandler(Lcom/flurry/android/monolithic/sdk/impl/av;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->m:Lcom/flurry/android/monolithic/sdk/impl/av;

    .line 78
    return-void
.end method

.method public setBasicWebViewFullScreenTransitionHandler(Lcom/flurry/android/monolithic/sdk/impl/aw;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->n:Lcom/flurry/android/monolithic/sdk/impl/aw;

    .line 86
    return-void
.end method

.method public setBasicWebViewUrlLoadingHandler(Lcom/flurry/android/monolithic/sdk/impl/az;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/ar;->l:Lcom/flurry/android/monolithic/sdk/impl/az;

    .line 70
    return-void
.end method
