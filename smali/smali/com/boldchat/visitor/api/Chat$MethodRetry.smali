.class Lcom/boldchat/visitor/api/Chat$MethodRetry;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/visitor/api/Chat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MethodRetry"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/visitor/api/Chat;

.field topMethod:Lcom/boldchat/visitor/api/internal/RPCMethod;


# direct methods
.method private constructor <init>(Lcom/boldchat/visitor/api/Chat;)V
    .locals 1

    .prologue
    .line 969
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->this$0:Lcom/boldchat/visitor/api/Chat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 970
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->topMethod:Lcom/boldchat/visitor/api/internal/RPCMethod;

    return-void
.end method

.method synthetic constructor <init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/Chat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boldchat/visitor/api/Chat;
    .param p2, "x1"    # Lcom/boldchat/visitor/api/Chat$1;

    .prologue
    .line 969
    invoke-direct {p0, p1}, Lcom/boldchat/visitor/api/Chat$MethodRetry;-><init>(Lcom/boldchat/visitor/api/Chat;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v2, 0xf

    .line 975
    :try_start_0
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->retrySleep:J
    invoke-static {v1}, Lcom/boldchat/visitor/api/Chat;->access$2900(Lcom/boldchat/visitor/api/Chat;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :goto_1
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->retryQueue:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boldchat/visitor/api/Chat;->access$100(Lcom/boldchat/visitor/api/Chat;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 980
    :try_start_1
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->retryQueue:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boldchat/visitor/api/Chat;->access$100(Lcom/boldchat/visitor/api/Chat;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 981
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->retryQueue:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boldchat/visitor/api/Chat;->access$100(Lcom/boldchat/visitor/api/Chat;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boldchat/visitor/api/internal/RPCMethod;

    iput-object v1, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->topMethod:Lcom/boldchat/visitor/api/internal/RPCMethod;

    .line 983
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 984
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->topMethod:Lcom/boldchat/visitor/api/internal/RPCMethod;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->ended:Ljava/util/Date;
    invoke-static {v1}, Lcom/boldchat/visitor/api/Chat;->access$2400(Lcom/boldchat/visitor/api/Chat;)Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_2

    .line 985
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->this$0:Lcom/boldchat/visitor/api/Chat;

    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->topMethod:Lcom/boldchat/visitor/api/internal/RPCMethod;

    invoke-virtual {v2}, Lcom/boldchat/visitor/api/internal/RPCMethod;->getMethod()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->topMethod:Lcom/boldchat/visitor/api/internal/RPCMethod;

    invoke-virtual {v3}, Lcom/boldchat/visitor/api/internal/RPCMethod;->getParams()Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Lcom/boldchat/visitor/api/Chat$MethodRetry$1;

    invoke-direct {v4, p0}, Lcom/boldchat/visitor/api/Chat$MethodRetry$1;-><init>(Lcom/boldchat/visitor/api/Chat$MethodRetry;)V

    # invokes: Lcom/boldchat/visitor/api/Chat;->callMethod(Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;)V
    invoke-static {v1, v2, v3, v4}, Lcom/boldchat/visitor/api/Chat;->access$3000(Lcom/boldchat/visitor/api/Chat;Ljava/lang/String;Ljava/util/HashMap;Lcom/boldchat/visitor/api/internal/ResultListener;)V

    .line 1010
    :goto_2
    return-void

    .line 975
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->retrySleep:J
    invoke-static {v1}, Lcom/boldchat/visitor/api/Chat;->access$2900(Lcom/boldchat/visitor/api/Chat;)J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    mul-long/2addr v2, v4

    goto :goto_0

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 983
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 1008
    :cond_2
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$MethodRetry;->this$0:Lcom/boldchat/visitor/api/Chat;

    const/4 v2, 0x0

    # setter for: Lcom/boldchat/visitor/api/Chat;->retryThread:Lcom/boldchat/visitor/api/Chat$MethodRetry;
    invoke-static {v1, v2}, Lcom/boldchat/visitor/api/Chat;->access$202(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/Chat$MethodRetry;)Lcom/boldchat/visitor/api/Chat$MethodRetry;

    goto :goto_2
.end method
