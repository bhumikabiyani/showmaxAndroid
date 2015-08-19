.class public Lcom/boldchat/sdk/BoldChatViewManager;
.super Ljava/lang/Object;
.source "BoldChatViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boldchat/sdk/BoldChatViewManager$5;
    }
.end annotation


# instance fields
.field private mAnimationDuration:I

.field private mBrandings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBusyView:Landroid/view/ViewGroup;

.field private mCloseButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/boldchat/sdk/BoldChatState;

.field private mDesiredVisibility:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailTranscriptButton:Landroid/view/View;

.field private mEmailTranscriptMenuItem:Landroid/view/MenuItem;

.field private mEndButton:Landroid/widget/Button;

.field private mEndChatMenuItem:Landroid/view/MenuItem;

.field private mEndSeparator:Landroid/view/View;

.field private mFormView:Landroid/view/ViewGroup;

.field mMainHandler:Landroid/os/Handler;

.field private mMainView:Landroid/view/ViewGroup;

.field private mSendButton:Landroid/view/View;

.field private mTextInput:Landroid/widget/EditText;

.field private mTypingView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "busyView"    # Landroid/view/ViewGroup;
    .param p3, "formView"    # Landroid/view/ViewGroup;
    .param p4, "mainChatView"    # Landroid/view/ViewGroup;
    .param p5, "persistedText"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/boldchat/sdk/BoldChatState;->Idle:Lcom/boldchat/sdk/BoldChatState;

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mCurrentState:Lcom/boldchat/sdk/BoldChatState;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mDesiredVisibility:Ljava/util/HashMap;

    .line 49
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mMainHandler:Landroid/os/Handler;

    .line 52
    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mBusyView:Landroid/view/ViewGroup;

    .line 53
    iput-object p3, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mFormView:Landroid/view/ViewGroup;

    .line 54
    iput-object p4, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mMainView:Landroid/view/ViewGroup;

    .line 56
    sget v0, Lcom/boldchat/sdk/R$id;->bc_edit_text:I

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mTextInput:Landroid/widget/EditText;

    .line 57
    sget v0, Lcom/boldchat/sdk/R$id;->bc_send_button:I

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mSendButton:Landroid/view/View;

    .line 58
    sget v0, Lcom/boldchat/sdk/R$id;->bc_end_chat:I

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndButton:Landroid/widget/Button;

    .line 59
    sget v0, Lcom/boldchat/sdk/R$id;->bc_end_chat_separator:I

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndSeparator:Landroid/view/View;

    .line 60
    sget v0, Lcom/boldchat/sdk/R$id;->bc_email_transcript:I

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEmailTranscriptButton:Landroid/view/View;

    .line 61
    sget v0, Lcom/boldchat/sdk/R$id;->bc_close_button:I

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mCloseButton:Landroid/widget/Button;

    .line 62
    sget v0, Lcom/boldchat/sdk/R$id;->bc_typing_indicator:I

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mTypingView:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mTypingView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mTypingView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mTextInput:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    if-eqz p5, :cond_1

    .line 69
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mTextInput:Landroid/widget/EditText;

    invoke-virtual {v0, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/boldchat/sdk/R$integer;->bc_animation_duration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mAnimationDuration:I

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/boldchat/sdk/BoldChatViewManager;Lcom/boldchat/sdk/BoldChatState;Lcom/boldchat/sdk/BoldChatFormView;)V
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatViewManager;
    .param p1, "x1"    # Lcom/boldchat/sdk/BoldChatState;
    .param p2, "x2"    # Lcom/boldchat/sdk/BoldChatFormView;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/boldchat/sdk/BoldChatViewManager;->setStateMain(Lcom/boldchat/sdk/BoldChatState;Lcom/boldchat/sdk/BoldChatFormView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/boldchat/sdk/BoldChatViewManager;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatViewManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndChatMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boldchat/sdk/BoldChatViewManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatViewManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boldchat/sdk/BoldChatViewManager;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatViewManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEmailTranscriptMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boldchat/sdk/BoldChatViewManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatViewManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mDesiredVisibility:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boldchat/sdk/BoldChatViewManager;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatViewManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mFormView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private animateGone(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 328
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mDesiredVisibility:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 329
    .local v0, "currentVis":Ljava/lang/Integer;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mDesiredVisibility:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget v1, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mAnimationDuration:I

    if-lez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/boldchat/sdk/BoldChatViewManager$4;

    invoke-direct {v2, p0, p1}, Lcom/boldchat/sdk/BoldChatViewManager$4;-><init>(Lcom/boldchat/sdk/BoldChatViewManager;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 348
    :cond_1
    :goto_0
    return-void

    .line 345
    :cond_2
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mDesiredVisibility:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private animateVisible(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 299
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mDesiredVisibility:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 300
    .local v0, "currentVis":Ljava/lang/Integer;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mDesiredVisibility:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget v1, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mAnimationDuration:I

    if-lez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    .line 303
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mDesiredVisibility:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mAnimationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/boldchat/sdk/BoldChatViewManager$3;

    invoke-direct {v2, p0, p1}, Lcom/boldchat/sdk/BoldChatViewManager$3;-><init>(Lcom/boldchat/sdk/BoldChatViewManager;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 320
    :cond_1
    :goto_0
    return-void

    .line 317
    :cond_2
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mDesiredVisibility:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setStateMain(Lcom/boldchat/sdk/BoldChatState;Lcom/boldchat/sdk/BoldChatFormView;)V
    .locals 5
    .param p1, "newState"    # Lcom/boldchat/sdk/BoldChatState;
    .param p2, "form"    # Lcom/boldchat/sdk/BoldChatFormView;

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 117
    if-eqz p2, :cond_0

    .line 118
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mFormView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 119
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mFormView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 121
    :cond_0
    sget-object v0, Lcom/boldchat/sdk/BoldChatViewManager$5;->$SwitchMap$com$boldchat$sdk$BoldChatState:[I

    invoke-virtual {p1}, Lcom/boldchat/sdk/BoldChatState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 230
    :goto_0
    :pswitch_0
    return-void

    .line 126
    :pswitch_1
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatViewManager;->showBusy()V

    .line 127
    invoke-virtual {p0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->showChatMenu(Z)V

    goto :goto_0

    .line 130
    :pswitch_2
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatViewManager;->showFormView()V

    .line 131
    invoke-virtual {p0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->showChatMenu(Z)V

    goto :goto_0

    .line 134
    :pswitch_3
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatViewManager;->showBusy()V

    .line 135
    invoke-virtual {p0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->showChatMenu(Z)V

    goto :goto_0

    .line 138
    :pswitch_4
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatViewManager;->showFormView()V

    .line 139
    invoke-virtual {p0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->showChatMenu(Z)V

    goto :goto_0

    .line 142
    :pswitch_5
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatViewManager;->showBusy()V

    .line 143
    invoke-virtual {p0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->showChatMenu(Z)V

    goto :goto_0

    .line 146
    :pswitch_6
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mTextInput:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mTextInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mTextInput:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mSendButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mSendButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mSendButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 155
    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndChatMenuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndSeparator:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 158
    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndSeparator:Landroid/view/View;

    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndChatMenuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEmailTranscriptButton:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 162
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEmailTranscriptButton:Landroid/view/View;

    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndChatMenuItem:Landroid/view/MenuItem;

    if-nez v3, :cond_9

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEmailTranscriptButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 165
    :cond_4
    invoke-virtual {p0, v4}, Lcom/boldchat/sdk/BoldChatViewManager;->showChatMenu(Z)V

    .line 166
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mTypingView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 167
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mTypingView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mTypingView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 170
    :cond_5
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mCloseButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 171
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    :cond_6
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mBusyView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatViewManager;->animateGone(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mFormView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatViewManager;->animateGone(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mMainView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatViewManager;->animateVisible(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 155
    goto :goto_1

    :cond_8
    move v0, v2

    .line 158
    goto :goto_2

    :cond_9
    move v1, v2

    .line 162
    goto :goto_3

    .line 179
    :pswitch_7
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mCloseButton:Landroid/widget/Button;

    if-eqz v0, :cond_f

    .line 180
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mSendButton:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 181
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mSendButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    :cond_a
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndButton:Landroid/widget/Button;

    if-eqz v0, :cond_b

    .line 184
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 186
    :cond_b
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndSeparator:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 187
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndSeparator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_c
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEmailTranscriptButton:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 190
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEmailTranscriptButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :cond_d
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mTextInput:Landroid/widget/EditText;

    if-eqz v0, :cond_e

    .line 193
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mTextInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 195
    :cond_e
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mCloseButton:Landroid/widget/Button;

    const-string v2, "api#chat#close"

    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mBrandings:Ljava/util/Map;

    iget-object v4, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 207
    :goto_4
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mBusyView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatViewManager;->animateGone(Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mFormView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatViewManager;->animateGone(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mMainView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatViewManager;->animateVisible(Landroid/view/View;)V

    goto/16 :goto_0

    .line 198
    :cond_f
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndButton:Landroid/widget/Button;

    if-eqz v0, :cond_10

    .line 199
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 202
    :cond_10
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mTextInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 203
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mSendButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mTypingView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEmailTranscriptButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    .line 212
    :pswitch_8
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatViewManager;->showBusy()V

    .line 213
    invoke-virtual {p0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->showChatMenu(Z)V

    goto/16 :goto_0

    .line 216
    :pswitch_9
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatViewManager;->showFormView()V

    .line 217
    invoke-virtual {p0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->showChatMenu(Z)V

    goto/16 :goto_0

    .line 220
    :pswitch_a
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatViewManager;->showBusy()V

    .line 221
    invoke-virtual {p0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->showChatMenu(Z)V

    goto/16 :goto_0

    .line 224
    :pswitch_b
    invoke-direct {p0}, Lcom/boldchat/sdk/BoldChatViewManager;->showFormView()V

    .line 225
    invoke-virtual {p0, v1}, Lcom/boldchat/sdk/BoldChatViewManager;->showChatMenu(Z)V

    goto/16 :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private showBusy()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mBusyView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mFormView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatViewManager;->animateGone(Landroid/view/View;)V

    .line 235
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mMainView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatViewManager;->animateGone(Landroid/view/View;)V

    .line 236
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mBusyView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatViewManager;->animateVisible(Landroid/view/View;)V

    .line 238
    :cond_0
    return-void
.end method

.method private showFormView()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mBusyView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatViewManager;->animateGone(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mMainView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatViewManager;->animateGone(Landroid/view/View;)V

    .line 243
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mFormView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatViewManager;->animateVisible(Landroid/view/View;)V

    .line 244
    return-void
.end method


# virtual methods
.method public addMenuItems(Landroid/view/MenuInflater;Landroid/view/Menu;)V
    .locals 3
    .param p1, "inflater"    # Landroid/view/MenuInflater;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/16 v2, 0x8

    .line 269
    sget v0, Lcom/boldchat/sdk/R$menu;->bc_chat:I

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 270
    sget v0, Lcom/boldchat/sdk/R$id;->bc_end_chat:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndChatMenuItem:Landroid/view/MenuItem;

    .line 271
    sget v0, Lcom/boldchat/sdk/R$id;->bc_email_transcript:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEmailTranscriptMenuItem:Landroid/view/MenuItem;

    .line 272
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mCurrentState:Lcom/boldchat/sdk/BoldChatState;

    sget-object v1, Lcom/boldchat/sdk/BoldChatState;->ChatActive:Lcom/boldchat/sdk/BoldChatState;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/boldchat/sdk/BoldChatViewManager;->showChatMenu(Z)V

    .line 273
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEmailTranscriptButton:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEmailTranscriptButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 279
    :cond_1
    return-void

    .line 272
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEmailTranscriptMenuItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEmailTranscriptMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method public getEndButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getEndChatMenuItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndChatMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method public getMessageInputField()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mTextInput:Landroid/widget/EditText;

    return-object v0
.end method

.method public getTypingTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mTypingView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected setBrandings(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "brandings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mBrandings:Ljava/util/Map;

    .line 248
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/boldchat/sdk/BoldChatViewManager$2;

    invoke-direct {v1, p0, p1}, Lcom/boldchat/sdk/BoldChatViewManager$2;-><init>(Lcom/boldchat/sdk/BoldChatViewManager;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    return-void
.end method

.method public setMainViewClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "viewId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setState(Lcom/boldchat/sdk/BoldChatState;)V
    .locals 1
    .param p1, "newState"    # Lcom/boldchat/sdk/BoldChatState;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/boldchat/sdk/BoldChatViewManager;->setState(Lcom/boldchat/sdk/BoldChatState;Lcom/boldchat/sdk/BoldChatFormView;)V

    .line 76
    return-void
.end method

.method public setState(Lcom/boldchat/sdk/BoldChatState;Lcom/boldchat/sdk/BoldChatFormView;)V
    .locals 2
    .param p1, "newState"    # Lcom/boldchat/sdk/BoldChatState;
    .param p2, "form"    # Lcom/boldchat/sdk/BoldChatFormView;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/boldchat/sdk/BoldChatViewManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/boldchat/sdk/BoldChatViewManager$1;-><init>(Lcom/boldchat/sdk/BoldChatViewManager;Lcom/boldchat/sdk/BoldChatState;Lcom/boldchat/sdk/BoldChatFormView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mCurrentState:Lcom/boldchat/sdk/BoldChatState;

    .line 86
    invoke-static {p1}, Lcom/boldchat/sdk/BoldChatSession;->setCurrentState(Lcom/boldchat/sdk/BoldChatState;)V

    .line 87
    return-void
.end method

.method protected showChatMenu(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 287
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndChatMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEndChatMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEmailTranscriptMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatViewManager;->mEmailTranscriptMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 291
    :cond_1
    return-void
.end method
