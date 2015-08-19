.class Lcom/showmax/lib/api/ui/widget/BaseWebView$3;
.super Landroid/webkit/WebViewClient;
.source "BaseWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/ui/widget/BaseWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/lib/api/ui/widget/BaseWebView;


# direct methods
.method constructor <init>(Lcom/showmax/lib/api/ui/widget/BaseWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/lib/api/ui/widget/BaseWebView;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView$3;->this$0:Lcom/showmax/lib/api/ui/widget/BaseWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmailIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;
    .param p5, "cc"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "android.intent.extra.CC"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    return-object v0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 154
    sget-boolean v0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->LOG:Z

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "[BaseWebView]::[onReceivedError]::[errorCode: %d]::[description: %s]::[failingUrl: %s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView$3;->this$0:Lcom/showmax/lib/api/ui/widget/BaseWebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/showmax/lib/api/ui/widget/BaseWebView;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string v0, "mailto:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {p2}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v7

    .line 167
    .local v7, "mailTo":Landroid/net/MailTo;
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView$3;->this$0:Lcom/showmax/lib/api/ui/widget/BaseWebView;

    invoke-virtual {v0}, Lcom/showmax/lib/api/ui/widget/BaseWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/showmax/lib/api/ui/widget/BaseWebView$3;->getEmailIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 168
    .local v6, "emailIntent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView$3;->this$0:Lcom/showmax/lib/api/ui/widget/BaseWebView;

    invoke-virtual {v0}, Lcom/showmax/lib/api/ui/widget/BaseWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 169
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView$3;->this$0:Lcom/showmax/lib/api/ui/widget/BaseWebView;

    invoke-virtual {v0}, Lcom/showmax/lib/api/ui/widget/BaseWebView;->reload()V

    .line 170
    const/4 v0, 0x1

    .line 172
    .end local v6    # "emailIntent":Landroid/content/Intent;
    .end local v7    # "mailTo":Landroid/net/MailTo;
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView$3;->this$0:Lcom/showmax/lib/api/ui/widget/BaseWebView;

    invoke-virtual {v0, p1, p2}, Lcom/showmax/lib/api/ui/widget/BaseWebView;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
