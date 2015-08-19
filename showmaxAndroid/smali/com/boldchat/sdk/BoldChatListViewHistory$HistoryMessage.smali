.class Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;
.super Ljava/lang/Object;
.source "BoldChatListViewHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatListViewHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryMessage"
.end annotation


# instance fields
.field final messageID:J

.field final messageText:Ljava/lang/String;

.field final senderAvatar:Ljava/lang/String;

.field final senderName:Ljava/lang/String;

.field final senderType:Lcom/boldchat/visitor/api/PersonType;

.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

.field final time:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/boldchat/sdk/BoldChatListViewHistory;Ljava/lang/String;Lcom/boldchat/visitor/api/PersonType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "messageText"    # Ljava/lang/String;
    .param p3, "senderType"    # Lcom/boldchat/visitor/api/PersonType;
    .param p4, "messageID"    # J
    .param p6, "time"    # Ljava/lang/String;
    .param p7, "senderName"    # Ljava/lang/String;
    .param p8, "senderAvatar"    # Ljava/lang/String;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->messageText:Ljava/lang/String;

    .line 316
    iput-object p3, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->senderType:Lcom/boldchat/visitor/api/PersonType;

    .line 317
    iput-wide p4, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->messageID:J

    .line 318
    iput-object p6, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->time:Ljava/lang/String;

    .line 319
    iput-object p7, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->senderName:Ljava/lang/String;

    .line 320
    iput-object p8, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->senderAvatar:Ljava/lang/String;

    .line 321
    return-void
.end method

.method synthetic constructor <init>(Lcom/boldchat/sdk/BoldChatListViewHistory;Ljava/lang/String;Lcom/boldchat/visitor/api/PersonType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/sdk/BoldChatListViewHistory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boldchat/sdk/BoldChatListViewHistory;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/boldchat/visitor/api/PersonType;
    .param p4, "x3"    # J
    .param p6, "x4"    # Ljava/lang/String;
    .param p7, "x5"    # Ljava/lang/String;
    .param p8, "x6"    # Ljava/lang/String;
    .param p9, "x7"    # Lcom/boldchat/sdk/BoldChatListViewHistory$1;

    .prologue
    .line 306
    invoke-direct/range {p0 .. p8}, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;-><init>(Lcom/boldchat/sdk/BoldChatListViewHistory;Ljava/lang/String;Lcom/boldchat/visitor/api/PersonType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
