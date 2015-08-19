.class public Lcom/showmax/lib/api/ui/widget/AuthWebView;
.super Lcom/showmax/lib/api/ui/widget/BaseWebView;
.source "AuthWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;
    }
.end annotation


# static fields
.field public static LOG:Z


# instance fields
.field private mListener:Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/showmax/lib/api/ui/widget/AuthWebView;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/showmax/lib/api/ui/widget/BaseWebView;-><init>(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/showmax/lib/api/ui/widget/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/showmax/lib/api/ui/widget/BaseWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method private isUrlAuthSuccessful(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string v0, "token"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "secure_token"

    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/AuthWebView;->mListener:Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/AuthWebView;->mListener:Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;

    invoke-interface {v0, p2}, Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;->onPageLoadingProgressChanged(I)V

    .line 121
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
    .line 126
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/AuthWebView;->mListener:Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/AuthWebView;->mListener:Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;

    invoke-interface {v0, p2, p3, p4}, Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;->onPageError(ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method public setAuthWebViewListener(Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/showmax/lib/api/ui/widget/AuthWebView;->mListener:Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;

    .line 108
    return-void
.end method

.method protected shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 135
    sget-boolean v8, Lcom/showmax/lib/api/ui/widget/AuthWebView;->LOG:Z

    if-eqz v8, :cond_0

    .line 136
    const-string v8, "[AuthWebView]::[shouldOverrideUrlLoading]::[url: %s]"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object p2, v9, v7

    invoke-static {v8, v9}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_0
    invoke-virtual {p0, p2}, Lcom/showmax/lib/api/ui/widget/AuthWebView;->isCloseButtonMatched(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 140
    sget-boolean v7, Lcom/showmax/lib/api/ui/widget/AuthWebView;->LOG:Z

    if-eqz v7, :cond_1

    .line 141
    const-string v7, "[AuthWebView]::[shouldOverrideUrlLoading]::[close button matched]"

    invoke-static {v7}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 142
    :cond_1
    iget-object v7, p0, Lcom/showmax/lib/api/ui/widget/AuthWebView;->mListener:Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;

    if-eqz v7, :cond_2

    .line 144
    iget-object v7, p0, Lcom/showmax/lib/api/ui/widget/AuthWebView;->mListener:Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;

    invoke-interface {v7}, Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;->onCloseButtonClicked()V

    .line 180
    :cond_2
    :goto_0
    return v6

    .line 149
    :cond_3
    invoke-direct {p0, p2}, Lcom/showmax/lib/api/ui/widget/AuthWebView;->isUrlAuthSuccessful(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 151
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 152
    .local v5, "uri":Landroid/net/Uri;
    const-string v8, "token"

    invoke-virtual {v5, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "accessToken":Ljava/lang/String;
    const-string v8, "expires_in"

    invoke-virtual {v5, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "expiration":Ljava/lang/String;
    const-string v8, "secure_token"

    invoke-virtual {v5, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "secureToken":Ljava/lang/String;
    const-string v8, "bonus"

    invoke-virtual {v5, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "bonusStr":Ljava/lang/String;
    sget-boolean v8, Lcom/showmax/lib/api/ui/widget/AuthWebView;->LOG:Z

    if-eqz v8, :cond_4

    .line 158
    const-string v8, "[AuthWebView]::[shouldOverrideUrlLoading]::[bonusStr %s]]"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v2, v9, v7

    invoke-static {v8, v9}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_4
    const-string v8, "true"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 163
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 172
    .local v1, "bonus":Ljava/lang/Boolean;
    :goto_1
    iget-object v7, p0, Lcom/showmax/lib/api/ui/widget/AuthWebView;->mListener:Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;

    if-eqz v7, :cond_2

    .line 174
    sget-boolean v7, Lcom/showmax/lib/api/ui/widget/AuthWebView;->LOG:Z

    if-eqz v7, :cond_5

    .line 175
    const-string v7, "[AuthWebView]::[shouldOverrideUrlLoading]::[auth successful]::[notify listener]"

    invoke-static {v7}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;)V

    .line 176
    :cond_5
    iget-object v7, p0, Lcom/showmax/lib/api/ui/widget/AuthWebView;->mListener:Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;

    invoke-interface {v7, v0, v4, v3, v1}, Lcom/showmax/lib/api/ui/widget/AuthWebView$AuthWebViewListener;->onAuthSuccessful(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 164
    .end local v1    # "bonus":Ljava/lang/Boolean;
    :cond_6
    const-string v8, "false"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 166
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .restart local v1    # "bonus":Ljava/lang/Boolean;
    goto :goto_1

    .line 169
    .end local v1    # "bonus":Ljava/lang/Boolean;
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "bonus":Ljava/lang/Boolean;
    goto :goto_1

    .end local v0    # "accessToken":Ljava/lang/String;
    .end local v1    # "bonus":Ljava/lang/Boolean;
    .end local v2    # "bonusStr":Ljava/lang/String;
    .end local v3    # "expiration":Ljava/lang/String;
    .end local v4    # "secureToken":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_8
    move v6, v7

    .line 180
    goto :goto_0
.end method
