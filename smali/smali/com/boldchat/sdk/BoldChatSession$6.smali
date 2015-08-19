.class Lcom/boldchat/sdk/BoldChatSession$6;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatSession;->setTypingText(Landroid/text/Spanned;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatSession;

.field final synthetic val$text:Landroid/text/Spanned;

.field final synthetic val$typingView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatSession;Landroid/text/Spanned;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$6;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatSession$6;->val$text:Landroid/text/Spanned;

    iput-object p3, p0, Lcom/boldchat/sdk/BoldChatSession$6;->val$typingView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$6;->val$text:Landroid/text/Spanned;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$6;->val$typingView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$6;->val$text:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$6;->val$typingView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$6;->val$typingView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$6;->val$typingView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
