.class Lcom/boldchat/sdk/BoldChatWebHistory$JsObject;
.super Ljava/lang/Object;
.source "BoldChatWebHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatWebHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatWebHistory;


# direct methods
.method private constructor <init>(Lcom/boldchat/sdk/BoldChatWebHistory;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatWebHistory$JsObject;->this$0:Lcom/boldchat/sdk/BoldChatWebHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boldchat/sdk/BoldChatWebHistory;Lcom/boldchat/sdk/BoldChatWebHistory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boldchat/sdk/BoldChatWebHistory;
    .param p2, "x1"    # Lcom/boldchat/sdk/BoldChatWebHistory$1;

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatWebHistory$JsObject;-><init>(Lcom/boldchat/sdk/BoldChatWebHistory;)V

    return-void
.end method


# virtual methods
.method public pageLoaded()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatWebHistory$JsObject;->this$0:Lcom/boldchat/sdk/BoldChatWebHistory;

    const/4 v1, 0x1

    # setter for: Lcom/boldchat/sdk/BoldChatWebHistory;->mIsLoaded:Z
    invoke-static {v0, v1}, Lcom/boldchat/sdk/BoldChatWebHistory;->access$202(Lcom/boldchat/sdk/BoldChatWebHistory;Z)Z

    .line 253
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatWebHistory$JsObject;->this$0:Lcom/boldchat/sdk/BoldChatWebHistory;

    # getter for: Lcom/boldchat/sdk/BoldChatWebHistory;->mLoadedListener:Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatWebHistory;->access$300(Lcom/boldchat/sdk/BoldChatWebHistory;)Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatWebHistory$JsObject;->this$0:Lcom/boldchat/sdk/BoldChatWebHistory;

    # getter for: Lcom/boldchat/sdk/BoldChatWebHistory;->mLoadedListener:Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatWebHistory;->access$300(Lcom/boldchat/sdk/BoldChatWebHistory;)Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryPageLoadedListener;->historyPageLoaded()V

    .line 256
    :cond_0
    return-void
.end method

.method public scrollToBottom()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatWebHistory$JsObject;->this$0:Lcom/boldchat/sdk/BoldChatWebHistory;

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatWebHistory;->scrollToBottom()V

    .line 245
    return-void
.end method
