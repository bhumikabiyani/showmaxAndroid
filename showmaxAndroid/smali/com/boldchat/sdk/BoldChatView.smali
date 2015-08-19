.class public Lcom/boldchat/sdk/BoldChatView;
.super Landroid/widget/LinearLayout;
.source "BoldChatView.java"


# instance fields
.field isWebViewHistoryEnabled:Z

.field mApiKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatView;->mApiKey:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/sdk/BoldChatView;->isWebViewHistoryEnabled:Z

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/boldchat/sdk/BoldChatView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatView;->mApiKey:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/sdk/BoldChatView;->isWebViewHistoryEnabled:Z

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/boldchat/sdk/BoldChatView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatView;->mApiKey:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/sdk/BoldChatView;->isWebViewHistoryEnabled:Z

    .line 50
    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatView;->mApiKey:Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatView;->initView(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 103
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/boldchat/sdk/R$layout;->bc_chat:I

    invoke-virtual {v1, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 105
    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatView;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 106
    sget v4, Lcom/boldchat/sdk/R$id;->bc_history_stub_import:I

    invoke-virtual {p0, v4}, Lcom/boldchat/sdk/BoldChatView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 107
    .local v3, "stub":Landroid/view/ViewStub;
    iget-boolean v4, p0, Lcom/boldchat/sdk/BoldChatView;->isWebViewHistoryEnabled:Z

    if-eqz v4, :cond_0

    .line 108
    sget v4, Lcom/boldchat/sdk/R$layout;->bc_web_history:I

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 110
    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 112
    sget v4, Lcom/boldchat/sdk/R$id;->bc_chat_main:I

    invoke-virtual {p0, v4}, Lcom/boldchat/sdk/BoldChatView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 113
    .local v2, "mainView":Landroid/view/View;
    sget v4, Lcom/boldchat/sdk/R$id;->bc_busy_view:I

    invoke-virtual {p0, v4}, Lcom/boldchat/sdk/BoldChatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "busyView":Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 115
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .end local v0    # "busyView":Landroid/view/View;
    .end local v2    # "mainView":Landroid/view/View;
    .end local v3    # "stub":Landroid/view/ViewStub;
    :cond_1
    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    sget-object v4, Lcom/boldchat/sdk/R$styleable;->BoldChatView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 83
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 85
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 86
    .local v1, "attr":I
    if-nez v1, :cond_1

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/boldchat/sdk/BoldChatView;->mApiKey:Ljava/lang/String;

    .line 83
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :cond_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 89
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/boldchat/sdk/BoldChatView;->isWebViewHistoryEnabled:Z

    goto :goto_1

    .line 92
    .end local v1    # "attr":I
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatView;->initView(Landroid/content/Context;)V

    .line 95
    return-void
.end method


# virtual methods
.method protected getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatView;->mApiKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getBusyView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 137
    sget v0, Lcom/boldchat/sdk/R$id;->bc_busy_view:I

    invoke-virtual {p0, v0}, Lcom/boldchat/sdk/BoldChatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getFormView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/boldchat/sdk/R$id;->bc_form_container:I

    invoke-virtual {p0, v0}, Lcom/boldchat/sdk/BoldChatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getMainChatView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 123
    sget v0, Lcom/boldchat/sdk/R$id;->bc_chat_main:I

    invoke-virtual {p0, v0}, Lcom/boldchat/sdk/BoldChatView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method
