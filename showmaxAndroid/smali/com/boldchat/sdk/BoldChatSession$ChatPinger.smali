.class Lcom/boldchat/sdk/BoldChatSession$ChatPinger;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatPinger"
.end annotation


# instance fields
.field private mChat:Lcom/boldchat/visitor/api/Chat;

.field private mLastPing:J

.field private mRunning:Z

.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatSession;


# direct methods
.method public constructor <init>(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/visitor/api/Chat;)V
    .locals 2
    .param p2, "chat"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mRunning:Z

    .line 1480
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mLastPing:J

    .line 1483
    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mChat:Lcom/boldchat/visitor/api/Chat;

    .line 1484
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1495
    :goto_0
    iget-boolean v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mRunning:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mChat:Lcom/boldchat/visitor/api/Chat;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mChatPinger:Lcom/boldchat/sdk/BoldChatSession$ChatPinger;
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatSession;->access$2200(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    move-result-object v1

    if-ne v1, p0, :cond_4

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1500()Lcom/boldchat/sdk/BoldChatState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boldchat/sdk/BoldChatState;->ordinal()I

    move-result v1

    sget-object v4, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    invoke-virtual {v4}, Lcom/boldchat/sdk/BoldChatState;->ordinal()I

    move-result v4

    if-gt v1, v4, :cond_4

    .line 1496
    const-wide/16 v2, 0x1388

    .line 1497
    .local v2, "sleepTime":J
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mChat:Lcom/boldchat/visitor/api/Chat;

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mLastPing:J

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 1498
    const-string v1, "BOLD"

    const-string v4, "Pinging Chat"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mLastPing:J

    .line 1500
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mChat:Lcom/boldchat/visitor/api/Chat;

    const/4 v4, 0x0

    invoke-virtual {v1, v10, v4}, Lcom/boldchat/visitor/api/Chat;->pingChat(ZLcom/boldchat/visitor/api/ChatRecaptureListener;)V

    .line 1502
    :cond_0
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1500()Lcom/boldchat/sdk/BoldChatState;

    move-result-object v1

    sget-object v4, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mChat:Lcom/boldchat/visitor/api/Chat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/Chat;->getAnswerTimeout()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/Chat;->getStarted()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/Chat;->getAnswered()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/Chat;->getStarted()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/Chat;->getAnswerTimeout()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v8, v1

    add-long/2addr v6, v8

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 1504
    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->stopRunning()V

    .line 1505
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v1

    sget-object v4, Lcom/boldchat/sdk/BoldChatState;->ChatInactive:Lcom/boldchat/sdk/BoldChatState;

    invoke-virtual {v1, v4}, Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;)V

    .line 1506
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mChat:Lcom/boldchat/visitor/api/Chat;

    iget-object v4, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mCallBackListener:Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;
    invoke-static {v4}, Lcom/boldchat/sdk/BoldChatSession;->access$1700(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/boldchat/visitor/api/Chat;->getUnavailableForm(Lcom/boldchat/visitor/api/ChatUnavailableListener;)V

    .line 1509
    :cond_1
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mChat:Lcom/boldchat/visitor/api/Chat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/Chat;->getStarted()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/Chat;->getAnswered()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/Chat;->getEnded()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/Chat;->isTimedOut()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1510
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v1, v10}, Lcom/boldchat/sdk/BoldChatSession;->endChat(Z)V

    .line 1511
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    iget-object v4, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v5, "api#chat#disconnected"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->setStatus(Ljava/lang/String;)V
    invoke-static {v1, v4}, Lcom/boldchat/sdk/BoldChatSession;->access$2500(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V

    .line 1512
    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->stopRunning()V

    .line 1514
    :cond_2
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/Chat;->getAnswered()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1515
    const-wide/16 v2, 0x7530

    .line 1517
    :cond_3
    monitor-enter p0

    .line 1519
    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1523
    :goto_1
    :try_start_1
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1520
    :catch_0
    move-exception v0

    .line 1521
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1525
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "sleepTime":J
    :cond_4
    const-string v1, "BOLD"

    const-string v4, "Chat pinger stopped"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    return-void
.end method

.method public stopRunning()V
    .locals 1

    .prologue
    .line 1487
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->mRunning:Z

    .line 1488
    monitor-enter p0

    .line 1489
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1490
    monitor-exit p0

    .line 1491
    return-void

    .line 1490
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
