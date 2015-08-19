.class public Lcom/boldchat/sdk/BoldChatListViewHistory;
.super Landroid/widget/ListView;
.source "BoldChatListViewHistory.java"

# interfaces
.implements Lcom/boldchat/sdk/BoldChatHistory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boldchat/sdk/BoldChatListViewHistory$5;,
        Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;,
        Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;,
        Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;
    }
.end annotation


# instance fields
.field private bestGuessKeyboardOpen:Z

.field private mHistoryAdapter:Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;

.field private mOperatorRes:I

.field private mSystemRes:I

.field private mVisitorRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 30
    sget v0, Lcom/boldchat/sdk/R$layout;->bc_bubble_operator:I

    iput v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->mOperatorRes:I

    .line 31
    sget v0, Lcom/boldchat/sdk/R$layout;->bc_bubble_visitor:I

    iput v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->mVisitorRes:I

    .line 32
    sget v0, Lcom/boldchat/sdk/R$layout;->bc_bubble_system:I

    iput v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->mSystemRes:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->bestGuessKeyboardOpen:Z

    .line 37
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatListViewHistory;->initView()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    sget v0, Lcom/boldchat/sdk/R$layout;->bc_bubble_operator:I

    iput v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->mOperatorRes:I

    .line 31
    sget v0, Lcom/boldchat/sdk/R$layout;->bc_bubble_visitor:I

    iput v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->mVisitorRes:I

    .line 32
    sget v0, Lcom/boldchat/sdk/R$layout;->bc_bubble_system:I

    iput v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->mSystemRes:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->bestGuessKeyboardOpen:Z

    .line 42
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatListViewHistory;->initView()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    sget v0, Lcom/boldchat/sdk/R$layout;->bc_bubble_operator:I

    iput v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->mOperatorRes:I

    .line 31
    sget v0, Lcom/boldchat/sdk/R$layout;->bc_bubble_visitor:I

    iput v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->mVisitorRes:I

    .line 32
    sget v0, Lcom/boldchat/sdk/R$layout;->bc_bubble_system:I

    iput v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->mSystemRes:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->bestGuessKeyboardOpen:Z

    .line 47
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatListViewHistory;->initView()V

    .line 48
    return-void
.end method

.method static synthetic access$200(Lcom/boldchat/sdk/BoldChatListViewHistory;)Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatListViewHistory;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->mHistoryAdapter:Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boldchat/sdk/BoldChatListViewHistory;)I
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatListViewHistory;

    .prologue
    .line 28
    iget v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->mOperatorRes:I

    return v0
.end method

.method static synthetic access$400(Lcom/boldchat/sdk/BoldChatListViewHistory;)I
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatListViewHistory;

    .prologue
    .line 28
    iget v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->mVisitorRes:I

    return v0
.end method

.method static synthetic access$500(Lcom/boldchat/sdk/BoldChatListViewHistory;)I
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatListViewHistory;

    .prologue
    .line 28
    iget v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->mSystemRes:I

    return v0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;-><init>(Lcom/boldchat/sdk/BoldChatListViewHistory;Lcom/boldchat/sdk/BoldChatListViewHistory$1;)V

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->mHistoryAdapter:Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;

    .line 52
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->mHistoryAdapter:Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;

    invoke-virtual {p0, v0}, Lcom/boldchat/sdk/BoldChatListViewHistory;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatListViewHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boldchat/sdk/BoldChatListViewHistory;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 54
    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;Lcom/boldchat/visitor/api/PersonType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "messageText"    # Ljava/lang/String;
    .param p2, "senderType"    # Lcom/boldchat/visitor/api/PersonType;
    .param p3, "messageID"    # J
    .param p5, "time"    # Ljava/lang/String;
    .param p6, "senderName"    # Ljava/lang/String;
    .param p7, "senderAvatar"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Lcom/boldchat/sdk/BoldChatListViewHistory$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/boldchat/sdk/BoldChatListViewHistory$1;-><init>(Lcom/boldchat/sdk/BoldChatListViewHistory;Ljava/lang/String;Lcom/boldchat/visitor/api/PersonType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/boldchat/sdk/BoldChatListViewHistory;->runMain(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public clearChatHistory()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/boldchat/sdk/BoldChatListViewHistory$3;

    invoke-direct {v0, p0}, Lcom/boldchat/sdk/BoldChatListViewHistory$3;-><init>(Lcom/boldchat/sdk/BoldChatListViewHistory;)V

    invoke-virtual {p0, v0}, Lcom/boldchat/sdk/BoldChatListViewHistory;->runMain(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x1

    .line 100
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 102
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 103
    .local v1, "proposedheight":I
    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatListViewHistory;->getHeight()I

    move-result v0

    .line 105
    .local v0, "actualHeight":I
    if-le v0, v1, :cond_1

    .line 106
    iget-boolean v2, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->bestGuessKeyboardOpen:Z

    if-nez v2, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatListViewHistory;->scrollToBottom()V

    .line 109
    iput-boolean v3, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->bestGuessKeyboardOpen:Z

    .line 117
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 118
    return-void

    .line 112
    :cond_1
    iget-boolean v2, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->bestGuessKeyboardOpen:Z

    if-ne v2, v3, :cond_0

    .line 114
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->bestGuessKeyboardOpen:Z

    goto :goto_0
.end method

.method protected runMain(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatListViewHistory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 126
    .local v0, "mainHandler":Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method public scrollToBottom()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/boldchat/sdk/BoldChatListViewHistory$4;

    invoke-direct {v0, p0}, Lcom/boldchat/sdk/BoldChatListViewHistory$4;-><init>(Lcom/boldchat/sdk/BoldChatListViewHistory;)V

    invoke-virtual {p0, v0}, Lcom/boldchat/sdk/BoldChatListViewHistory;->runMain(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public setOperatorBubbleLayout(I)V
    .locals 0
    .param p1, "operatorRes"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->mOperatorRes:I

    .line 58
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Lcom/boldchat/sdk/BoldChatListViewHistory$2;

    invoke-direct {v0, p0, p1}, Lcom/boldchat/sdk/BoldChatListViewHistory$2;-><init>(Lcom/boldchat/sdk/BoldChatListViewHistory;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/boldchat/sdk/BoldChatListViewHistory;->runMain(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public setSystemBubbleLayout(I)V
    .locals 0
    .param p1, "systemRes"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->mSystemRes:I

    .line 66
    return-void
.end method

.method public setVisitorBubbleLayout(I)V
    .locals 0
    .param p1, "visitorRes"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/boldchat/sdk/BoldChatListViewHistory;->mVisitorRes:I

    .line 62
    return-void
.end method
