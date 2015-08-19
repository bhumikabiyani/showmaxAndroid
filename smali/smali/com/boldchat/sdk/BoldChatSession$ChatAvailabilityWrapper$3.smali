.class Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$3;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;->onChatAvailabilityFailed(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;

.field final synthetic val$failType:I

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$3;->this$1:Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;

    iput p2, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$3;->val$failType:I

    iput-object p3, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$3;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$3;->this$1:Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper;->mAvailabilityListener:Lcom/boldchat/visitor/api/ChatAvailabilityListener;

    iget v1, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$3;->val$failType:I

    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatSession$ChatAvailabilityWrapper$3;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/boldchat/visitor/api/ChatAvailabilityListener;->onChatAvailabilityFailed(ILjava/lang/String;)V

    .line 1396
    return-void
.end method
