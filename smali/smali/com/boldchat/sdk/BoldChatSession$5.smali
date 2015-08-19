.class Lcom/boldchat/sdk/BoldChatSession$5;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatSession;->updateTypingLabel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatSession;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatSession;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$5;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$5;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mBoldChatSessionListener:Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$100(Lcom/boldchat/sdk/BoldChatSession;)Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;->operatorTyping()V

    .line 507
    return-void
.end method
