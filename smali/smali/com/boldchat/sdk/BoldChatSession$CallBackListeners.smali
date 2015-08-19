.class Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;
.implements Lcom/boldchat/visitor/api/ChatFinishedListener;
.implements Lcom/boldchat/visitor/api/ChatListener;
.implements Lcom/boldchat/visitor/api/ChatMessageListener;
.implements Lcom/boldchat/visitor/api/ChatQueueListener;
.implements Lcom/boldchat/visitor/api/ChatStartListener;
.implements Lcom/boldchat/visitor/api/ChatTyperListener;
.implements Lcom/boldchat/visitor/api/ChatUnavailableListener;
.implements Lcom/boldchat/visitor/api/CreateChatListener;
.implements Lcom/boldchat/visitor/api/PostChatSubmitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallBackListeners"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatSession;


# direct methods
.method private constructor <init>(Lcom/boldchat/sdk/BoldChatSession;)V
    .locals 0

    .prologue
    .line 916
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatSession$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p2, "x1"    # Lcom/boldchat/sdk/BoldChatSession$1;

    .prologue
    .line 916
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;-><init>(Lcom/boldchat/sdk/BoldChatSession;)V

    return-void
.end method


# virtual methods
.method public historyPageLoaded()V
    .locals 5

    .prologue
    .line 1333
    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const/4 v4, 0x1

    # setter for: Lcom/boldchat/sdk/BoldChatSession;->mPageIsLoaded:Z
    invoke-static {v3, v4}, Lcom/boldchat/sdk/BoldChatSession;->access$3402(Lcom/boldchat/sdk/BoldChatSession;Z)Z

    .line 1334
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v3

    if-eqz v3, :cond_2

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1500()Lcom/boldchat/sdk/BoldChatState;

    move-result-object v3

    sget-object v4, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    if-eq v3, v4, :cond_0

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1500()Lcom/boldchat/sdk/BoldChatState;

    move-result-object v3

    sget-object v4, Lcom/boldchat/sdk/BoldChatState;->ChatInactive:Lcom/boldchat/sdk/BoldChatState;

    if-ne v3, v4, :cond_2

    .line 1335
    :cond_0
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/boldchat/visitor/api/Chat;->getChatHistory()Ljava/util/List;

    move-result-object v0

    .line 1336
    .local v0, "history":Ljava/util/List;, "Ljava/util/List<Lcom/boldchat/visitor/api/Message;>;"
    monitor-enter v0

    .line 1337
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boldchat/visitor/api/Message;

    .line 1338
    .local v2, "m":Lcom/boldchat/visitor/api/Message;
    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const/4 v4, 0x0

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->addMessage(Lcom/boldchat/visitor/api/Message;Z)V
    invoke-static {v3, v2, v4}, Lcom/boldchat/sdk/BoldChatSession;->access$3000(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/visitor/api/Message;Z)V

    goto :goto_0

    .line 1340
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/boldchat/visitor/api/Message;
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1342
    .end local v0    # "history":Ljava/util/List;, "Ljava/util/List<Lcom/boldchat/visitor/api/Message;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sStatus:Ljava/lang/String;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$3500()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->setStatus(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/boldchat/sdk/BoldChatSession;->access$2500(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V

    .line 1343
    return-void
.end method

