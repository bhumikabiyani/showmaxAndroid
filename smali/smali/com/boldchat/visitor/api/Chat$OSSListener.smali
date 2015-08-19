.class Lcom/boldchat/visitor/api/Chat$OSSListener;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/boldchat/visitor/api/internal/VisitorMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/visitor/api/Chat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OSSListener"
.end annotation


# instance fields
.field private isConnected:Z

.field final synthetic this$0:Lcom/boldchat/visitor/api/Chat;


# direct methods
.method private constructor <init>(Lcom/boldchat/visitor/api/Chat;)V
    .locals 1

    .prologue
    .line 763
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->isConnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/Chat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boldchat/visitor/api/Chat;
    .param p2, "x1"    # Lcom/boldchat/visitor/api/Chat$1;

    .prologue
    .line 763
    invoke-direct {p0, p1}, Lcom/boldchat/visitor/api/Chat$OSSListener;-><init>(Lcom/boldchat/visitor/api/Chat;)V

    return-void
.end method


# virtual methods
.method public addMessage(JLcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 7
    .param p1, "messageID"    # J
    .param p3, "values"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 857
    new-instance v3, Lcom/boldchat/visitor/api/Message;

    invoke-direct {v3, p1, p2, p3}, Lcom/boldchat/visitor/api/Message;-><init>(JLcom/boldchat/visitor/api/json/JSONObject;)V

    .line 858
    .local v3, "m":Lcom/boldchat/visitor/api/Message;
    iget-object v4, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->chatHistory:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/boldchat/visitor/api/Chat;->access$2100(Lcom/boldchat/visitor/api/Chat;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 859
    :try_start_0
    iget-object v4, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->chatHistory:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/boldchat/visitor/api/Chat;->access$2100(Lcom/boldchat/visitor/api/Chat;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 861
    iget-object v4, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->chatMessageListeners:Ljava/util/WeakHashMap;
    invoke-static {v4}, Lcom/boldchat/visitor/api/Chat;->access$2200(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v5

    monitor-enter v5

    .line 862
    :try_start_1
    new-instance v2, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->chatMessageListeners:Ljava/util/WeakHashMap;
    invoke-static {v4}, Lcom/boldchat/visitor/api/Chat;->access$2200(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 863
    .local v2, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatMessageListener;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boldchat/visitor/api/ChatMessageListener;

    .line 864
    .local v1, "listener":Lcom/boldchat/visitor/api/ChatMessageListener;
    invoke-interface {v1, v3}, Lcom/boldchat/visitor/api/ChatMessageListener;->onMessageAdded(Lcom/boldchat/visitor/api/Message;)V

    goto :goto_0

    .line 866
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/boldchat/visitor/api/ChatMessageListener;
    .end local v2    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatMessageListener;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 860
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 866
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatMessageListener;>;"
    :cond_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 867
    return-void
.end method

.method public autoMessage(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 871
    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->chatMessageListeners:Ljava/util/WeakHashMap;
    invoke-static {v3}, Lcom/boldchat/visitor/api/Chat;->access$2200(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v4

    monitor-enter v4

    .line 872
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->chatMessageListeners:Ljava/util/WeakHashMap;
    invoke-static {v3}, Lcom/boldchat/visitor/api/Chat;->access$2200(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 873
    .local v2, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatMessageListener;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boldchat/visitor/api/ChatMessageListener;

    .line 874
    .local v1, "listener":Lcom/boldchat/visitor/api/ChatMessageListener;
    invoke-interface {v1, p1}, Lcom/boldchat/visitor/api/ChatMessageListener;->onAutoMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 876
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/boldchat/visitor/api/ChatMessageListener;
    .end local v2    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatMessageListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatMessageListener;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 877
    return-void
.end method

.method public beginActiveAssist(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 6
    .param p1, "values"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 931
    iget-object v4, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->activeAssistListeners:Ljava/util/WeakHashMap;
    invoke-static {v4}, Lcom/boldchat/visitor/api/Chat;->access$2600(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 932
    new-instance v0, Lcom/boldchat/visitor/api/ActiveAssistSession;

    invoke-direct {v0, p1}, Lcom/boldchat/visitor/api/ActiveAssistSession;-><init>(Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 933
    .local v0, "aa":Lcom/boldchat/visitor/api/ActiveAssistSession;
    iget-object v4, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->activeAssist:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/boldchat/visitor/api/Chat;->access$2700(Lcom/boldchat/visitor/api/Chat;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/ActiveAssistSession;->getActiveAssistID()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    iget-object v4, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->activeAssistListeners:Ljava/util/WeakHashMap;
    invoke-static {v4}, Lcom/boldchat/visitor/api/Chat;->access$2600(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v5

    monitor-enter v5

    .line 935
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->activeAssistListeners:Ljava/util/WeakHashMap;
    invoke-static {v4}, Lcom/boldchat/visitor/api/Chat;->access$2600(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 936
    .local v3, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ActiveAssistListener;>;"
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boldchat/visitor/api/ActiveAssistListener;

    .line 937
    .local v2, "listener":Lcom/boldchat/visitor/api/ActiveAssistListener;
    invoke-interface {v2, v0}, Lcom/boldchat/visitor/api/ActiveAssistListener;->onBeginActiveAssist(Lcom/boldchat/visitor/api/ActiveAssistSession;)V

    goto :goto_0

    .line 939
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/boldchat/visitor/api/ActiveAssistListener;
    .end local v3    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ActiveAssistListener;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ActiveAssistListener;>;"
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 941
    .end local v0    # "aa":Lcom/boldchat/visitor/api/ActiveAssistSession;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ActiveAssistListener;>;"
    :cond_1
    return-void
.end method

.method public chatClosed(Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V
    .locals 5
    .param p1, "messageProcessor"    # Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    .prologue
    .line 917
    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->ended:Ljava/util/Date;
    invoke-static {v3}, Lcom/boldchat/visitor/api/Chat;->access$2400(Lcom/boldchat/visitor/api/Chat;)Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_0

    .line 918
    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    # setter for: Lcom/boldchat/visitor/api/Chat;->ended:Ljava/util/Date;
    invoke-static {v3, v4}, Lcom/boldchat/visitor/api/Chat;->access$2402(Lcom/boldchat/visitor/api/Chat;Ljava/util/Date;)Ljava/util/Date;

    .line 919
    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    sget-object v4, Lcom/boldchat/visitor/api/EndedReason;->Disconnected:Lcom/boldchat/visitor/api/EndedReason;

    # setter for: Lcom/boldchat/visitor/api/Chat;->endedReason:Lcom/boldchat/visitor/api/EndedReason;
    invoke-static {v3, v4}, Lcom/boldchat/visitor/api/Chat;->access$2502(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/EndedReason;)Lcom/boldchat/visitor/api/EndedReason;

    .line 921
    :cond_0
    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->chatListeners:Ljava/util/WeakHashMap;
    invoke-static {v3}, Lcom/boldchat/visitor/api/Chat;->access$1800(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v4

    monitor-enter v4

    .line 922
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->chatListeners:Ljava/util/WeakHashMap;
    invoke-static {v3}, Lcom/boldchat/visitor/api/Chat;->access$1800(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 923
    .local v2, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatListener;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boldchat/visitor/api/ChatListener;

    .line 924
    .local v1, "listener":Lcom/boldchat/visitor/api/ChatListener;
    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    invoke-interface {v1, v3}, Lcom/boldchat/visitor/api/ChatListener;->onChatUpdated(Lcom/boldchat/visitor/api/Chat;)V

    goto :goto_0

    .line 926
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/boldchat/visitor/api/ChatListener;
    .end local v2    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatListener;>;"
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 927
    return-void
.end method

.method public heartbeat()V
    .locals 4

    .prologue
    .line 961
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/boldchat/visitor/api/Chat;->lastHeartbeat:J
    invoke-static {v0, v2, v3}, Lcom/boldchat/visitor/api/Chat;->access$2802(Lcom/boldchat/visitor/api/Chat;J)J

    .line 962
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 767
    iget-boolean v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->isConnected:Z

    return v0
.end method

.method public onClose(ILjava/lang/String;ZLcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "remote"    # Z
    .param p4, "messageProcessor"    # Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    .prologue
    const/4 v4, 0x0

    .line 893
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->isConnected:Z

    .line 894
    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->webSocket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;
    invoke-static {v3}, Lcom/boldchat/visitor/api/Chat;->access$1200(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    move-result-object v3

    if-ne p4, v3, :cond_1

    .line 895
    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # setter for: Lcom/boldchat/visitor/api/Chat;->webSocket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;
    invoke-static {v3, v4}, Lcom/boldchat/visitor/api/Chat;->access$1202(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorWebSocket;)Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    .line 899
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->activeMessageProcessor:Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;
    invoke-static {v3}, Lcom/boldchat/visitor/api/Chat;->access$700(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    move-result-object v3

    if-ne v3, p4, :cond_3

    const/16 v3, -0x64

    if-ne p1, v3, :cond_3

    .line 900
    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->chatListeners:Ljava/util/WeakHashMap;
    invoke-static {v3}, Lcom/boldchat/visitor/api/Chat;->access$1800(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v4

    monitor-enter v4

    .line 901
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->chatListeners:Ljava/util/WeakHashMap;
    invoke-static {v3}, Lcom/boldchat/visitor/api/Chat;->access$1800(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 902
    .local v2, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatListener;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boldchat/visitor/api/ChatListener;

    .line 903
    .local v1, "listener":Lcom/boldchat/visitor/api/ChatListener;
    invoke-interface {v1, p1, p2}, Lcom/boldchat/visitor/api/ChatListener;->onChatFatalError(ILjava/lang/String;)V

    goto :goto_1

    .line 905
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/boldchat/visitor/api/ChatListener;
    .end local v2    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 896
    :cond_1
    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->longPollSocket:Lcom/boldchat/visitor/api/internal/VisitorLongPoll;
    invoke-static {v3}, Lcom/boldchat/visitor/api/Chat;->access$900(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    move-result-object v3

    if-ne p4, v3, :cond_0

    .line 897
    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # setter for: Lcom/boldchat/visitor/api/Chat;->longPollSocket:Lcom/boldchat/visitor/api/internal/VisitorLongPoll;
    invoke-static {v3, v4}, Lcom/boldchat/visitor/api/Chat;->access$902(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorLongPoll;)Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    goto :goto_0

    .line 905
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatListener;>;"
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 907
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatListener;>;"
    :cond_3
    return-void
.end method

.method public onError(Ljava/lang/Exception;Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "messageProcessor"    # Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    .prologue
    .line 912
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 913
    return-void
.end method

.method public onOpen(Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V
    .locals 2
    .param p1, "messageProcessor"    # Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    .prologue
    .line 773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->isConnected:Z

    .line 774
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->webSocket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;
    invoke-static {v0}, Lcom/boldchat/visitor/api/Chat;->access$1200(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 775
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->webSocket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;
    invoke-static {v1}, Lcom/boldchat/visitor/api/Chat;->access$1200(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    move-result-object v1

    # setter for: Lcom/boldchat/visitor/api/Chat;->activeMessageProcessor:Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;
    invoke-static {v0, v1}, Lcom/boldchat/visitor/api/Chat;->access$702(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->activeMessageProcessor:Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;
    invoke-static {v0}, Lcom/boldchat/visitor/api/Chat;->access$700(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->activeMessageProcessor:Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;
    invoke-static {v0}, Lcom/boldchat/visitor/api/Chat;->access$700(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    move-result-object v0

    instance-of v0, v0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    if-eqz v0, :cond_0

    .line 777
    :cond_2
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # setter for: Lcom/boldchat/visitor/api/Chat;->activeMessageProcessor:Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;
    invoke-static {v0, p1}, Lcom/boldchat/visitor/api/Chat;->access$702(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    goto :goto_0
.end method

.method public onReconnecting(Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V
    .locals 1
    .param p1, "messageProcessor"    # Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    .prologue
    .line 783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->isConnected:Z

    .line 784
    return-void
.end method

.method public redirect(Ljava/lang/String;Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "messageProcessor"    # Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    .prologue
    const/4 v2, 0x0

    .line 788
    invoke-virtual {p2}, Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;->close()Z

    .line 789
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->activeMessageProcessor:Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;
    invoke-static {v1}, Lcom/boldchat/visitor/api/Chat;->access$700(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    move-result-object v0

    .line 790
    .local v0, "oldActiveProcessor":Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->webSocket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;
    invoke-static {v1}, Lcom/boldchat/visitor/api/Chat;->access$1200(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 791
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # setter for: Lcom/boldchat/visitor/api/Chat;->webSocketURL:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/boldchat/visitor/api/Chat;->access$1302(Lcom/boldchat/visitor/api/Chat;Ljava/lang/String;)Ljava/lang/String;

    .line 792
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # setter for: Lcom/boldchat/visitor/api/Chat;->webSocket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;
    invoke-static {v1, v2}, Lcom/boldchat/visitor/api/Chat;->access$1202(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorWebSocket;)Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    .line 793
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # invokes: Lcom/boldchat/visitor/api/Chat;->connectWebSocket()V
    invoke-static {v1}, Lcom/boldchat/visitor/api/Chat;->access$1400(Lcom/boldchat/visitor/api/Chat;)V

    .line 794
    if-ne v0, p2, :cond_0

    .line 795
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->webSocket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;
    invoke-static {v2}, Lcom/boldchat/visitor/api/Chat;->access$1200(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    move-result-object v2

    # setter for: Lcom/boldchat/visitor/api/Chat;->activeMessageProcessor:Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;
    invoke-static {v1, v2}, Lcom/boldchat/visitor/api/Chat;->access$702(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->longPollSocket:Lcom/boldchat/visitor/api/internal/VisitorLongPoll;
    invoke-static {v1}, Lcom/boldchat/visitor/api/Chat;->access$900(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    move-result-object v1

    if-ne p2, v1, :cond_0

    .line 798
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # setter for: Lcom/boldchat/visitor/api/Chat;->longPollURL:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/boldchat/visitor/api/Chat;->access$1502(Lcom/boldchat/visitor/api/Chat;Ljava/lang/String;)Ljava/lang/String;

    .line 799
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # setter for: Lcom/boldchat/visitor/api/Chat;->longPollSocket:Lcom/boldchat/visitor/api/internal/VisitorLongPoll;
    invoke-static {v1, v2}, Lcom/boldchat/visitor/api/Chat;->access$902(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorLongPoll;)Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    .line 800
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # invokes: Lcom/boldchat/visitor/api/Chat;->connectLongPoll()V
    invoke-static {v1}, Lcom/boldchat/visitor/api/Chat;->access$800(Lcom/boldchat/visitor/api/Chat;)V

    .line 801
    if-ne v0, p2, :cond_0

    .line 802
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->longPollSocket:Lcom/boldchat/visitor/api/internal/VisitorLongPoll;
    invoke-static {v2}, Lcom/boldchat/visitor/api/Chat;->access$900(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    move-result-object v2

    # setter for: Lcom/boldchat/visitor/api/Chat;->activeMessageProcessor:Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;
    invoke-static {v1, v2}, Lcom/boldchat/visitor/api/Chat;->access$702(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    goto :goto_0
.end method

.method public reset(Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)V
    .locals 4
    .param p1, "messageProcessor"    # Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    .prologue
    const/4 v1, 0x0

    .line 809
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->webSocket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;
    invoke-static {v0}, Lcom/boldchat/visitor/api/Chat;->access$1200(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->webSocket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;
    invoke-static {v0}, Lcom/boldchat/visitor/api/Chat;->access$1200(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/internal/VisitorWebSocket;->close()Z

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->longPollSocket:Lcom/boldchat/visitor/api/internal/VisitorLongPoll;
    invoke-static {v0}, Lcom/boldchat/visitor/api/Chat;->access$900(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->longPollSocket:Lcom/boldchat/visitor/api/internal/VisitorLongPoll;
    invoke-static {v0}, Lcom/boldchat/visitor/api/Chat;->access$900(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->close()Z

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # setter for: Lcom/boldchat/visitor/api/Chat;->webSocket:Lcom/boldchat/visitor/api/internal/VisitorWebSocket;
    invoke-static {v0, v1}, Lcom/boldchat/visitor/api/Chat;->access$1202(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorWebSocket;)Lcom/boldchat/visitor/api/internal/VisitorWebSocket;

    .line 814
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # setter for: Lcom/boldchat/visitor/api/Chat;->longPollSocket:Lcom/boldchat/visitor/api/internal/VisitorLongPoll;
    invoke-static {v0, v1}, Lcom/boldchat/visitor/api/Chat;->access$902(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorLongPoll;)Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    .line 815
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # setter for: Lcom/boldchat/visitor/api/Chat;->activeMessageProcessor:Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;
    invoke-static {v0, v1}, Lcom/boldchat/visitor/api/Chat;->access$702(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    .line 816
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    const-wide/16 v2, 0x0

    # setter for: Lcom/boldchat/visitor/api/Chat;->clientID:J
    invoke-static {v0, v2, v3}, Lcom/boldchat/visitor/api/Chat;->access$1602(Lcom/boldchat/visitor/api/Chat;J)J

    .line 817
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # setter for: Lcom/boldchat/visitor/api/Chat;->webSocketURL:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boldchat/visitor/api/Chat;->access$1302(Lcom/boldchat/visitor/api/Chat;Ljava/lang/String;)Ljava/lang/String;

    .line 818
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # setter for: Lcom/boldchat/visitor/api/Chat;->longPollURL:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boldchat/visitor/api/Chat;->access$1502(Lcom/boldchat/visitor/api/Chat;Ljava/lang/String;)Ljava/lang/String;

    .line 819
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v0, v1}, Lcom/boldchat/visitor/api/Chat;->startChat(Lcom/boldchat/visitor/api/ChatStartListener;)V

    .line 820
    return-void
.end method

.method public updateActiveAssist(JLcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 7
    .param p1, "activeAssistID"    # J
    .param p3, "values"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 945
    iget-object v4, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->activeAssistListeners:Ljava/util/WeakHashMap;
    invoke-static {v4}, Lcom/boldchat/visitor/api/Chat;->access$2600(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 946
    iget-object v4, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->activeAssist:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/boldchat/visitor/api/Chat;->access$2700(Lcom/boldchat/visitor/api/Chat;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boldchat/visitor/api/ActiveAssistSession;

    .line 947
    .local v0, "aa":Lcom/boldchat/visitor/api/ActiveAssistSession;
    if-eqz v0, :cond_1

    .line 948
    invoke-virtual {v0, p3}, Lcom/boldchat/visitor/api/ActiveAssistSession;->updateValues(Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 949
    iget-object v4, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->activeAssistListeners:Ljava/util/WeakHashMap;
    invoke-static {v4}, Lcom/boldchat/visitor/api/Chat;->access$2600(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v5

    monitor-enter v5

    .line 950
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->activeAssistListeners:Ljava/util/WeakHashMap;
    invoke-static {v4}, Lcom/boldchat/visitor/api/Chat;->access$2600(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 951
    .local v3, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ActiveAssistListener;>;"
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boldchat/visitor/api/ActiveAssistListener;

    .line 952
    .local v2, "listener":Lcom/boldchat/visitor/api/ActiveAssistListener;
    invoke-interface {v2, v0}, Lcom/boldchat/visitor/api/ActiveAssistListener;->onActiveAssistUpdated(Lcom/boldchat/visitor/api/ActiveAssistSession;)V

    goto :goto_0

    .line 954
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/boldchat/visitor/api/ActiveAssistListener;
    .end local v3    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ActiveAssistListener;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ActiveAssistListener;>;"
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 957
    .end local v0    # "aa":Lcom/boldchat/visitor/api/ActiveAssistSession;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ActiveAssistListener;>;"
    :cond_1
    return-void
.end method

.method public updateBusy(Lcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 7
    .param p1, "values"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 881
    const-string v5, "Position"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Lcom/boldchat/visitor/api/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 882
    .local v3, "position":I
    const-string v5, "UnavailableFormEnabled"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lcom/boldchat/visitor/api/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 883
    .local v4, "unavailableFormEnabled":Z
    iget-object v5, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->chatQueueListeners:Ljava/util/WeakHashMap;
    invoke-static {v5}, Lcom/boldchat/visitor/api/Chat;->access$2300(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v6

    monitor-enter v6

    .line 884
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->chatQueueListeners:Ljava/util/WeakHashMap;
    invoke-static {v5}, Lcom/boldchat/visitor/api/Chat;->access$2300(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 885
    .local v2, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatQueueListener;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boldchat/visitor/api/ChatQueueListener;

    .line 886
    .local v1, "listener":Lcom/boldchat/visitor/api/ChatQueueListener;
    invoke-interface {v1, v3, v4}, Lcom/boldchat/visitor/api/ChatQueueListener;->onUpdateQueue(IZ)V

    goto :goto_0

    .line 888
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/boldchat/visitor/api/ChatQueueListener;
    .end local v2    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatQueueListener;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatQueueListener;>;"
    :cond_0
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 889
    return-void
.end method

.method public updateChat(JLcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 7
    .param p1, "chatID"    # J
    .param p3, "values"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 824
    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->chatID:J
    invoke-static {v3}, Lcom/boldchat/visitor/api/Chat;->access$1700(Lcom/boldchat/visitor/api/Chat;)J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-nez v3, :cond_1

    .line 825
    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # invokes: Lcom/boldchat/visitor/api/Chat;->updateChatValues(Lcom/boldchat/visitor/api/json/JSONObject;)V
    invoke-static {v3, p3}, Lcom/boldchat/visitor/api/Chat;->access$1100(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/json/JSONObject;)V

    .line 826
    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->chatListeners:Ljava/util/WeakHashMap;
    invoke-static {v3}, Lcom/boldchat/visitor/api/Chat;->access$1800(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v4

    monitor-enter v4

    .line 827
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->chatListeners:Ljava/util/WeakHashMap;
    invoke-static {v3}, Lcom/boldchat/visitor/api/Chat;->access$1800(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 828
    .local v2, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatListener;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boldchat/visitor/api/ChatListener;

    .line 829
    .local v1, "listener":Lcom/boldchat/visitor/api/ChatListener;
    iget-object v3, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    invoke-interface {v1, v3}, Lcom/boldchat/visitor/api/ChatListener;->onChatUpdated(Lcom/boldchat/visitor/api/Chat;)V

    goto :goto_0

    .line 831
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/boldchat/visitor/api/ChatListener;
    .end local v2    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatListener;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 833
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatListener;>;"
    :cond_1
    return-void
.end method

.method public updateTyper(JLcom/boldchat/visitor/api/json/JSONObject;)V
    .locals 9
    .param p1, "personID"    # J
    .param p3, "values"    # Lcom/boldchat/visitor/api/json/JSONObject;

    .prologue
    .line 837
    const/4 v4, 0x0

    .line 838
    .local v4, "typer":Lcom/boldchat/visitor/api/Typer;
    iget-object v6, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->typers:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/boldchat/visitor/api/Chat;->access$1900(Lcom/boldchat/visitor/api/Chat;)Ljava/util/HashMap;

    move-result-object v7

    monitor-enter v7

    .line 839
    :try_start_0
    iget-object v6, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->typers:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/boldchat/visitor/api/Chat;->access$1900(Lcom/boldchat/visitor/api/Chat;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/boldchat/visitor/api/Typer;

    move-object v4, v0

    .line 840
    if-nez v4, :cond_0

    .line 841
    new-instance v5, Lcom/boldchat/visitor/api/Typer;

    invoke-direct {v5, p1, p2, p3}, Lcom/boldchat/visitor/api/Typer;-><init>(JLcom/boldchat/visitor/api/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 842
    .end local v4    # "typer":Lcom/boldchat/visitor/api/Typer;
    .local v5, "typer":Lcom/boldchat/visitor/api/Typer;
    :try_start_1
    iget-object v6, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->typers:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/boldchat/visitor/api/Chat;->access$1900(Lcom/boldchat/visitor/api/Chat;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, v5

    .line 846
    .end local v5    # "typer":Lcom/boldchat/visitor/api/Typer;
    .restart local v4    # "typer":Lcom/boldchat/visitor/api/Typer;
    :goto_0
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 847
    iget-object v6, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->chatTyperListeners:Ljava/util/WeakHashMap;
    invoke-static {v6}, Lcom/boldchat/visitor/api/Chat;->access$2000(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v7

    monitor-enter v7

    .line 848
    :try_start_3
    new-instance v3, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/boldchat/visitor/api/Chat$OSSListener;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->chatTyperListeners:Ljava/util/WeakHashMap;
    invoke-static {v6}, Lcom/boldchat/visitor/api/Chat;->access$2000(Lcom/boldchat/visitor/api/Chat;)Ljava/util/WeakHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 849
    .local v3, "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatTyperListener;>;"
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boldchat/visitor/api/ChatTyperListener;

    .line 850
    .local v2, "listener":Lcom/boldchat/visitor/api/ChatTyperListener;
    invoke-interface {v2, v4}, Lcom/boldchat/visitor/api/ChatTyperListener;->onTyperUpdated(Lcom/boldchat/visitor/api/Typer;)V

    goto :goto_1

    .line 852
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/boldchat/visitor/api/ChatTyperListener;
    .end local v3    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatTyperListener;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 844
    :cond_0
    :try_start_4
    invoke-virtual {v4, p3}, Lcom/boldchat/visitor/api/Typer;->update(Lcom/boldchat/visitor/api/json/JSONObject;)V

    goto :goto_0

    .line 846
    :catchall_1
    move-exception v6

    :goto_2
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 852
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatTyperListener;>;"
    :cond_1
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 853
    return-void

    .line 846
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "listeners":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/boldchat/visitor/api/ChatTyperListener;>;"
    .end local v4    # "typer":Lcom/boldchat/visitor/api/Typer;
    .restart local v5    # "typer":Lcom/boldchat/visitor/api/Typer;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "typer":Lcom/boldchat/visitor/api/Typer;
    .restart local v4    # "typer":Lcom/boldchat/visitor/api/Typer;
    goto :goto_2
.end method
