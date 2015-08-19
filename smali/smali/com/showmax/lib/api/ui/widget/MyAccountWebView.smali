.class public Lcom/showmax/lib/api/ui/widget/MyAccountWebView;
.super Lcom/showmax/lib/api/ui/widget/BaseWebView;
.source "MyAccountWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;
    }
.end annotation


# static fields
.field public static LOG:Z


# instance fields
.field private mListener:Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/ui/widget/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/showmax/lib/api/ui/widget/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/showmax/lib/api/ui/widget/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    return-void
.end method


# virtual methods
.method protected onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->mListener:Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->mListener:Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;

    invoke-interface {v0, p2}, Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;->onPageLoadingProgressChanged(I)V

    .line 109
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
    .line 114
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->mListener:Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->mListener:Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;

    invoke-interface {v0, p2, p3, p4}, Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;->onPageError(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public setMyAccountWebViewListener(Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->mListener:Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;

    .line 96
    return-void
.end method

.method protected shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    sget-boolean v2, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->LOG:Z

    if-eqz v2, :cond_0

    .line 124
    const-string v2, "[MyAccountWebView]::[shouldOverrideUrlLoading]::[url: %s]"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, v1

    invoke-static {v2, v3}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :cond_0
    invoke-virtual {p0, p2}, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->isCloseButtonMatched(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    sget-boolean v1, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->LOG:Z

    if-eqz v1, :cond_1

    .line 129
    const-string v1, "[MyAccountWebView]::[shouldOverrideUrlLoading]::[close button matched]"

    invoke-static {v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->mListener:Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/showmax/lib/api/ui/widget/MyAccountWebView;->mListener:Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;

    invoke-interface {v1}, Lcom/showmax/lib/api/ui/widget/MyAccountWebView$MyAccountWebViewListener;->onCloseButtonClicked()V

    .line 136
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