.method public onAutoMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1185
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/Chat;->getAnswered()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/Chat;->getEnded()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->setStatus(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/boldchat/sdk/BoldChatSession;->access$2500(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V

    .line 1188
    :cond_0
    return-void
.end method

.method public onChatCreateFailed(ILjava/lang/String;)V
    .locals 3
    .param p1, "failType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 979
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v2, "api#generic#network_failed"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "message":Ljava/lang/String;
    :cond_0
    # invokes: Lcom/boldchat/sdk/BoldChatSession;->fatalError(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/boldchat/sdk/BoldChatSession;->access$2700(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V

    .line 980
    return-void
.end method

.method public onChatCreated(Lcom/boldchat/visitor/api/PreChat;Lcom/boldchat/visitor/api/Chat;)V
    .locals 8
    .param p1, "preChat"    # Lcom/boldchat/visitor/api/PreChat;
    .param p2, "chat"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 924
    # setter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {p2}, Lcom/boldchat/sdk/BoldChatSession;->access$402(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/Chat;

    .line 926
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/Chat;->getBrandings()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->setBrandings(Ljava/util/Map;)V

    .line 929
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mBoldChatSessionListener:Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatSession;->access$100(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->setListener(Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;)V

    .line 931
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mBoldChatSessionListener:Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$100(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    new-instance v1, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$1;

    invoke-direct {v1, p0}, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$1;-><init>(Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;)V

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->runMain(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->access$2400(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/Runnable;)V

    .line 939
    :cond_0
    if-nez p1, :cond_2

    .line 940
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;)V

    .line 941
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v2, "api#chat#waiting_for_operator"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->setStatus(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->access$2500(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V

    .line 942
    invoke-virtual {p2, p0}, Lcom/boldchat/visitor/api/Chat;->startChat(Lcom/boldchat/visitor/api/ChatStartListener;)V

    .line 953
    :goto_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mChatPinger:Lcom/boldchat/sdk/BoldChatSession$ChatPinger;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$2200(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    move-result-object v0

    if-nez v0, :cond_1

    .line 954
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    new-instance v1, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-direct {v1, v2, p2}, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;-><init>(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/visitor/api/Chat;)V

    # setter for: Lcom/boldchat/sdk/BoldChatSession;->mChatPinger:Lcom/boldchat/sdk/BoldChatSession$ChatPinger;
    invoke-static {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->access$2202(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatSession$ChatPinger;)Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    .line 955
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mChatPinger:Lcom/boldchat/sdk/BoldChatSession$ChatPinger;
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatSession;->access$2200(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 957
    :cond_1
    return-void

    .line 944
    :cond_2
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->PreChat:Lcom/boldchat/sdk/BoldChatState;

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v3, "api#prechat#intro"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "api#prechat#intro"

    iget-object v4, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v5, "api#prechat#start"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "api#prechat#start"

    new-instance v7, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$2;

    invoke-direct {v7, p0, p2}, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$2;-><init>(Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;Lcom/boldchat/visitor/api/Chat;)V

    move-object v6, p1

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->showForm(Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V
    invoke-static/range {v0 .. v7}, Lcom/boldchat/sdk/BoldChatSession;->access$2600(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V

    goto :goto_0
.end method

.method public onChatFatalError(ILjava/lang/String;)V
    .locals 3
    .param p1, "failType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1082
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v2, "api#generic#network_failed"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->setStatus(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->access$2500(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V

    .line 1087
    :goto_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->endChat(Z)V

    .line 1088
    return-void

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->setStatus(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/boldchat/sdk/BoldChatSession;->access$2500(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onChatFinished(Lcom/boldchat/visitor/api/PostChat;)V
    .locals 7
    .param p1, "postChat"    # Lcom/boldchat/visitor/api/PostChat;

    .prologue
    const/4 v3, 0x1

    .line 1133
    if-nez p1, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->Finished:Lcom/boldchat/sdk/BoldChatState;

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;)V

    .line 1135
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatSession;->closeChat()V

    .line 1155
    :goto_0
    return-void

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v1, "api#postchat#intro"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1138
    .local v2, "intro":Ljava/lang/String;
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lcom/boldchat/visitor/api/PostChat;->getFormField(Ljava/lang/String;)Lcom/boldchat/visitor/api/FormField;

    move-result-object v6

    .line 1139
    .local v6, "emailTranscript":Lcom/boldchat/visitor/api/FormField;
    if-eqz v6, :cond_1

    .line 1140
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v1, "api#email#transcript"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/boldchat/visitor/api/FormField;->setAdditionalHeading(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {v6, v3}, Lcom/boldchat/visitor/api/FormField;->setFloatToTop(Z)V

    .line 1142
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/PostChat;->getFormFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1144
    const/4 v2, 0x0

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->PostChat:Lcom/boldchat/sdk/BoldChatState;

    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v4, "api#chat#close"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$6;

    invoke-direct {v5, p0}, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$6;-><init>(Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;)V

    move-object v4, p1

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->showForm(Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V
    invoke-static/range {v0 .. v5}, Lcom/boldchat/sdk/BoldChatSession;->access$2800(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V

    goto :goto_0
.end method

.method public onChatStartFailed(ILjava/lang/String;)V
    .locals 2
    .param p1, "failType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->getTypingTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->getTypingTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->ChatInactive:Lcom/boldchat/sdk/BoldChatState;

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;)V

    .line 1028
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->setStatus(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/boldchat/sdk/BoldChatSession;->access$2500(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->endChat(Z)V

    .line 1030
    return-void
.end method

.method public onChatStarted()V
    .locals 2

    .prologue
    .line 987
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;)V

    .line 988
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v0

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/Chat;->getBrandings()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->setBrandings(Ljava/util/Map;)V

    .line 990
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    new-instance v1, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$3;

    invoke-direct {v1, p0}, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$3;-><init>(Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;)V

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->runMain(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->access$2400(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/Runnable;)V

    .line 1015
    return-void
.end method

.method public onChatUnavailable(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/UnavailableReason;Lcom/boldchat/visitor/api/UnavailableForm;Ljava/util/Map;)V
    .locals 0
    .param p1, "chat"    # Lcom/boldchat/visitor/api/Chat;
    .param p2, "unavailableReason"    # Lcom/boldchat/visitor/api/UnavailableReason;
    .param p3, "unavailableForm"    # Lcom/boldchat/visitor/api/UnavailableForm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/boldchat/visitor/api/Chat;",
            "Lcom/boldchat/visitor/api/UnavailableReason;",
            "Lcom/boldchat/visitor/api/UnavailableForm;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 968
    .local p4, "brandings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    # setter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {p1}, Lcom/boldchat/sdk/BoldChatSession;->access$402(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/Chat;

    .line 969
    invoke-virtual {p0, p2, p3}, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->onChatUnavailable(Lcom/boldchat/visitor/api/UnavailableReason;Lcom/boldchat/visitor/api/UnavailableForm;)V

    .line 970
    return-void
.end method

.method public onChatUnavailable(Lcom/boldchat/visitor/api/UnavailableForm;)V
    .locals 7
    .param p1, "unavailableForm"    # Lcom/boldchat/visitor/api/UnavailableForm;

    .prologue
    .line 1306
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/UnavailableForm;->getFormFields()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/boldchat/visitor/api/UnavailableForm;->getFormFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v6, "api#unavailable#no_operators"

    .line 1307
    .local v6, "titleKey":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->UnavailableChat:Lcom/boldchat/sdk/BoldChatState;

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v6}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v4, "api#chat#send"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$11;

    invoke-direct {v5, p0, p1}, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$11;-><init>(Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;Lcom/boldchat/visitor/api/UnavailableForm;)V

    move-object v4, p1

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->showForm(Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V
    invoke-static/range {v0 .. v5}, Lcom/boldchat/sdk/BoldChatSession;->access$2800(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V

    .line 1319
    return-void

    .line 1306
    .end local v6    # "titleKey":Ljava/lang/String;
    :cond_1
    const-string v6, "api#unavailable#intro"

    goto :goto_0
.end method

.method public onChatUnavailable(Lcom/boldchat/visitor/api/UnavailableReason;Lcom/boldchat/visitor/api/UnavailableForm;)V
    .locals 7
    .param p1, "unavailableReason"    # Lcom/boldchat/visitor/api/UnavailableReason;
    .param p2, "unavailableForm"    # Lcom/boldchat/visitor/api/UnavailableForm;

    .prologue
    .line 1039
    const-string v6, "api#unavailable#intro"

    .line 1040
    .local v6, "titleKey":Ljava/lang/String;
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/boldchat/visitor/api/UnavailableForm;->getFormFields()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/boldchat/visitor/api/UnavailableForm;->getFormFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1041
    :cond_0
    sget-object v0, Lcom/boldchat/sdk/BoldChatSession$8;->$SwitchMap$com$boldchat$visitor$api$UnavailableReason:[I

    invoke-virtual {p1}, Lcom/boldchat/visitor/api/UnavailableReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1046
    const-string v6, "api#unavailable#no_operators"

    .line 1050
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/boldchat/visitor/api/UnavailableForm;->getFormFields()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/boldchat/visitor/api/UnavailableForm;->getFormFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1051
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->UnavailableChat:Lcom/boldchat/sdk/BoldChatState;

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v6}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v4, "api#chat#send"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$4;

    invoke-direct {v5, p0, p2}, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$4;-><init>(Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;Lcom/boldchat/visitor/api/UnavailableForm;)V

    move-object v4, p2

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->showForm(Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V
    invoke-static/range {v0 .. v5}, Lcom/boldchat/sdk/BoldChatSession;->access$2800(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V

    .line 1072
    :goto_1
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->endChat(Z)V

    .line 1073
    return-void

    .line 1043
    :pswitch_0
    const-string v6, "api#unsecure#message"

    .line 1044
    goto :goto_0

    .line 1065
    :cond_2
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->Finished:Lcom/boldchat/sdk/BoldChatState;

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v6}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v4, "api#chat#close"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$5;

    invoke-direct {v5, p0}, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$5;-><init>(Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;)V

    move-object v4, p2

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->showForm(Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V
    invoke-static/range {v0 .. v5}, Lcom/boldchat/sdk/BoldChatSession;->access$2800(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V

    goto :goto_1

    .line 1041
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onChatUnavailableFailed(ILjava/lang/String;)V
    .locals 3
    .param p1, "failType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v2, "api#generic#network_failed"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "message":Ljava/lang/String;
    :cond_0
    # invokes: Lcom/boldchat/sdk/BoldChatSession;->fatalError(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/boldchat/sdk/BoldChatSession;->access$2700(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V

    .line 1329
    return-void
.end method

.method public onChatUpdated(Lcom/boldchat/visitor/api/Chat;)V
    .locals 6
    .param p1, "chat"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    const-wide/16 v4, 0x0

    .line 1096
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mVisitorID:J
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatSession;->access$2000(Lcom/boldchat/sdk/BoldChatSession;)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Lcom/boldchat/visitor/api/Chat;->getVisitorID()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 1097
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {p1}, Lcom/boldchat/visitor/api/Chat;->getVisitorID()J

    move-result-wide v2

    # setter for: Lcom/boldchat/sdk/BoldChatSession;->mVisitorID:J
    invoke-static {v1, v2, v3}, Lcom/boldchat/sdk/BoldChatSession;->access$2002(Lcom/boldchat/sdk/BoldChatSession;J)J

    .line 1098
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatSession;->access$1100(Lcom/boldchat/sdk/BoldChatSession;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1099
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getVisitorKey()Ljava/lang/String;
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatSession;->access$2100(Lcom/boldchat/sdk/BoldChatSession;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mVisitorID:J
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$2000(Lcom/boldchat/sdk/BoldChatSession;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1103
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/Chat;->isEnded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1104
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/Chat;->getEndedReason()Lcom/boldchat/visitor/api/EndedReason;

    move-result-object v1

    sget-object v2, Lcom/boldchat/visitor/api/EndedReason;->Operator:Lcom/boldchat/visitor/api/EndedReason;

    if-ne v1, v2, :cond_2

    .line 1105
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v3, "api#chat#operator_ended"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->setStatus(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/boldchat/sdk/BoldChatSession;->access$2500(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V

    .line 1109
    :goto_0
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1500()Lcom/boldchat/sdk/BoldChatState;

    move-result-object v1

    sget-object v2, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    if-ne v1, v2, :cond_1

    .line 1110
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/boldchat/sdk/BoldChatSession;->endChat(Z)V

    .line 1116
    :cond_1
    :goto_1
    return-void

    .line 1107
    :cond_2
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v3, "api#chat#ended"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->setStatus(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/boldchat/sdk/BoldChatSession;->access$2500(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V

    goto :goto_0

    .line 1112
    :cond_3
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1500()Lcom/boldchat/sdk/BoldChatState;

    move-result-object v1

    sget-object v2, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/boldchat/visitor/api/Chat;->getAnswered()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1113
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->updateTypingLabel()V
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatSession;->access$2900(Lcom/boldchat/sdk/BoldChatSession;)V

    .line 1114
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const/4 v2, 0x0

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->setStatus(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/boldchat/sdk/BoldChatSession;->access$2500(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 1196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/boldchat/sdk/R$id;->bc_send_button:I

    if-ne v0, v1, :cond_1

    .line 1197
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->send()V
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$3100(Lcom/boldchat/sdk/BoldChatSession;)V

    .line 1198
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mHideKeyboardOnSend:Z
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$900(Lcom/boldchat/sdk/BoldChatSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    new-instance v1, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$8;

    invoke-direct {v1, p0}, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$8;-><init>(Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;)V

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->runMain(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->access$2400(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/Runnable;)V

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/boldchat/sdk/R$id;->bc_end_chat:I

    if-ne v0, v1, :cond_2

    .line 1210
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v0, v2}, Lcom/boldchat/sdk/BoldChatSession;->endChat(Z)V

    .line 1211
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mChatPinger:Lcom/boldchat/sdk/BoldChatSession$ChatPinger;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$2200(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mChatPinger:Lcom/boldchat/sdk/BoldChatSession$ChatPinger;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$2200(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$ChatPinger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatSession$ChatPinger;->stopRunning()V

    goto :goto_0

    .line 1214
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/boldchat/sdk/R$id;->bc_close_button:I

    if-ne v0, v1, :cond_5

    .line 1215
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v0

    if-eqz v0, :cond_3

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/Chat;->getStarted()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1216
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v0, v2}, Lcom/boldchat/sdk/BoldChatSession;->endChat(Z)V

    goto :goto_0

    .line 1218
    :cond_3
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$1500()Lcom/boldchat/sdk/BoldChatState;

    move-result-object v0

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->ChatInactive:Lcom/boldchat/sdk/BoldChatState;

    if-ne v0, v1, :cond_4

    .line 1219
    sget-object v0, Lcom/boldchat/sdk/BoldChatState;->Finished:Lcom/boldchat/sdk/BoldChatState;

    # setter for: Lcom/boldchat/sdk/BoldChatSession;->sCurrentState:Lcom/boldchat/sdk/BoldChatState;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$1502(Lcom/boldchat/sdk/BoldChatState;)Lcom/boldchat/sdk/BoldChatState;

    .line 1221
    :cond_4
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatSession;->closeChat()V

    goto :goto_0

    .line 1223
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/boldchat/sdk/R$id;->bc_email_transcript:I

    if-ne v0, v1, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->showEmailTranscriptForm()V
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$3200(Lcom/boldchat/sdk/BoldChatSession;)V

    goto :goto_0
.end method

.method public onMessageAdded(Lcom/boldchat/visitor/api/Message;)V
    .locals 2
    .param p1, "message"    # Lcom/boldchat/visitor/api/Message;

    .prologue
    .line 1172
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/Message;->getPersonType()Lcom/boldchat/visitor/api/PersonType;

    move-result-object v0

    sget-object v1, Lcom/boldchat/visitor/api/PersonType;->Operator:Lcom/boldchat/visitor/api/PersonType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mBoldChatSessionListener:Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$100(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    new-instance v1, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$7;

    invoke-direct {v1, p0, p1}, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$7;-><init>(Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;Lcom/boldchat/visitor/api/Message;)V

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->runMain(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->access$2400(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/Runnable;)V

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const/4 v1, 0x0

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->addMessage(Lcom/boldchat/visitor/api/Message;Z)V
    invoke-static {v0, p1, v1}, Lcom/boldchat/sdk/BoldChatSession;->access$3000(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/visitor/api/Message;Z)V

    .line 1181
    return-void
.end method

.method public onPostChatSubmitFailed(Lcom/boldchat/visitor/api/Form;Ljava/lang/String;)V
    .locals 6
    .param p1, "postChatForm"    # Lcom/boldchat/visitor/api/Form;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->Finished:Lcom/boldchat/sdk/BoldChatState;

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v3, "api#chat#close"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$10;

    invoke-direct {v5, p0}, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$10;-><init>(Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;)V

    move-object v2, p2

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->showForm(Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V
    invoke-static/range {v0 .. v5}, Lcom/boldchat/sdk/BoldChatSession;->access$2800(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V

    .line 1298
    return-void
.end method

.method public onPostChatSubmitted(Lcom/boldchat/visitor/api/Form;)V
    .locals 12
    .param p1, "postChatForm"    # Lcom/boldchat/visitor/api/Form;

    .prologue
    .line 1255
    const-string v0, "email"

    invoke-virtual {p1, v0}, Lcom/boldchat/visitor/api/Form;->getFormField(Ljava/lang/String;)Lcom/boldchat/visitor/api/FormField;

    move-result-object v6

    .line 1256
    .local v6, "email":Lcom/boldchat/visitor/api/FormField;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v8, 0x1

    .line 1257
    .local v8, "hasPostChatEmail":Z
    :goto_0
    const/4 v9, 0x0

    .line 1258
    .local v9, "hasSubmittedData":Z
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/Form;->getFormFields()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1259
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/Form;->getFormFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/boldchat/visitor/api/FormField;

    .line 1260
    .local v7, "field":Lcom/boldchat/visitor/api/FormField;
    invoke-virtual {v7}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eq v7, v6, :cond_0

    .line 1261
    const/4 v9, 0x1

    .line 1266
    .end local v7    # "field":Lcom/boldchat/visitor/api/FormField;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v11, "api#chat#ended"

    .line 1267
    .local v11, "titleKey":Ljava/lang/String;
    if-eqz v8, :cond_5

    if-nez v9, :cond_5

    .line 1268
    const-string v11, "api#postchat#emailed"

    .line 1274
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v11}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1275
    .local v2, "title":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1278
    :cond_3
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->Finished:Lcom/boldchat/sdk/BoldChatState;

    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v4, "api#chat#close"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$9;

    invoke-direct {v5, p0}, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners$9;-><init>(Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;)V

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->showForm(Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V
    invoke-static/range {v0 .. v5}, Lcom/boldchat/sdk/BoldChatSession;->access$2800(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatState;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;)V

    .line 1284
    return-void

    .line 1256
    .end local v2    # "title":Ljava/lang/String;
    .end local v8    # "hasPostChatEmail":Z
    .end local v9    # "hasSubmittedData":Z
    .end local v11    # "titleKey":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 1269
    .restart local v8    # "hasPostChatEmail":Z
    .restart local v9    # "hasSubmittedData":Z
    .restart local v11    # "titleKey":Ljava/lang/String;
    :cond_5
    if-eqz v8, :cond_6

    if-eqz v9, :cond_6

    .line 1270
    const-string v11, "api#postchat#submitted_and_emailed"

    goto :goto_1

    .line 1271
    :cond_6
    if-eqz v9, :cond_2

    .line 1272
    const-string v11, "api#postchat#submitted"

    goto :goto_1
.end method

.method public onPreliminaryMessageAdded(Lcom/boldchat/visitor/api/Message;)V
    .locals 2
    .param p1, "message"    # Lcom/boldchat/visitor/api/Message;

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const/4 v1, 0x1

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->addMessage(Lcom/boldchat/visitor/api/Message;Z)V
    invoke-static {v0, p1, v1}, Lcom/boldchat/sdk/BoldChatSession;->access$3000(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/visitor/api/Message;Z)V

    .line 1164
    return-void
.end method

.method public onTyperUpdated(Lcom/boldchat/visitor/api/Typer;)V
    .locals 1
    .param p1, "updatedTyper"    # Lcom/boldchat/visitor/api/Typer;

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->updateTypingLabel()V
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$2900(Lcom/boldchat/sdk/BoldChatSession;)V

    .line 1125
    return-void
.end method

.method public onUpdateQueue(IZ)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "unavailableFormEnabled"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1235
    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mViewManager:Lcom/boldchat/sdk/BoldChatViewManager;
    invoke-static {v2}, Lcom/boldchat/sdk/BoldChatSession;->access$500(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boldchat/sdk/BoldChatViewManager;->getTypingTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 1236
    .local v1, "typingView":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    if-lez p1, :cond_2

    .line 1237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v4, "api#chat#queue_position"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, "queueText":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 1239
    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (<a href=\"#cancel_queue\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v5, "api#chat#unavailable_email"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</a>)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    const-class v4, Landroid/text/style/URLSpan;

    new-instance v5, Lcom/boldchat/sdk/BoldChatSession$URLSpanConverter;

    iget-object v6, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-direct {v5, v6, v7}, Lcom/boldchat/sdk/BoldChatSession$URLSpanConverter;-><init>(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatSession$1;)V

    invoke-static {v3, v4, v5}, Lcom/boldchat/sdk/utils/RichTextUtils;->replaceAll(Landroid/text/Spanned;Ljava/lang/Class;Lcom/boldchat/sdk/utils/RichTextUtils$SpanConverter;)Landroid/text/Spannable;

    move-result-object v3

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->setTypingText(Landroid/text/Spanned;)V
    invoke-static {v2, v3}, Lcom/boldchat/sdk/BoldChatSession;->access$2300(Lcom/boldchat/sdk/BoldChatSession;Landroid/text/Spanned;)V

    .line 1247
    .end local v0    # "queueText":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1242
    .restart local v0    # "queueText":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const-string v5, "api#chat#queue_position"

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/boldchat/sdk/BoldChatSession;->access$600(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->setTypingText(Landroid/text/Spanned;)V
    invoke-static {v2, v3}, Lcom/boldchat/sdk/BoldChatSession;->access$2300(Lcom/boldchat/sdk/BoldChatSession;Landroid/text/Spanned;)V

    goto :goto_0

    .line 1244
    .end local v0    # "queueText":Ljava/lang/String;
    :cond_2
    if-nez p1, :cond_0

    .line 1245
    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$CallBackListeners;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->setTypingText(Landroid/text/Spanned;)V
    invoke-static {v2, v7}, Lcom/boldchat/sdk/BoldChatSession;->access$2300(Lcom/boldchat/sdk/BoldChatSession;Landroid/text/Spanned;)V

    goto :goto_0
.end method
