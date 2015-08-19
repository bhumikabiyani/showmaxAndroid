.class Lcom/boldchat/visitor/api/Chat$8;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/visitor/api/Chat;->connectSockets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/visitor/api/Chat;


# direct methods
.method constructor <init>(Lcom/boldchat/visitor/api/Chat;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat$8;->this$0:Lcom/boldchat/visitor/api/Chat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 623
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$8;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->activeMessageProcessor:Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;
    invoke-static {v1}, Lcom/boldchat/visitor/api/Chat;->access$700(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    move-result-object v1

    if-nez v1, :cond_0

    .line 628
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$8;->this$0:Lcom/boldchat/visitor/api/Chat;

    # invokes: Lcom/boldchat/visitor/api/Chat;->connectLongPoll()V
    invoke-static {v1}, Lcom/boldchat/visitor/api/Chat;->access$800(Lcom/boldchat/visitor/api/Chat;)V

    .line 629
    iget-object v1, p0, Lcom/boldchat/visitor/api/Chat$8;->this$0:Lcom/boldchat/visitor/api/Chat;

    iget-object v2, p0, Lcom/boldchat/visitor/api/Chat$8;->this$0:Lcom/boldchat/visitor/api/Chat;

    # getter for: Lcom/boldchat/visitor/api/Chat;->longPollSocket:Lcom/boldchat/visitor/api/internal/VisitorLongPoll;
    invoke-static {v2}, Lcom/boldchat/visitor/api/Chat;->access$900(Lcom/boldchat/visitor/api/Chat;)Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    move-result-object v2

    # setter for: Lcom/boldchat/visitor/api/Chat;->activeMessageProcessor:Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;
    invoke-static {v1, v2}, Lcom/boldchat/visitor/api/Chat;->access$702(Lcom/boldchat/visitor/api/Chat;Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;)Lcom/boldchat/visitor/api/internal/VisitorMessageProcessor;

    .line 631
    :cond_0
    return-void

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
