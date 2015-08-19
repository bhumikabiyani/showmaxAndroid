.class Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$1;
.super Ljava/lang/Object;
.source "BoldChatFormView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->onLanguageChange(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$1;->this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 610
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$1;->this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

    iget-object v7, v7, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mFormKeyLabels:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/boldchat/sdk/BoldChatFormView;->access$800(Lcom/boldchat/sdk/BoldChatFormView;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boldchat/visitor/api/FormField;

    .line 611
    .local v1, "field":Lcom/boldchat/visitor/api/FormField;
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$1;->this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

    iget-object v7, v7, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mFormKeyLabels:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/boldchat/sdk/BoldChatFormView;->access$800(Lcom/boldchat/sdk/BoldChatFormView;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 612
    .local v6, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 613
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 614
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$1;->this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

    iget-object v7, v7, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # invokes: Lcom/boldchat/sdk/BoldChatFormView;->setLabel(Landroid/view/View;Lcom/boldchat/visitor/api/FormField;)V
    invoke-static {v7, v5, v1}, Lcom/boldchat/sdk/BoldChatFormView;->access$900(Lcom/boldchat/sdk/BoldChatFormView;Landroid/view/View;Lcom/boldchat/visitor/api/FormField;)V

    goto :goto_0

    .line 619
    .end local v1    # "field":Lcom/boldchat/visitor/api/FormField;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$1;->this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

    iget-object v7, v7, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mSelectAdapters:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/boldchat/sdk/BoldChatFormView;->access$1000(Lcom/boldchat/sdk/BoldChatFormView;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;

    .line 620
    .local v0, "adapter":Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;
    invoke-virtual {v0}, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 623
    .end local v0    # "adapter":Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;
    :cond_3
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$1;->this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

    iget-object v7, v7, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mTitleKey:Ljava/lang/String;
    invoke-static {v7}, Lcom/boldchat/sdk/BoldChatFormView;->access$1100(Lcom/boldchat/sdk/BoldChatFormView;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$1;->this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

    iget-object v7, v7, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mTitleLabel:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/boldchat/sdk/BoldChatFormView;->access$1200(Lcom/boldchat/sdk/BoldChatFormView;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 624
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$1;->this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

    iget-object v7, v7, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    iget-object v8, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$1;->this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

    iget-object v8, v8, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mTitleKey:Ljava/lang/String;
    invoke-static {v8}, Lcom/boldchat/sdk/BoldChatFormView;->access$1100(Lcom/boldchat/sdk/BoldChatFormView;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/boldchat/sdk/BoldChatFormView;->getLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v7, v8}, Lcom/boldchat/sdk/BoldChatFormView;->access$1300(Lcom/boldchat/sdk/BoldChatFormView;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 625
    .local v4, "label":Ljava/lang/CharSequence;
    if-eqz v4, :cond_4

    .line 626
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$1;->this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

    iget-object v7, v7, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mTitleLabel:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/boldchat/sdk/BoldChatFormView;->access$1200(Lcom/boldchat/sdk/BoldChatFormView;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    .end local v4    # "label":Ljava/lang/CharSequence;
    :cond_4
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$1;->this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

    iget-object v7, v7, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mSubmitButtonLabelKey:Ljava/lang/String;
    invoke-static {v7}, Lcom/boldchat/sdk/BoldChatFormView;->access$1400(Lcom/boldchat/sdk/BoldChatFormView;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$1;->this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

    iget-object v7, v7, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mSubmitButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/boldchat/sdk/BoldChatFormView;->access$1500(Lcom/boldchat/sdk/BoldChatFormView;)Landroid/widget/Button;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 630
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$1;->this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

    iget-object v7, v7, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    iget-object v8, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$1;->this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

    iget-object v8, v8, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mSubmitButtonLabelKey:Ljava/lang/String;
    invoke-static {v8}, Lcom/boldchat/sdk/BoldChatFormView;->access$1400(Lcom/boldchat/sdk/BoldChatFormView;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/boldchat/sdk/BoldChatFormView;->getLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v7, v8}, Lcom/boldchat/sdk/BoldChatFormView;->access$1300(Lcom/boldchat/sdk/BoldChatFormView;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 631
    .restart local v4    # "label":Ljava/lang/CharSequence;
    if-eqz v4, :cond_5

    .line 632
    iget-object v7, p0, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger$1;->this$1:Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

    iget-object v7, v7, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mSubmitButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/boldchat/sdk/BoldChatFormView;->access$1500(Lcom/boldchat/sdk/BoldChatFormView;)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 636
    .end local v4    # "label":Ljava/lang/CharSequence;
    :cond_5
    return-void
.end method
