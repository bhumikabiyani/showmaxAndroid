.class Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;
.super Ljava/lang/Object;
.source "BoldChatWebHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatWebHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HistoryColor"
.end annotation


# instance fields
.field public color:I

.field public key:Ljava/lang/String;

.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatWebHistory;


# direct methods
.method public constructor <init>(Lcom/boldchat/sdk/BoldChatWebHistory;ILjava/lang/String;)V
    .locals 0
    .param p2, "color"    # I
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;->this$0:Lcom/boldchat/sdk/BoldChatWebHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput p2, p0, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;->color:I

    .line 279
    iput-object p3, p0, Lcom/boldchat/sdk/BoldChatWebHistory$HistoryColor;->key:Ljava/lang/String;

    .line 280
    return-void
.end method
