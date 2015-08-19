.class Lcom/boldchat/visitor/api/Chat$2;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/boldchat/visitor/api/internal/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/visitor/api/Chat;->sendMessage(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/visitor/api/Chat;

.field final synthetic val$params:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/boldchat/visitor/api/Chat;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat$2;->this$0:Lcom/boldchat/visitor/api/Chat;

    iput-object p2, p0, Lcom/boldchat/visitor/api/Chat$2;->val$params:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(ILjava/lang/String;Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "object"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$2;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->retryQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boldchat/visitor/api/Chat;->access$100(Lcom/boldchat/visitor/api/Chat;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$2;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->retryQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boldchat/visitor/api/Chat;->access$100(Lcom/boldchat/visitor/api/Chat;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Lcom/boldchat/visitor/api/internal/RPCMethod;

    const-string v3, "sendMessage"

    iget-object v4, p0, Lcom/boldchat/visitor/api/Chat$2;->val$params:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, p0}, Lcom/boldchat/visitor/api/internal/RPCMethod;-><init>(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$2;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->retryThread:Lcom/boldchat/visitor/api/Chat$MethodRetry;
    invoke-static {v0}, Lcom/boldchat/visitor/api/Chat;->access$200(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/Chat$MethodRetry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat$2;->this$0:Lcom/boldchat/visitor/api/Chat;

    new-instance v3, Lcom/boldchat/visitor/api/Chat$MethodRetry;

    iget-object v4, p0, Lcom/boldchat/visitor/api/Chat$2;->this$0:Lcom/boldchat/visitor/api/Chat;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/boldchat/visitor/api/Chat$MethodRetry;-><init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/Chat$1;)V

    # setter for: Lcom/boldchat/visitor/api/Chat;->retryThread:Lcom/boldchat/visitor/api/Chat$MethodRetry;
    invoke-static {v2, v3}, Lcom/boldchat/visitor/api/Chat;->access$202(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/Chat$MethodRetry;)Lcom/boldchat/visitor/api/Chat$MethodRetry;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 347
    :cond_0
    monitor-exit v1

    .line 348
    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public failure(Ljava/io/IOException;)V
    .locals 3
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    .line 352
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/boldchat/visitor/api/Chat$2;->failure(ILjava/lang/String;Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 353
    return-void

    .line 352
    :cond_0
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public success(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 0
    .param p1, "object"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 337
    return-void
.end method
