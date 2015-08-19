.class Lcom/boldchat/sdk/BoldChatListViewHistory$3;
.super Ljava/lang/Object;
.source "BoldChatListViewHistory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatListViewHistory;->clearChatHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatListViewHistory;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$3;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$3;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    # getter for: Lcom/boldchat/sdk/BoldChatListViewHistory;->mHistoryAdapter:Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatListViewHistory;->access$200(Lcom/boldchat/sdk/BoldChatListViewHistory;)Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->clearHistory()V

    .line 94
    return-void
.end method
