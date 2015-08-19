.class Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "BoldChatListViewHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatListViewHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryAdapter"
.end annotation


# instance fields
.field messages:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;",
            ">;"
        }
    .end annotation
.end field

.field messagesArray:[Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

.field status:Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;


# direct methods
.method private constructor <init>(Lcom/boldchat/sdk/BoldChatListViewHistory;)V
    .locals 1

    .prologue
    .line 138
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 139
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->messages:Ljava/util/LinkedHashMap;

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->status:Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

    return-void
.end method

.method synthetic constructor <init>(Lcom/boldchat/sdk/BoldChatListViewHistory;Lcom/boldchat/sdk/BoldChatListViewHistory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boldchat/sdk/BoldChatListViewHistory;
    .param p2, "x1"    # Lcom/boldchat/sdk/BoldChatListViewHistory$1;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;-><init>(Lcom/boldchat/sdk/BoldChatListViewHistory;)V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->messages:Ljava/util/LinkedHashMap;

    iget-wide v2, p1, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->messageID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->updateArray()V

    .line 171
    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->notifyDataSetChanged()V

    .line 172
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatListViewHistory;->scrollToBottom()V

    .line 173
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->messages:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 155
    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->updateArray()V

    .line 156
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->messages:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->status:Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->messages:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->status:Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->messagesArray:[Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->messages:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->messagesArray:[Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->messageID:J

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->messages:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->status:Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->senderType:Lcom/boldchat/visitor/api/PersonType;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/PersonType;->ordinal()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->messagesArray:[Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->senderType:Lcom/boldchat/visitor/api/PersonType;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/PersonType;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

    .line 202
    .local v5, "m":Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;
    if-nez p2, :cond_4

    .line 203
    iget-object v8, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    invoke-virtual {v8}, Lcom/boldchat/sdk/BoldChatListViewHistory;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 204
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget-object v8, Lcom/boldchat/sdk/BoldChatListViewHistory$5;->$SwitchMap$com$boldchat$visitor$api$PersonType:[I

    iget-object v9, v5, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->senderType:Lcom/boldchat/visitor/api/PersonType;

    invoke-virtual {v9}, Lcom/boldchat/visitor/api/PersonType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 212
    iget-object v8, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    # getter for: Lcom/boldchat/sdk/BoldChatListViewHistory;->mSystemRes:I
    invoke-static {v8}, Lcom/boldchat/sdk/BoldChatListViewHistory;->access$500(Lcom/boldchat/sdk/BoldChatListViewHistory;)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 214
    :goto_0
    new-instance v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;

    iget-object v8, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;-><init>(Lcom/boldchat/sdk/BoldChatListViewHistory;Lcom/boldchat/sdk/BoldChatListViewHistory$1;)V

    .line 215
    .local v1, "h":Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;
    sget v8, Lcom/boldchat/sdk/R$id;->bc_history_bubble:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->bubble:Landroid/view/ViewGroup;

    .line 216
    sget v8, Lcom/boldchat/sdk/R$id;->bc_avatar:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->avatar:Landroid/widget/ImageView;

    .line 217
    sget v8, Lcom/boldchat/sdk/R$id;->bc_time:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->time:Landroid/widget/TextView;

    .line 218
    sget v8, Lcom/boldchat/sdk/R$id;->bc_sender:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->sender:Landroid/widget/TextView;

    .line 219
    sget v8, Lcom/boldchat/sdk/R$id;->bc_text:I

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->text:Landroid/widget/TextView;

    .line 220
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 225
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :goto_1
    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->avatar:Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    iget-object v8, v5, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->senderAvatar:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 227
    iget-object v8, v5, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->senderAvatar:Ljava/lang/String;

    iput-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->avatarURL:Ljava/lang/String;

    .line 228
    move-object v2, v1

    .line 229
    .local v2, "h2":Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 230
    .local v7, "tag":Ljava/lang/Object;
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 231
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->avatarURL:Ljava/lang/String;

    new-instance v9, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter$1;

    invoke-direct {v9, p0, v7, v2}, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter$1;-><init>(Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;Ljava/lang/Object;Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;)V

    iget-object v10, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    invoke-virtual {v10}, Lcom/boldchat/sdk/BoldChatListViewHistory;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/boldchat/sdk/utils/ImageCache;->getImage(Ljava/lang/String;Lcom/boldchat/sdk/utils/DrawableReadyListener;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 244
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 245
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->avatar:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "h2":Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;
    .end local v7    # "tag":Ljava/lang/Object;
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->time:Landroid/widget/TextView;

    if-eqz v8, :cond_1

    .line 252
    iget-object v8, v5, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->time:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 253
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->time:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->time:Landroid/widget/TextView;

    iget-object v9, v5, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->time:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_1
    :goto_2
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->sender:Landroid/widget/TextView;

    if-eqz v8, :cond_2

    .line 261
    iget-object v8, v5, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->time:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 262
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->sender:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->sender:Landroid/widget/TextView;

    iget-object v9, v5, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->senderName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_2
    :goto_3
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->bubble:Landroid/view/ViewGroup;

    if-eqz v8, :cond_3

    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->text:Landroid/widget/TextView;

    if-eqz v8, :cond_3

    .line 270
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->bubble:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 271
    .local v6, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, -0x2

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 272
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->bubble:Landroid/view/ViewGroup;

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->text:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 275
    const/4 v8, -0x2

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 276
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->text:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->text:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 279
    new-instance v3, Lcom/boldchat/sdk/utils/SpanImageFetcher;

    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->bubble:Landroid/view/ViewGroup;

    iget-object v9, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->text:Landroid/widget/TextView;

    invoke-direct {v3, v8, v9}, Lcom/boldchat/sdk/utils/SpanImageFetcher;-><init>(Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    .line 280
    .local v3, "imageFetcher":Lcom/boldchat/sdk/utils/SpanImageFetcher;
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->text:Landroid/widget/TextView;

    iget-object v9, v5, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;->messageText:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v9, v3, v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v9

    const-class v10, Landroid/text/style/URLSpan;

    new-instance v11, Lcom/boldchat/sdk/utils/ExternalLinkAction;

    iget-object v12, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    invoke-virtual {v12}, Lcom/boldchat/sdk/BoldChatListViewHistory;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/boldchat/sdk/utils/ExternalLinkAction;-><init>(Landroid/content/Context;)V

    iget-object v12, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->text:Landroid/widget/TextView;

    invoke-static {v9, v10, v11, v12}, Lcom/boldchat/sdk/utils/RichTextUtils;->replaceAll(Landroid/text/Spanned;Ljava/lang/Class;Lcom/boldchat/sdk/utils/RichTextUtils$SpanConverter;Landroid/widget/TextView;)Landroid/text/Spannable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    .end local v3    # "imageFetcher":Lcom/boldchat/sdk/utils/SpanImageFetcher;
    .end local v6    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-object p2

    .line 206
    .end local v1    # "h":Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    :pswitch_0
    iget-object v8, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    # getter for: Lcom/boldchat/sdk/BoldChatListViewHistory;->mOperatorRes:I
    invoke-static {v8}, Lcom/boldchat/sdk/BoldChatListViewHistory;->access$300(Lcom/boldchat/sdk/BoldChatListViewHistory;)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 207
    goto/16 :goto_0

    .line 209
    :pswitch_1
    iget-object v8, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    # getter for: Lcom/boldchat/sdk/BoldChatListViewHistory;->mVisitorRes:I
    invoke-static {v8}, Lcom/boldchat/sdk/BoldChatListViewHistory;->access$400(Lcom/boldchat/sdk/BoldChatListViewHistory;)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 210
    goto/16 :goto_0

    .line 222
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;

    .restart local v1    # "h":Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;
    goto/16 :goto_1

    .line 249
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 256
    :cond_5
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->time:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 265
    :cond_6
    iget-object v8, v1, Lcom/boldchat/sdk/BoldChatListViewHistory$Holder;->sender:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 185
    invoke-static {}, Lcom/boldchat/visitor/api/PersonType;->values()[Lcom/boldchat/visitor/api/PersonType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 10
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    sget-object v3, Lcom/boldchat/visitor/api/PersonType;->System:Lcom/boldchat/visitor/api/PersonType;

    const-wide/16 v4, 0x0

    move-object v2, p1

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;-><init>(Lcom/boldchat/sdk/BoldChatListViewHistory;Ljava/lang/String;Lcom/boldchat/visitor/api/PersonType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/sdk/BoldChatListViewHistory$1;)V

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->status:Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->notifyDataSetChanged()V

    .line 150
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->this$0:Lcom/boldchat/sdk/BoldChatListViewHistory;

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatListViewHistory;->scrollToBottom()V

    .line 151
    return-void

    .line 147
    :cond_0
    iput-object v6, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->status:Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

    goto :goto_0
.end method

.method public updateArray()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->messages:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->messages:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v1, [Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->messagesArray:[Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    new-array v0, v1, [Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryAdapter;->messagesArray:[Lcom/boldchat/sdk/BoldChatListViewHistory$HistoryMessage;

    goto :goto_0
.end method
