.class Lcom/boldchat/sdk/BoldChatSession$4;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatSession;->showEmailTranscriptForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatSession;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatSession;Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$4;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatSession$4;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/boldchat/sdk/BoldChatSession$4;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 439
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatSession$4;->val$dialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 440
    .local v0, "okButton":Landroid/widget/Button;
    new-instance v1, Lcom/boldchat/sdk/BoldChatSession$4$1;

    invoke-direct {v1, p0}, Lcom/boldchat/sdk/BoldChatSession$4$1;-><init>(Lcom/boldchat/sdk/BoldChatSession$4;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    return-void
.end method
