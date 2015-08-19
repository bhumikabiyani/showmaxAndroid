.class Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$2;
.super Ljava/lang/Object;
.source "BoldChatFormView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->onLanguageChangeFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$2;->this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$2;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 649
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$2;->this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatFormView;->access$500(Lcom/boldchat/sdk/BoldChatFormView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$2;->val$message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 650
    return-void
.end method
