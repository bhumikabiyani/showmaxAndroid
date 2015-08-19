.class Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$2;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;->onChatUnavailable(Lcom/boldchat/visitor/api/UnavailableReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;

.field final synthetic val$unavailableReason:Lcom/boldchat/visitor/api/UnavailableReason;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;Lcom/boldchat/visitor/api/UnavailableReason;)V
    .locals 0

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$2;->this$1:Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;

    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$2;->val$unavailableReason:Lcom/boldchat/visitor/api/UnavailableReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$2;->this$1:Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;->mAvailabilityListener:Lcom/boldchat/visitor/api/ChatAvailabilityListener;

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$2;->val$unavailableReason:Lcom/boldchat/visitor/api/UnavailableReason;

    invoke-interface {v0, v1}, Lcom/boldchat/visitor/api/ChatAvailabilityListener;->onChatUnavailable(Lcom/boldchat/visitor/api/UnavailableReason;)V

    .line 1379
    return-void
.end method
