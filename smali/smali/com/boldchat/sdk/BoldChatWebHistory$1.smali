.class Lcom/boldchat/sdk/BoldChatWebHistory$1;
.super Ljava/lang/Object;
.source "BoldChatWebHistory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatWebHistory;->scrollToBottom()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatWebHistory;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatWebHistory;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatWebHistory$1;->this$0:Lcom/boldchat/sdk/BoldChatWebHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatWebHistory$1;->this$0:Lcom/boldchat/sdk/BoldChatWebHistory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/boldchat/sdk/BoldChatWebHistory;->pageDown(Z)Z

    .line 174
    return-void
.end method
