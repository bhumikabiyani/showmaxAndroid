.class Lcom/boldchat/visitor/api/Chat$MethodRetry$1;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/boldchat/visitor/api/internal/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/visitor/api/Chat$MethodRetry;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/boldchat/visitor/api/Chat$MethodRetry;


# direct methods
.method constructor <init>(Lcom/boldchat/visitor/api/Chat$MethodRetry;)V
    .locals 0

    .prologue
    .line 985
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry$1;->this$1:Lcom/boldchat/visitor/api/Chat$MethodRetry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(ILjava/lang/String;Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "object"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 995
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry$1;->this$1:Lcom/boldchat/visitor/api/Chat$MethodRetry;

    iget-object v0, v0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->this$0:Lcom/boldchat/visitor/api/Chat;

    # operator++ for: Lcom/boldchat/visitor/api/Chat;->retrySleep:J
    invoke-static {v0}, Lcom/boldchat/visitor/api/Chat;->access$2908(Lcom/boldchat/visitor/api/Chat;)J

    .line 996
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry$1;->this$1:Lcom/boldchat/visitor/api/Chat$MethodRetry;

    iget-object v0, v0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->retryQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boldchat/visitor/api/Chat;->access$100(Lcom/boldchat/visitor/api/Chat;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 997
    :try_start_0
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry$1;->this$1:Lcom/boldchat/visitor/api/Chat$MethodRetry;

    iget-object v0, v0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->retryQueue:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boldchat/visitor/api/Chat;->access$100(Lcom/boldchat/visitor/api/Chat;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry$1;->this$1:Lcom/boldchat/visitor/api/Chat$MethodRetry;

    iget-object v3, v3, Lcom/boldchat/visitor/api/Chat$MethodRetry;->topMethod:Lcom/boldchat/visitor/api/internal/RPCMethod;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 998
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry$1;->this$1:Lcom/boldchat/visitor/api/Chat$MethodRetry;

    iget-object v1, v1, Lcom/boldchat/visitor/api/Chat$MethodRetry;->this$0:Lcom/boldchat/visitor/api/Chat;

    new-instance v2, Lcom/boldchat/visitor/api/Chat$MethodRetry;

    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry$1;->this$1:Lcom/boldchat/visitor/api/Chat$MethodRetry;

    iget-object v3, v3, Lcom/boldchat/visitor/api/Chat$MethodRetry;->this$0:Lcom/boldchat/visitor/api/Chat;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/boldchat/visitor/api/Chat$MethodRetry;-><init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/Chat$1;)V

    # setter for: Lcom/boldchat/visitor/api/Chat;->retryThread:Lcom/boldchat/visitor/api/Chat$MethodRetry;
    invoke-static {v1, v2}, Lcom/boldchat/visitor/api/Chat;->access$202(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/Chat$MethodRetry;)Lcom/boldchat/visitor/api/Chat$MethodRetry;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1000
    return-void

    .line 998
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public failure(Ljava/io/IOException;)V
    .locals 3
    .param p1, "error"    # Ljava/io/IOException;

    .prologue
    .line 1004
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/boldchat/visitor/api/Chat$MethodRetry$1;->failure(ILjava/lang/String;Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 1005
    return-void
.end method

.method public success(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry$1;->this$1:Lcom/boldchat/visitor/api/Chat$MethodRetry;

    iget-object v0, v0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->this$0:Lcom/boldchat/visitor/api/Chat;

    const-wide/16 v2, 0x0

    # setter for: Lcom/boldchat/visitor/api/Chat;->retrySleep:J
    invoke-static {v0, v2, v3}, Lcom/boldchat/visitor/api/Chat;->access$2902(Lcom/boldchat/visitor/api/Chat;J)J

    .line 989
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry$1;->this$1:Lcom/boldchat/visitor/api/Chat$MethodRetry;

    iget-object v0, v0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->topMethod:Lcom/boldchat/visitor/api/internal/RPCMethod;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/internal/RPCMethod;->getListener()Lcom/boldchat/visitor/api/internal/ResultListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/boldchat/visitor/api/internal/ResultListener;->success(Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 990
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry$1;->this$1:Lcom/boldchat/visitor/api/Chat$MethodRetry;

    iget-object v1, v1, Lcom/boldchat/visitor/api/Chat$MethodRetry;->this$0:Lcom/boldchat/visitor/api/Chat;

    new-instance v2, Lcom/boldchat/visitor/api/Chat$MethodRetry;

    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry$1;->this$1:Lcom/boldchat/visitor/api/Chat$MethodRetry;

    iget-object v3, v3, Lcom/boldchat/visitor/api/Chat$MethodRetry;->this$0:Lcom/boldchat/visitor/api/Chat;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/boldchat/visitor/api/Chat$MethodRetry;-><init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/Chat$1;)V

    # setter for: Lcom/boldchat/visitor/api/Chat;->retryThread:Lcom/boldchat/visitor/api/Chat$MethodRetry;
    invoke-static {v1, v2}, Lcom/boldchat/visitor/api/Chat;->access$202(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/Chat$MethodRetry;)Lcom/boldchat/visitor/api/Chat$MethodRetry;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 991
    return-void
.end method
