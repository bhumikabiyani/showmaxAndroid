.class Lcom/boldchat/sdk/BoldChatWebHistory$OpenLinksExternalWebClient;
.super Landroid/webkit/WebViewClient;
.source "BoldChatWebHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatWebHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenLinksExternalWebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatWebHistory;


# direct methods
.method private constructor <init>(Lcom/boldchat/sdk/BoldChatWebHistory;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatWebHistory$OpenLinksExternalWebClient;->this$0:Lcom/boldchat/sdk/BoldChatWebHistory;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boldchat/sdk/BoldChatWebHistory;Lcom/boldchat/sdk/BoldChatWebHistory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boldchat/sdk/BoldChatWebHistory;
    .param p2, "x1"    # Lcom/boldchat/sdk/BoldChatWebHistory$1;

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatWebHistory$OpenLinksExternalWebClient;-><init>(Lcom/boldchat/sdk/BoldChatWebHistory;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 267
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 268
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatWebHistory$OpenLinksExternalWebClient;->this$0:Lcom/boldchat/sdk/BoldChatWebHistory;

    invoke-virtual {v1}, Lcom/boldchat/sdk/BoldChatWebHistory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 269
    const/4 v1, 0x1

    return v1
.end method
