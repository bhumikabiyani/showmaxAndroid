.class Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;
.super Ljava/lang/Object;
.source "BoldChatListViewHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatListViewHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field avatar:Landroid/widget/ImageView;

.field avatarURL:Ljava/lang/String;

.field bubble:Landroid/view/ViewGroup;

.field sender:Landroid/widget/TextView;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

.field time:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/boldchat/sdk/BoldChatListViewHistory;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boldchat/sdk/BoldChatListViewHistory;Lcom/boldchat/sdk/BoldChatListViewHistory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boldchat/sdk/BoldChatListViewHistory;
    .param p2, "x1"    # Lcom/boldchat/sdk/BoldChatListViewHistory$1;

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;-><init>(Lcom/boldchat/sdk/BoldChatListViewHistory;)V

    return-void
.end method
