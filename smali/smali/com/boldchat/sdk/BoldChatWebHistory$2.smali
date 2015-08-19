.class Lcom/boldchat/sdk/BoldChatWebHistory$2;
.super Ljava/lang/Object;
.source "BoldChatWebHistory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatWebHistory;->runJavascript(Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatWebHistory;

.field final synthetic val$buffer:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatWebHistory;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatWebHistory$2;->this$0:Lcom/boldchat/sdk/BoldChatWebHistory;

    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatWebHistory$2;->val$buffer:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 220
    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatWebHistory$2;->val$buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "js":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 225
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 230
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatWebHistory$2;->this$0:Lcom/boldchat/sdk/BoldChatWebHistory;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boldchat/sdk/BoldChatWebHistory;->loadUrl(Ljava/lang/String;)V

    .line 231
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "BOLD"

    const-string v3, "UTF-8 Encoding not supported"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
