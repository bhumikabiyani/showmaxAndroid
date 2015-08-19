.class Lcom/boldchat/sdk/BoldChatListViewHistory$1;
.super Ljava/lang/Object;
.source "BoldChatListViewHistory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatListViewHistory;->addMessage(Ljava/lang/String;Lcom/boldchat/visitor/api/PersonType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

.field final synthetic val$messageID:J

.field final synthetic val$messageText:Ljava/lang/String;

.field final synthetic val$senderAvatar:Ljava/lang/String;

.field final synthetic val$senderName:Ljava/lang/String;

.field final synthetic val$senderType:Lcom/boldchat/visitor/api/PersonType;

.field final synthetic val$time:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatListViewHistory;Ljava/lang/String;Lcom/boldchat/visitor/api/PersonType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$1;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$1;->val$messageText:Ljava/lang/String;

    iput-object p3, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$1;->val$senderType:Lcom/boldchat/visitor/api/PersonType;

    iput-wide p4, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$1;->val$messageID:J

    iput-object p6, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$1;->val$time:Ljava/lang/String;

    iput-object p7, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$1;->val$senderName:Ljava/lang/String;

    iput-object p8, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$1;->val$senderAvatar:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 73
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$1;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    # getter for: Lcom/boldchat/sdk/BoldChatListViewHistory;->mHistoryAdapter:Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatListViewHistory;->access$200(Lcom/boldchat/sdk/BoldChatListViewHistory;)Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;

    move-result-object v10

    new-instance v0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$1;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$1;->val$messageText:Ljava/lang/String;

    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$1;->val$senderType:Lcom/boldchat/visitor/api/PersonType;

    iget-wide v4, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$1;->val$messageID:J

    iget-object v6, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$1;->val$time:Ljava/lang/String;

    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$1;->val$senderName:Ljava/lang/String;

    iget-object v8, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$1;->val$senderAvatar:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;-><init>(Lcom/boldchat/sdk/BoldChatListViewHistory;Ljava/lang/String;Lcom/boldchat/visitor/api/PersonType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/sdk/BoldChatListViewHistory$1;)V

    invoke-virtual {v10, v0}, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->addItem(Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;)V

    .line 74
    return-void
.end method
