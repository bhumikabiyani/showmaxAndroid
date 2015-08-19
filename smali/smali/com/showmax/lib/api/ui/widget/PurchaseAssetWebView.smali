.class public Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;
.super Lcom/showmax/lib/api/ui/widget/BaseWebView;
.source "PurchaseAssetWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;
    }
.end annotation


# static fields
.field public static LOG:Z


# instance fields
.field private mAssetId:Ljava/lang/String;

.field private mListener:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/ui/widget/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/showmax/lib/api/ui/widget/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/showmax/lib/api/ui/widget/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method private isPurchaseSuccessful(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->isRedirectUrlMatched(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pageUrl"    # Ljava/lang/String;
    .param p2, "assetId"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p2, p0, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->mAssetId:Ljava/lang/String;

    .line 102
    invoke-super {p0, p1}, Lcom/showmax/lib/api/ui/widget/BaseWebView;->load(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method protected onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->mListener:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->mListener:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;

    invoke-interface {v0, p2}, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;->onPageLoadingProgressChanged(I)V

    .line 116
    :cond_0
    return-void
.end method

.method protected onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->mListener:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->mListener:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;

    invoke-interface {v0, p2, p3, p4}, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;->onPageError(ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setPurchaseAssetWebViewListener(Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->mListener:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;

    .line 97
    return-void
.end method

.method protected shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 130
    sget-boolean v2, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->LOG:Z

    if-eqz v2, :cond_0

    .line 131
    const-string v2, "[PurchaseAssetWebView]::[shouldOverrideUrlLoading]::[url: %s]"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p2, v3, v0

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    :cond_0
    invoke-virtual {p0, p2}, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->isCloseButtonMatched(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p2}, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->isPurchaseSuccessful(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 135
    :cond_1
    sget-boolean v0, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->LOG:Z

    if-eqz v0, :cond_2

    .line 136
    const-string v0, "[PurchaseAssetWebView]::[shouldOverrideUrlLoading]::[close button matched or purchase successful]"

    invoke-static {v0}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->mListener:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;

    if-eqz v0, :cond_3

    .line 139
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView;->mListener:Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;

    invoke-interface {v0}, Lcom/showmax/lib/api/ui/widget/PurchaseAssetWebView$PurchaseAssetWebViewListener;->onCloseButtonClicked()V

    :cond_3
    move v0, v1

    .line 143
    :cond_4
    return v0
.end method
