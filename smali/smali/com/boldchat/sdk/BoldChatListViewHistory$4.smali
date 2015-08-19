.class Lcom/boldchat/sdk/BoldChatListViewHistory$4;
.super Ljava/lang/Object;
.source "BoldChatListViewHistory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatListViewHistory;->scrollToBottom()V
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
    .line 130
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$4;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$4;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$4;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    # getter for: Lcom/boldchat/sdk/BoldChatListViewHistory;->mHistoryAdapter:Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatListViewHistory;->access$200(Lcom/boldchat/sdk/BoldChatListViewHistory;)Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatListViewHistory;->smoothScrollToPosition(I)V

    .line 134
    return-void
.end method
