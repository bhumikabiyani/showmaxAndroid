.class public Lcom/boldchat/sdk/BoldChatWebHistory;
.super Landroid/webkit/WebView;
.source "BoldChatWebHistory.java"

# interfaces
.implements Lcom/boldchat/sdk/BoldChatHistory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;,
        Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;,
        Lcom/boldchat/sdk/BoldChatWebHistory$OpenLinksExternalWebClient;,
        Lcom/boldchat/sdk/BoldChatWebHistory$JsObject;
    }
.end annotation


# instance fields
.field private historyColors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoaded:Z

.field private mLoadedListener:Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->historyColors:Ljava/util/HashMap;

    .line 30
    iput-object v1, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->mLoadedListener:Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->mIsLoaded:Z

    .line 35
    invoke-direct {p0, p1, v1}, Lcom/boldchat/sdk/BoldChatWebHistory;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->historyColors:Ljava/util/HashMap;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->mLoadedListener:Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->mIsLoaded:Z

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/boldchat/sdk/BoldChatWebHistory;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->historyColors:Ljava/util/HashMap;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->mLoadedListener:Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->mIsLoaded:Z

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/boldchat/sdk/BoldChatWebHistory;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "privateBrowsing"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->historyColors:Ljava/util/HashMap;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->mLoadedListener:Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->mIsLoaded:Z

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/boldchat/sdk/BoldChatWebHistory;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method static synthetic access$202(Lcom/boldchat/sdk/BoldChatWebHistory;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatWebHistory;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->mIsLoaded:Z

    return p1
.end method

.method static synthetic access$300(Lcom/boldchat/sdk/BoldChatWebHistory;)Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatWebHistory;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->mLoadedListener:Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;

    return-object v0
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v12, 0x1

    .line 55
    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatWebHistory;->isInEditMode()Z

    move-result v7

    if-nez v7, :cond_4

    .line 56
    sget v4, Lcom/boldchat/sdk/R$raw;->bc_chat_history:I

    .line 57
    .local v4, "historyRes":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 58
    .local v6, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->historyColors:Ljava/util/HashMap;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;

    sget v10, Lcom/boldchat/sdk/R$color;->bc_history_background:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const-string v11, "bc_history_background"

    invoke-direct {v9, p0, v10, v11}, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;-><init>(Lcom/boldchat/sdk/BoldChatWebHistory;ILjava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->historyColors:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;

    sget v10, Lcom/boldchat/sdk/R$color;->bc_history_visitor_text:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const-string v11, "bc_history_visitor_text"

    invoke-direct {v9, p0, v10, v11}, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;-><init>(Lcom/boldchat/sdk/BoldChatWebHistory;ILjava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->historyColors:Ljava/util/HashMap;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;

    sget v10, Lcom/boldchat/sdk/R$color;->bc_history_visitor_background:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const-string v11, "bc_history_visitor_background"

    invoke-direct {v9, p0, v10, v11}, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;-><init>(Lcom/boldchat/sdk/BoldChatWebHistory;ILjava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->historyColors:Ljava/util/HashMap;

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;

    sget v10, Lcom/boldchat/sdk/R$color;->bc_history_visitor_time:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const-string v11, "bc_history_visitor_time"

    invoke-direct {v9, p0, v10, v11}, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;-><init>(Lcom/boldchat/sdk/BoldChatWebHistory;ILjava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->historyColors:Ljava/util/HashMap;

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;

    sget v10, Lcom/boldchat/sdk/R$color;->bc_history_visitor_sender:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const-string v11, "bc_history_visitor_sender"

    invoke-direct {v9, p0, v10, v11}, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;-><init>(Lcom/boldchat/sdk/BoldChatWebHistory;ILjava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->historyColors:Ljava/util/HashMap;

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;

    sget v10, Lcom/boldchat/sdk/R$color;->bc_history_operator_text:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const-string v11, "bc_history_operator_text"

    invoke-direct {v9, p0, v10, v11}, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;-><init>(Lcom/boldchat/sdk/BoldChatWebHistory;ILjava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->historyColors:Ljava/util/HashMap;

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;

    sget v10, Lcom/boldchat/sdk/R$color;->bc_history_operator_background:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const-string v11, "bc_history_operator_background"

    invoke-direct {v9, p0, v10, v11}, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;-><init>(Lcom/boldchat/sdk/BoldChatWebHistory;ILjava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->historyColors:Ljava/util/HashMap;

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;

    sget v10, Lcom/boldchat/sdk/R$color;->bc_history_operator_time:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const-string v11, "bc_history_operator_time"

    invoke-direct {v9, p0, v10, v11}, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;-><init>(Lcom/boldchat/sdk/BoldChatWebHistory;ILjava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->historyColors:Ljava/util/HashMap;

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;

    sget v10, Lcom/boldchat/sdk/R$color;->bc_history_operator_sender:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const-string v11, "bc_history_operator_sender"

    invoke-direct {v9, p0, v10, v11}, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;-><init>(Lcom/boldchat/sdk/BoldChatWebHistory;ILjava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->historyColors:Ljava/util/HashMap;

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;

    sget v10, Lcom/boldchat/sdk/R$color;->bc_history_system_text:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const-string v11, "bc_history_system_text"

    invoke-direct {v9, p0, v10, v11}, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;-><init>(Lcom/boldchat/sdk/BoldChatWebHistory;ILjava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->historyColors:Ljava/util/HashMap;

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;

    sget v10, Lcom/boldchat/sdk/R$color;->bc_history_system_background:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const-string v11, "bc_history_system_background"

    invoke-direct {v9, p0, v10, v11}, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;-><init>(Lcom/boldchat/sdk/BoldChatWebHistory;ILjava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    if-eqz p2, :cond_3

    .line 71
    sget-object v7, Lcom/boldchat/sdk/R$styleable;->BoldChatWebHistory:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 73
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 74
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 75
    .local v1, "attr":I
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->historyColors:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;

    .line 76
    .local v2, "color":Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;
    if-eqz v2, :cond_1

    .line 77
    iget v7, v2, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;->color:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    iput v7, v2, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;->color:I

    .line 73
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 78
    :cond_1
    const/16 v7, 0xb

    if-ne v1, v7, :cond_0

    .line 79
    sget v7, Lcom/boldchat/sdk/R$raw;->bc_chat_history:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    goto :goto_1

    .line 82
    .end local v1    # "attr":I
    .end local v2    # "color":Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "count":I
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatWebHistory;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 86
    invoke-virtual {p0, v4}, Lcom/boldchat/sdk/BoldChatWebHistory;->setHtmlResource(I)V

    .line 88
    .end local v4    # "historyRes":I
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_4
    return-void
.end method

.method private varargs runJavascript(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/16 v10, 0x27

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v2, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v0, v1, v4

    .line 197
    .local v0, "arg":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 198
    const-string v6, "null"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :goto_1
    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 199
    :cond_0
    instance-of v6, v0, Ljava/lang/Boolean;

    if-nez v6, :cond_1

    instance-of v6, v0, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 200
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 201
    :cond_2
    instance-of v6, v0, Ljava/lang/Long;

    if-eqz v6, :cond_3

    .line 202
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 205
    :cond_3
    :try_start_0
    const-string v6, "decodeURIComponent(\'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "+"

    const-string v9, "%20"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\')"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 206
    :catch_0
    move-exception v3

    .line 207
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "BOLD"

    const-string v7, "UTF-8 Encoding not supported"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 212
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_4
    array-length v6, p2

    if-lez v6, :cond_5

    .line 213
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 216
    :cond_5
    const-string v6, ");"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    new-instance v6, Lcom/boldchat/sdk/BoldChatWebHistory$2;

    invoke-direct {v6, p0, v2}, Lcom/boldchat/sdk/BoldChatWebHistory$2;-><init>(Lcom/boldchat/sdk/BoldChatWebHistory;Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v6}, Lcom/boldchat/sdk/BoldChatWebHistory;->runMain(Ljava/lang/Runnable;)V

    .line 233
    return-void
.end method

.method private runMain(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 183
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatWebHistory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 184
    .local v0, "mainHandler":Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;Lcom/boldchat/visitor/api/PersonType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "messageText"    # Ljava/lang/String;
    .param p2, "senderType"    # Lcom/boldchat/visitor/api/PersonType;
    .param p3, "messageID"    # J
    .param p5, "time"    # Ljava/lang/String;
    .param p6, "senderName"    # Ljava/lang/String;
    .param p7, "senderAvatar"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string v0, "addMessage"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/boldchat/visitor/api/PersonType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/boldchat/sdk/BoldChatWebHistory;->runJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public clearChatHistory()V
    .locals 2

    .prologue
    .line 165
    const-string v0, "clearHistory"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/boldchat/sdk/BoldChatWebHistory;->runJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public scrollToBottom()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/boldchat/sdk/BoldChatWebHistory$1;

    invoke-direct {v0, p0}, Lcom/boldchat/sdk/BoldChatWebHistory$1;-><init>(Lcom/boldchat/sdk/BoldChatWebHistory;)V

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatWebHistory;->runMain(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method public setHistoryPageLoadedListener(Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->mLoadedListener:Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;

    .line 156
    iget-boolean v0, p0, Lcom/boldchat/sdk/BoldChatWebHistory;->mIsLoaded:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {p1}, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;->historyPageLoaded()V

    .line 159
    :cond_0
    return-void
.end method

.method public setHtmlResource(I)V
    .locals 20
    .param p1, "htmlResource"    # I

    .prologue
    .line 91
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v18, "source":Ljava/lang/StringBuilder;
    const/16 v2, 0x400

    new-array v8, v2, [C

    .line 94
    .local v8, "buf":[C
    :try_start_0
    new-instance v16, Ljava/io/InputStreamReader;

    invoke-virtual/range {p0 .. p0}, Lcom/boldchat/sdk/BoldChatWebHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 96
    .local v16, "raw":Ljava/io/InputStreamReader;
    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/io/InputStreamReader;->read([C)I

    move-result v17

    .local v17, "read":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-le v0, v2, :cond_1

    .line 97
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v8, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    .end local v16    # "raw":Ljava/io/InputStreamReader;
    .end local v17    # "read":I
    :catch_0
    move-exception v10

    .line 101
    .local v10, "e":Ljava/io/IOException;
    const-string v2, "BOLD"

    const-string v3, "Failed to read bc_chat_history.html from raw resources"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v10    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v11, 0x0

    .line 107
    .local v11, "htmlKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boldchat/sdk/BoldChatWebHistory;->historyColors:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;

    .line 108
    .local v9, "color":Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "${"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 109
    const/4 v15, 0x0

    .line 110
    .local v15, "pos":I
    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v15}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v12

    .local v12, "i":I
    const/4 v2, -0x1

    if-le v12, v2, :cond_0

    .line 111
    const-string v2, "#%06X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v9, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;->color:I

    const v6, 0xffffff

    and-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 112
    .local v19, "val":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    add-int v15, v12, v2

    .line 113
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v12, v15, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 99
    .end local v9    # "color":Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;
    .end local v11    # "htmlKey":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "pos":I
    .end local v19    # "val":Ljava/lang/String;
    .restart local v16    # "raw":Ljava/io/InputStreamReader;
    .restart local v17    # "read":I
    :cond_1
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 117
    .end local v16    # "raw":Ljava/io/InputStreamReader;
    .end local v17    # "read":I
    .restart local v11    # "htmlKey":Ljava/lang/String;
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v14, "javascript":Ljava/lang/StringBuilder;
    :try_start_2
    new-instance v16, Ljava/io/InputStreamReader;

    invoke-virtual/range {p0 .. p0}, Lcom/boldchat/sdk/BoldChatWebHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/boldchat/sdk/R$raw;->bc_chat_history_js:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 121
    .restart local v16    # "raw":Ljava/io/InputStreamReader;
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/io/InputStreamReader;->read([C)I

    move-result v17

    .restart local v17    # "read":I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-le v0, v2, :cond_4

    .line 122
    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v8, v2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 125
    .end local v16    # "raw":Ljava/io/InputStreamReader;
    .end local v17    # "read":I
    :catch_1
    move-exception v10

    .line 126
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v2, "BOLD"

    const-string v3, "Failed to read bc_chat_history_js.js from raw resources"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    .end local v10    # "e":Ljava/io/IOException;
    :goto_4
    const-string v11, "${bc_chat_history_js}"

    .line 130
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v12

    .restart local v12    # "i":I
    const/4 v2, -0x1

    if-le v12, v2, :cond_3

    .line 131
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    add-int v15, v12, v2

    .line 132
    .restart local v15    # "pos":I
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v15, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .end local v15    # "pos":I
    :cond_3
    new-instance v2, Lcom/boldchat/sdk/BoldChatWebHistory$JsObject;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/boldchat/sdk/BoldChatWebHistory$JsObject;-><init>(Lcom/boldchat/sdk/BoldChatWebHistory;Lcom/boldchat/sdk/BoldChatWebHistory$1;)V

    const-string v3, "injectedObject"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/boldchat/sdk/BoldChatWebHistory;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    const-string v3, "file:///android_asset/"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const-string v7, ""

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/boldchat/sdk/BoldChatWebHistory;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v2, Lcom/boldchat/sdk/BoldChatWebHistory$OpenLinksExternalWebClient;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/boldchat/sdk/BoldChatWebHistory$OpenLinksExternalWebClient;-><init>(Lcom/boldchat/sdk/BoldChatWebHistory;Lcom/boldchat/sdk/BoldChatWebHistory$1;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/boldchat/sdk/BoldChatWebHistory;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 140
    return-void

    .line 124
    .end local v12    # "i":I
    .restart local v16    # "raw":Ljava/io/InputStreamReader;
    .restart local v17    # "read":I
    :cond_4
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 5
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    const-string v3, "setStatus"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v2

    aput-object p1, v4, v1

    invoke-direct {p0, v3, v4}, Lcom/boldchat/sdk/BoldChatWebHistory;->runJavascript(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    return-void

    :cond_0
    move v0, v2

    .line 147
    goto :goto_0
.end method
