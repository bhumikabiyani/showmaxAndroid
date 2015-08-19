.class Lcom/boldchat/sdk/BoldChatSession$7;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatSession;->fatalError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatSession;

.field final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatSession;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$7;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatSession$7;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 544
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatSession$7;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # getter for: Lcom/boldchat/sdk/BoldChatSession;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/boldchat/sdk/BoldChatSession;->access$300(Lcom/boldchat/sdk/BoldChatSession;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 545
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatSession$7;->val$error:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 546
    sget v3, Lcom/boldchat/sdk/R$string;->api_generic_ok:I

    new-instance v4, Lcom/boldchat/sdk/BoldChatSession$7$1;

    invoke-direct {v4, p0}, Lcom/boldchat/sdk/BoldChatSession$7$1;-><init>(Lcom/boldchat/sdk/BoldChatSession$7;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 553
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_0
    return-void

    .line 554
    :catch_0
    move-exception v1

    .line 555
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BOlD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to show error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/boldchat/sdk/BoldChatSession$7;->val$error:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    :try_start_1
    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatSession$7;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v3}, Lcom/boldchat/sdk/BoldChatSession;->closeChat()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 558
    :catch_1
    move-exception v2

    .line 559
    .local v2, "e2":Ljava/lang/Exception;
    const-string v3, "BOlD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to close the chat after error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/boldchat/sdk/BoldChatSession$7;->val$error:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
