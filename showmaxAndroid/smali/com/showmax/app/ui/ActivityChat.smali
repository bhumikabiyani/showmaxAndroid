.class public Lcom/showmax/app/ui/ActivityChat;
.super Lcom/showmax/app/ui/ActivityBase;
.source "ActivityChat.java"

# interfaces
.implements Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBoldChatSession:Lcom/boldchat/sdk/BoldChatSession;

.field private mBoldChatView:Lcom/boldchat/sdk/BoldChatView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/showmax/app/ui/ActivityChat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/showmax/app/ui/ActivityChat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/showmax/app/ui/ActivityBase;-><init>()V

    return-void
.end method

.method public static startChatActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "sourceContext"    # Landroid/content/Context;

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/showmax/app/ui/ActivityChat;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method


# virtual methods
.method public chatSessionClosed()V
    .locals 0

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityChat;->finish()V

    .line 192
    return-void
.end method

.method public chatSessionCreated()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public chatSessionEnded()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public chatSessionStarted()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method protected getSuccessorLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/showmax/app/ui/ActivityChat;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public messageArrived(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/util/Date;

    .prologue
    .line 173
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 46
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/showmax/app/ui/ActivityChat;->setHasSlidingMenu(Z)V

    .line 49
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/showmax/app/ui/ActivityChat;->setHasToolbar(ZZ)V

    .line 50
    const v1, 0x7f03001c

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityChat;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityChat;->hideActionBarLogo()V

    .line 53
    const v1, 0x7f0b00a1

    invoke-virtual {p0, v1}, Lcom/showmax/app/ui/ActivityChat;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/boldchat/sdk/BoldChatView;

    iput-object v1, p0, Lcom/showmax/app/ui/ActivityChat;->mBoldChatView:Lcom/boldchat/sdk/BoldChatView;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "department"

    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v2

    iget-object v2, v2, Lcom/showmax/app/Build;->BOLDCHAT_DEPARTMENT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v1, Lcom/boldchat/sdk/BoldChatSession$Builder;

    iget-object v2, p0, Lcom/showmax/app/ui/ActivityChat;->mBoldChatView:Lcom/boldchat/sdk/BoldChatView;

    invoke-static {}, Lcom/showmax/app/Build;->getInstance()Lcom/showmax/app/Build;

    move-result-object v3

    iget-object v3, v3, Lcom/showmax/app/Build;->API_KEY_BOLDCHAT:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/boldchat/sdk/BoldChatSession$Builder;-><init>(Lcom/boldchat/sdk/BoldChatView;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/boldchat/sdk/BoldChatSession$Builder;->setExtraData(Ljava/util/Map;)Lcom/boldchat/sdk/BoldChatSession$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boldchat/sdk/BoldChatSession$Builder;->build()Lcom/boldchat/sdk/BoldChatSession;

    move-result-object v1

    iput-object v1, p0, Lcom/showmax/app/ui/ActivityChat;->mBoldChatSession:Lcom/boldchat/sdk/BoldChatSession;

    .line 57
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityChat;->mBoldChatSession:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {p0}, Lcom/showmax/app/ui/ActivityChat;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/boldchat/sdk/BoldChatSession;->addMenuItems(Landroid/view/MenuInflater;Landroid/view/Menu;)V

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onDestroy()V

    .line 99
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityChat;->mBoldChatSession:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatSession;->removeListener()V

    .line 100
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityChat;->mBoldChatSession:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v0, p1}, Lcom/boldchat/sdk/BoldChatSession;->menuItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onPause()V

    .line 85
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/showmax/app/ui/ActivityBase;->onPostCreate(Landroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onResume()V

    .line 77
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityChat;->mBoldChatSession:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v0, p0}, Lcom/boldchat/sdk/BoldChatSession;->setListener(Lcom/boldchat/sdk/BoldChatSession$BoldChatSessionListener;)V

    .line 78
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityChat;->mBoldChatSession:Lcom/boldchat/sdk/BoldChatSession;

    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatSession;->start()V

    .line 79
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onStart()V

    .line 63
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/showmax/app/ui/ActivityBase;->onStop()V

    .line 91
    return-void
.end method

.method public operatorTyping()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method
