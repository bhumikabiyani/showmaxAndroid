.class public Lcom/boldchat/sdk/BoldChatActivity;
.super Landroid/app/Activity;
.source "BoldChatActivity.java"

# interfaces
.implements Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;


# instance fields
.field mBoldChat:Lcom/boldchat/sdk/BoldChatSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public chatSessionClosed()V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatActivity;->finish()V

    .line 95
    return-void
.end method

.method public chatSessionCreated()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public chatSessionEnded()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public chatSessionStarted()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public messageArrived(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/String;
    .param p3, "sent"    # Ljava/util/Date;

    .prologue
    .line 79
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    sget v3, Lcom/boldchat/sdk/R$layout;->bc_chat_activity:I

    invoke-virtual {p0, v3}, Lcom/boldchat/sdk/BoldChatActivity;->setContentView(I)V

    .line 21
    sget v3, Lcom/boldchat/sdk/R$id;->bc_boldchat:I

    invoke-virtual {p0, v3}, Lcom/boldchat/sdk/BoldChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boldchat/sdk/BoldChatView;

    .line 23
    .local v0, "boldChatView":Lcom/boldchat/sdk/BoldChatView;
    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "api_key"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "chatAPIKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "server_set"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "serverSet":Ljava/lang/String;
    new-instance v3, Lcom/boldchat/sdk/BoldChatSession$Builder;

    invoke-direct {v3, v0, v1}, Lcom/boldchat/sdk/BoldChatSession$Builder;-><init>(Lcom/boldchat/sdk/BoldChatView;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/boldchat/sdk/BoldChatSession$Builder;->setServerSet(Ljava/lang/String;)Lcom/boldchat/sdk/BoldChatSession$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/boldchat/sdk/BoldChatSession$Builder;->build()Lcom/boldchat/sdk/BoldChatSession;

    move-result-object v3

    iput-object v3, p0, Lcom/boldchat/sdk/BoldChatActivity;->mBoldChat:Lcom/boldchat/sdk/BoldChatSession;

    .line 31
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatActivity;->mBoldChat:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/boldchat/sdk/BoldChatSession;->addMenuItems(Landroid/view/MenuInflater;Landroid/view/Menu;)V

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 46
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatActivity;->mBoldChat:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatSession;->removeListener()V

    .line 47
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatActivity;->mBoldChat:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v0, p1}, Lcom/boldchat/sdk/BoldChatSession;->menuItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 37
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatActivity;->mBoldChat:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v0, p0}, Lcom/boldchat/sdk/BoldChatSession;->setListener(Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;)V

    .line 38
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatActivity;->mBoldChat:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatSession;->start()V

    .line 39
    return-void
.end method

.method public operatorTyping()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method
