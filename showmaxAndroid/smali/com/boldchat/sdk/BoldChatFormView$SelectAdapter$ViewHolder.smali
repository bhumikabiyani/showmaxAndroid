.class Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BoldChatFormView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field optionAvailText:Landroid/widget/TextView;

.field optionText:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;


# direct methods
.method private constructor <init>(Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;->this$1:Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;Lcom/boldchat/sdk/BoldChatFormView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;
    .param p2, "x1"    # Lcom/boldchat/sdk/BoldChatFormView$1;

    .prologue
    .line 555
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;-><init>(Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;)V

    return-void
.end method
