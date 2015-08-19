.class Lcom/boldchat/sdk/BoldChatSession$7$1;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatSession$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/boldchat/sdk/BoldChatSession$7;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatSession$7;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$7$1;->this$1:Lcom/boldchat/sdk/BoldChatSession$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 548
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$7$1;->this$1:Lcom/boldchat/sdk/BoldChatSession$7;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$7;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->endChat(Z)V

    .line 549
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$7$1;->this$1:Lcom/boldchat/sdk/BoldChatSession$7;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$7;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatSession;->closeChat()V

    .line 550
    return-void
.end method
