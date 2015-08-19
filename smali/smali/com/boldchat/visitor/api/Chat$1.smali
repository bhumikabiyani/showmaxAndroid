.class Lcom/boldchat/visitor/api/Chat$1;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/visitor/api/Chat;->startChat(Lcom/boldchat/visitor/api/ChatStartListener;)V
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
    .line 254
    iput-object p1, p0, Lcom/boldchat/visitor/api/Chat$1;->this$0:Lcom/boldchat/visitor/api/Chat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/boldchat/visitor/api/Chat$1;->this$0:Lcom/boldchat/visitor/api/Chat;

    # invokes: Lcom/boldchat/visitor/api/Chat;->connectSockets()V
    invoke-static {v0}, Lcom/boldchat/visitor/api/Chat;->access$000(Lcom/boldchat/visitor/api/Chat;)V

    .line 258
    return-void
.end method
