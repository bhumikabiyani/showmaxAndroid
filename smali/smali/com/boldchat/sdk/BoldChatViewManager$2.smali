.class Lcom/boldchat/sdk/BoldChatViewManager$2;
.super Ljava/lang/Object;
.source "BoldChatViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatViewManager;->setBrandings(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatViewManager;

.field final synthetic val$brandings:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatViewManager;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatViewManager$2;->this$0:Lcom/boldchat/sdk/BoldChatViewManager;

    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatViewManager$2;->val$brandings:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 251
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager$2;->val$brandings:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager$2;->this$0:Lcom/boldchat/sdk/BoldChatViewManager;

    # getter for: Lcom/boldchat/sdk/BoldChatViewManager;->mEndChatMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->access$100(Lcom/boldchat/sdk/BoldChatViewManager;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager$2;->this$0:Lcom/boldchat/sdk/BoldChatViewManager;

    # getter for: Lcom/boldchat/sdk/BoldChatViewManager;->mEndChatMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->access$100(Lcom/boldchat/sdk/BoldChatViewManager;)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "api#chat#end"

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatViewManager$2;->val$brandings:Ljava/util/Map;

    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatViewManager$2;->this$0:Lcom/boldchat/sdk/BoldChatViewManager;

    # getter for: Lcom/boldchat/sdk/BoldChatViewManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/boldchat/sdk/BoldChatViewManager;->access$200(Lcom/boldchat/sdk/BoldChatViewManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager$2;->this$0:Lcom/boldchat/sdk/BoldChatViewManager;

    # getter for: Lcom/boldchat/sdk/BoldChatViewManager;->mEmailTranscriptMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->access$300(Lcom/boldchat/sdk/BoldChatViewManager;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager$2;->this$0:Lcom/boldchat/sdk/BoldChatViewManager;

    # getter for: Lcom/boldchat/sdk/BoldChatViewManager;->mEmailTranscriptMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatViewManager;->access$300(Lcom/boldchat/sdk/BoldChatViewManager;)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "api#chat#email_transcript"

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatViewManager$2;->val$brandings:Ljava/util/Map;

    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatViewManager$2;->this$0:Lcom/boldchat/sdk/BoldChatViewManager;

    # getter for: Lcom/boldchat/sdk/BoldChatViewManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/boldchat/sdk/BoldChatViewManager;->access$200(Lcom/boldchat/sdk/BoldChatViewManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 259
    :cond_1
    return-void
.end method
