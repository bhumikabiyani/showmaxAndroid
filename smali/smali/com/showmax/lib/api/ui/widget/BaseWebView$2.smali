.class Lcom/showmax/lib/api/ui/widget/BaseWebView$2;
.super Landroid/webkit/WebChromeClient;
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
    .line 139
    iput-object p1, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView$2;->this$0:Lcom/showmax/lib/api/ui/widget/BaseWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 143
    sget-boolean v0, Lcom/showmax/lib/api/ui/widget/BaseWebView;->LOG:Z

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "[BaseWebView]::[onProgressChanged]::[progress: %d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView$2;->this$0:Lcom/showmax/lib/api/ui/widget/BaseWebView;

    invoke-virtual {v0, p1, p2}, Lcom/showmax/lib/api/ui/widget/BaseWebView;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 147
    return-void
.end method
