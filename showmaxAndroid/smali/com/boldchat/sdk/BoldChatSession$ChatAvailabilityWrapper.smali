.class Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Lcom/boldchat/visitor/api/ChatAvailabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatAvailabilityWrapper"
.end annotation


# instance fields
.field mAvailabilityListener:Lcom/boldchat/visitor/api/ChatAvailabilityListener;

.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatSession;


# direct methods
.method public constructor <init>(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/visitor/api/ChatAvailabilityListener;)V
    .locals 0
    .param p2, "chatAvailabilityListener"    # Lcom/boldchat/visitor/api/ChatAvailabilityListener;

    .prologue
    .line 1349
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1350
    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;->mAvailabilityListener:Lcom/boldchat/visitor/api/ChatAvailabilityListener;

    .line 1351
    return-void
.end method


# virtual methods
.method public onChatAvailabilityFailed(ILjava/lang/String;)V
    .locals 2
    .param p1, "failType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;->mAvailabilityListener:Lcom/boldchat/visitor/api/ChatAvailabilityListener;

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    new-instance v1, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$3;-><init>(Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;ILjava/lang/String;)V

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->runMain(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->access$2400(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/Runnable;)V

    .line 1399
    :cond_0
    return-void
.end method

.method public onChatAvailable()V
    .locals 2

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;->mAvailabilityListener:Lcom/boldchat/visitor/api/ChatAvailabilityListener;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    new-instance v1, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$1;

    invoke-direct {v1, p0}, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$1;-><init>(Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;)V

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->runMain(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->access$2400(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/Runnable;)V

    .line 1366
    :cond_0
    return-void
.end method

.method public onChatUnavailable(Lcom/boldchat/visitor/api/UnavailableReason;)V
    .locals 2
    .param p1, "unavailableReason"    # Lcom/boldchat/visitor/api/UnavailableReason;

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;->mAvailabilityListener:Lcom/boldchat/visitor/api/ChatAvailabilityListener;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    new-instance v1, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$2;-><init>(Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;Lcom/boldchat/visitor/api/UnavailableReason;)V

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->runMain(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->access$2400(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/Runnable;)V

    .line 1382
    :cond_0
    return-void
.end method
