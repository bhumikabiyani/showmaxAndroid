.class public abstract Lcom/showmax/lib/api/ui/widget/BaseWebView;
.super Landroid/webkit/WebView;
.source "BaseWebView.java"


# static fields
.field public static ICFLIX_CLOSE_BUTTON:Ljava/lang/String;

.field public static LOG:Z


# instance fields
.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mPageUrl:Ljava/lang/String;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->LOG:Z

    .line 47
    const-string v0, "showmax://close_webview"

    sput-object v0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->ICFLIX_CLOSE_BUTTON:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v0, Lcom/showmax/lib/api/ui/widget/BaseWebView$1;

    invoke-direct {v0, p0}, Lcom/showmax/lib/api/ui/widget/BaseWebView$1;-><init>(Lcom/showmax/lib/api/ui/widget/BaseWebView;)V

    iput-object v0, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 138
    new-instance v0, Lcom/showmax/lib/api/ui/widget/BaseWebView$2;

    invoke-direct {v0, p0}, Lcom/showmax/lib/api/ui/widget/BaseWebView$2;-><init>(Lcom/showmax/lib/api/ui/widget/BaseWebView;)V

    iput-object v0, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 150
    new-instance v0, Lcom/showmax/lib/api/ui/widget/BaseWebView$3;

    invoke-direct {v0, p0}, Lcom/showmax/lib/api/ui/widget/BaseWebView$3;-><init>(Lcom/showmax/lib/api/ui/widget/BaseWebView;)V

    iput-object v0, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 62
    invoke-direct {p0}, Lcom/showmax/lib/api/ui/widget/BaseWebView;->init()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    new-instance v0, Lcom/showmax/lib/api/ui/widget/BaseWebView$1;

    invoke-direct {v0, p0}, Lcom/showmax/lib/api/ui/widget/BaseWebView$1;-><init>(Lcom/showmax/lib/api/ui/widget/BaseWebView;)V

    iput-object v0, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 138
    new-instance v0, Lcom/showmax/lib/api/ui/widget/BaseWebView$2;

    invoke-direct {v0, p0}, Lcom/showmax/lib/api/ui/widget/BaseWebView$2;-><init>(Lcom/showmax/lib/api/ui/widget/BaseWebView;)V

    iput-object v0, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 150
    new-instance v0, Lcom/showmax/lib/api/ui/widget/BaseWebView$3;

    invoke-direct {v0, p0}, Lcom/showmax/lib/api/ui/widget/BaseWebView$3;-><init>(Lcom/showmax/lib/api/ui/widget/BaseWebView;)V

    iput-object v0, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 68
    invoke-direct {p0}, Lcom/showmax/lib/api/ui/widget/BaseWebView;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    new-instance v0, Lcom/showmax/lib/api/ui/widget/BaseWebView$1;

    invoke-direct {v0, p0}, Lcom/showmax/lib/api/ui/widget/BaseWebView$1;-><init>(Lcom/showmax/lib/api/ui/widget/BaseWebView;)V

    iput-object v0, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 138
    new-instance v0, Lcom/showmax/lib/api/ui/widget/BaseWebView$2;

    invoke-direct {v0, p0}, Lcom/showmax/lib/api/ui/widget/BaseWebView$2;-><init>(Lcom/showmax/lib/api/ui/widget/BaseWebView;)V

    iput-object v0, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 150
    new-instance v0, Lcom/showmax/lib/api/ui/widget/BaseWebView$3;

    invoke-direct {v0, p0}, Lcom/showmax/lib/api/ui/widget/BaseWebView$3;-><init>(Lcom/showmax/lib/api/ui/widget/BaseWebView;)V

    iput-object v0, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 74
    invoke-direct {p0}, Lcom/showmax/lib/api/ui/widget/BaseWebView;->init()V

    .line 75
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 92
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/showmax/lib/api/ui/widget/BaseWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 94
    invoke-virtual {p0}, Lcom/showmax/lib/api/ui/widget/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 97
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 98
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 99
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 100
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 101
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/showmax/lib/api/ui/widget/BaseWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 102
    iget-object v1, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v1}, Lcom/showmax/lib/api/ui/widget/BaseWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    iget-object v1, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v1}, Lcom/showmax/lib/api/ui/widget/BaseWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 104
    iget-object v1, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v1}, Lcom/showmax/lib/api/ui/widget/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 105
    return-void
.end method


# virtual methods
.method protected isCloseButtonMatched(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 189
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    sget-object v0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->ICFLIX_CLOSE_BUTTON:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRedirectUrlMatched(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 198
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    invoke-static {}, Lcom/showmax/lib/api/io/UserApi;->getInstance()Lcom/showmax/lib/api/io/UserApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/showmax/lib/api/io/UserApi;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "redirectUrl":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 203
    .end local v0    # "redirectUrl":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;)V
    .locals 4
    .param p1, "pageUrl"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->mPageUrl:Ljava/lang/String;

    .line 80
    sget-boolean v0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->LOG:Z

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "[BaseWebView]::[initAndLoad]::[authWebPageUrl: %s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->mPageUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->mPageUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/showmax/lib/api/ui/widget/BaseWebView;->loadUrl(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method protected abstract onProgressChanged(Landroid/webkit/WebView;I)V
.end method

.method protected abstract onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public setGACookie(IIZLjava/lang/String;)V
    .locals 10
    .param p1, "version"    # I
    .param p2, "domainNumber"    # I
    .param p3, "isStaging"    # Z
    .param p4, "cid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 209
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 210
    .local v1, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v1, v9}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 211
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    const-string v4, "_ga"

    const-string v5, "GA%d.%d.%s.%d"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    aput-object p4, v6, v7

    const/4 v7, 0x3

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .local v0, "cookie":Lorg/apache/http/impl/cookie/BasicClientCookie;
    const-string v4, "/"

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "cookieString":Ljava/lang/String;
    if-eqz p3, :cond_1

    const-string v4, ".showmax.io"

    :goto_0
    invoke-virtual {v1, v4, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/showmax/lib/api/ui/widget/BaseWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v3

    .line 219
    .local v3, "cookieSyncManager":Landroid/webkit/CookieSyncManager;
    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 221
    .end local v3    # "cookieSyncManager":Landroid/webkit/CookieSyncManager;
    :cond_0
    return-void

    .line 214
    :cond_1
    const-string v4, ".showmax.com"

    goto :goto_0
.end method

.method protected abstract shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end method
