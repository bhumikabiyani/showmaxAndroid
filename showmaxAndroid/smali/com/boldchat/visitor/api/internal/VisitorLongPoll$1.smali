.class Lcom/boldchat/visitor/api/internal/VisitorLongPoll$1;
.super Ljava/lang/Object;
.source "VisitorLongPoll.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->reconnectSocket()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

.field final synthetic val$sleep:J


# direct methods
.method constructor <init>(Lcom/boldchat/visitor/api/internal/VisitorLongPoll;J)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll$1;->this$0:Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    iput-wide p2, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll$1;->val$sleep:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 90
    :try_start_0
    iget-wide v2, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll$1;->val$sleep:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/boldchat/visitor/api/internal/VisitorLongPoll$1;->this$0:Lcom/boldchat/visitor/api/internal/VisitorLongPoll;

    invoke-virtual {v1}, Lcom/boldchat/visitor/api/internal/VisitorLongPoll;->connect()Z

    .line 95
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
