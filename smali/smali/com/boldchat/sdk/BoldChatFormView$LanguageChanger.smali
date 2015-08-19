.class Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;
.super Ljava/lang/Object;
.source "BoldChatFormView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/boldchat/visitor/api/LanguageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatFormView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguageChanger"
.end annotation


# instance fields
.field mFloatLabelLayout:Lcom/boldchat/sdk/utils/FloatLabelLayout;

.field mLanguage:Ljava/lang/String;

.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatFormView;


# direct methods
.method public constructor <init>(Lcom/boldchat/sdk/BoldChatFormView;Ljava/lang/String;Lcom/boldchat/sdk/utils/FloatLabelLayout;)V
    .locals 0
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "floatLabelLayout"    # Lcom/boldchat/sdk/utils/FloatLabelLayout;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->mLanguage:Ljava/lang/String;

    .line 570
    iput-object p3, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->mFloatLabelLayout:Lcom/boldchat/sdk/utils/FloatLabelLayout;

    .line 571
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p3, :cond_3

    .line 579
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boldchat/visitor/api/FormFieldOption;

    .line 580
    .local v0, "option":Lcom/boldchat/visitor/api/FormFieldOption;
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->mLanguage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/FormFieldOption;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 581
    :cond_0
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatFormView;->access$300(Lcom/boldchat/sdk/BoldChatFormView;)Lcom/boldchat/visitor/api/Chat;

    move-result-object v1

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/FormFieldOption;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/boldchat/visitor/api/Chat;->changeLanguage(Ljava/lang/String;Lcom/boldchat/visitor/api/LanguageChangeListener;)V

    .line 583
    :cond_1
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->mFloatLabelLayout:Lcom/boldchat/sdk/utils/FloatLabelLayout;

    if-eqz v1, :cond_2

    .line 584
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->mFloatLabelLayout:Lcom/boldchat/sdk/utils/FloatLabelLayout;

    invoke-virtual {v1}, Lcom/boldchat/sdk/utils/FloatLabelLayout;->showLabel()V

    .line 589
    .end local v0    # "option":Lcom/boldchat/visitor/api/FormFieldOption;
    :cond_2
    :goto_0
    return-void

    .line 586
    :cond_3
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->mFloatLabelLayout:Lcom/boldchat/sdk/utils/FloatLabelLayout;

    if-eqz v1, :cond_2

    .line 587
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->mFloatLabelLayout:Lcom/boldchat/sdk/utils/FloatLabelLayout;

    invoke-virtual {v1}, Lcom/boldchat/sdk/utils/FloatLabelLayout;->hideLabel()V

    goto :goto_0
.end method

.method public onLanguageChange(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->mLanguage:Ljava/lang/String;

    .line 605
    new-instance v0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$1;

    invoke-direct {v0, p0}, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$1;-><init>(Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;)V

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatFormView;->access$500(Lcom/boldchat/sdk/BoldChatFormView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->runMain(Ljava/lang/Runnable;Landroid/content/Context;)V

    .line 638
    return-void
.end method

.method public onLanguageChangeFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 646
    new-instance v0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$2;

    invoke-direct {v0, p0, p1}, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$2;-><init>(Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/boldchat/sdk/BoldChatFormView;->access$500(Lcom/boldchat/sdk/BoldChatFormView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boldchat/sdk/BoldChatSession;->runMain(Ljava/lang/Runnable;Landroid/content/Context;)V

    .line 652
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->mFloatLabelLayout:Lcom/boldchat/sdk/utils/FloatLabelLayout;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->mFloatLabelLayout:Lcom/boldchat/sdk/utils/FloatLabelLayout;

    invoke-virtual {v0}, Lcom/boldchat/sdk/utils/FloatLabelLayout;->hideLabel()V

    .line 596
    :cond_0
    return-void
.end method
