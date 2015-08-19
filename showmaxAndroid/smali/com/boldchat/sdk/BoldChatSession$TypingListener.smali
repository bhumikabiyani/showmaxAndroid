.class Lcom/boldchat/sdk/BoldChatSession$TypingListener;
.super Ljava/lang/Object;
.source "BoldChatSession.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TypingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatSession;


# direct methods
.method private constructor <init>(Lcom/boldchat/sdk/BoldChatSession;)V
    .locals 0

    .prologue
    .line 1433
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatSession$TypingListener;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boldchat/sdk/BoldChatSession;Lcom/boldchat/sdk/BoldChatSession$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boldchat/sdk/BoldChatSession;
    .param p2, "x1"    # Lcom/boldchat/sdk/BoldChatSession$1;

    .prologue
    .line 1433
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatSession$TypingListener;-><init>(Lcom/boldchat/sdk/BoldChatSession;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 1447
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1448
    # getter for: Lcom/boldchat/sdk/BoldChatSession;->sChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {}, Lcom/boldchat/sdk/BoldChatSession;->access$400()Lcom/boldchat/visitor/api/Chat;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/boldchat/visitor/api/Chat;->setVisitorTyping(Z)V

    .line 1450
    :cond_0
    return-void

    .line 1448
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 1438
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1454
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatSession$TypingListener;->this$0:Lcom/boldchat/sdk/BoldChatSession;

    # invokes: Lcom/boldchat/sdk/BoldChatSession;->send()V
    invoke-static {v0}, Lcom/boldchat/sdk/BoldChatSession;->access$3100(Lcom/boldchat/sdk/BoldChatSession;)V

    .line 1456
    const/4 v0, 0x1

    .line 1458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 1443
    return-void
.end method
