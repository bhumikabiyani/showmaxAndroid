.class Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;
.super Landroid/widget/BaseAdapter;
.source "BoldChatFormView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatFormView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mErrorTextColor:I

.field private final mFormField:Lcom/boldchat/visitor/api/FormField;

.field private mHintTextColor:I

.field private mHtmlLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation
.end field

.field private mIsErrorState:Z

.field private mNormalTextColor:I

.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatFormView;


# direct methods
.method public constructor <init>(Lcom/boldchat/sdk/BoldChatFormView;Lcom/boldchat/visitor/api/FormField;)V
    .locals 2
    .param p2, "formField"    # Lcom/boldchat/visitor/api/FormField;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    .line 426
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 415
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mIsErrorState:Z

    .line 419
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mHtmlLabelCache:Ljava/util/HashMap;

    .line 427
    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mFormField:Lcom/boldchat/visitor/api/FormField;

    .line 428
    invoke-virtual {p1}, Lcom/boldchat/sdk/BoldChatFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/boldchat/sdk/R$color;->bc_select_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mNormalTextColor:I

    .line 429
    invoke-virtual {p1}, Lcom/boldchat/sdk/BoldChatFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/boldchat/sdk/R$color;->bc_placeholder:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mHintTextColor:I

    .line 430
    invoke-virtual {p1}, Lcom/boldchat/sdk/BoldChatFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/boldchat/sdk/R$color;->bc_required:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mErrorTextColor:I

    .line 431
    return-void
.end method

.method private fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 544
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mHtmlLabelCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 545
    .local v0, "html":Landroid/text/Spanned;
    if-nez v0, :cond_0

    .line 546
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 547
    iget-object v1, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mHtmlLabelCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mFormField:Lcom/boldchat/visitor/api/FormField;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/FormField;->getOptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mFormField:Lcom/boldchat/visitor/api/FormField;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/FormField;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/boldchat/visitor/api/FormFieldOption;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 458
    if-nez p1, :cond_0

    .line 459
    const/4 v0, 0x0

    .line 461
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mFormField:Lcom/boldchat/visitor/api/FormField;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/FormField;->getOptions()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boldchat/visitor/api/FormFieldOption;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->getItem(I)Lcom/boldchat/visitor/api/FormFieldOption;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 472
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 485
    if-nez p2, :cond_3

    .line 486
    iget-object v5, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    invoke-virtual {v5}, Lcom/boldchat/sdk/BoldChatFormView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 487
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/boldchat/sdk/R$layout;->bc_form_select_option:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 488
    new-instance v1, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;-><init>(Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;Lcom/boldchat/sdk/BoldChatFormView$1;)V

    .line 489
    .local v1, "holder":Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;
    sget v5, Lcom/boldchat/sdk/R$id;->bc_form_select_option:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;->optionText:Landroid/widget/TextView;

    .line 490
    sget v5, Lcom/boldchat/sdk/R$id;->bc_form_select_option_label:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;->optionAvailText:Landroid/widget/TextView;

    .line 491
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 496
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->getItem(I)Lcom/boldchat/visitor/api/FormFieldOption;

    move-result-object v3

    .line 499
    .local v3, "option":Lcom/boldchat/visitor/api/FormFieldOption;
    iget-object v5, v1, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;->optionText:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 500
    const-string v4, ""

    .line 501
    .local v4, "optionName":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 502
    if-nez p1, :cond_0

    .line 503
    iget-object v5, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mFormField:Lcom/boldchat/visitor/api/FormField;

    invoke-virtual {v5}, Lcom/boldchat/visitor/api/FormField;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 504
    iget-object v5, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mFormField:Lcom/boldchat/visitor/api/FormField;

    invoke-virtual {v5}, Lcom/boldchat/visitor/api/FormField;->isRequired()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 505
    const-string v5, "#%06X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/boldchat/sdk/BoldChatFormView;->access$500(Lcom/boldchat/sdk/BoldChatFormView;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/boldchat/sdk/R$color;->bc_required_label:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    const v9, 0xffffff

    and-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "color":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " <font color=\"%s\">%s</font>"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    const-string v9, "api#chat#required_label"

    iget-object v10, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {v10}, Lcom/boldchat/sdk/BoldChatFormView;->access$300(Lcom/boldchat/sdk/BoldChatFormView;)Lcom/boldchat/visitor/api/Chat;

    move-result-object v10

    invoke-virtual {v10}, Lcom/boldchat/visitor/api/Chat;->getBrandings()Ljava/util/Map;

    move-result-object v10

    iget-object v11, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/boldchat/sdk/BoldChatFormView;->access$500(Lcom/boldchat/sdk/BoldChatFormView;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 512
    .end local v0    # "color":Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v5, v1, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;->optionText:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 514
    if-nez p1, :cond_5

    iget-boolean v5, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mIsErrorState:Z

    if-eqz v5, :cond_5

    iget-object v5, v1, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;->optionText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v5

    iget-object v6, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    invoke-virtual {v6}, Lcom/boldchat/sdk/BoldChatFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/boldchat/sdk/R$color;->bc_required:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    if-eq v5, v6, :cond_5

    .line 515
    iget-object v5, v1, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;->optionText:Landroid/widget/TextView;

    iget v6, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mErrorTextColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 523
    .end local v4    # "optionName":Ljava/lang/String;
    :cond_1
    :goto_2
    if-eqz v3, :cond_8

    iget-object v5, v1, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;->optionAvailText:Landroid/widget/TextView;

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Lcom/boldchat/visitor/api/FormFieldOption;->getAvailableLabel()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mFormField:Lcom/boldchat/visitor/api/FormField;

    invoke-virtual {v5}, Lcom/boldchat/visitor/api/FormField;->isDepartmentStatusVisible()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 524
    iget-object v5, v1, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;->optionAvailText:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    iget-object v5, v1, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;->optionAvailText:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/boldchat/visitor/api/FormFieldOption;->getAvailableLabel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    sget-object v7, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 526
    invoke-virtual {v3}, Lcom/boldchat/visitor/api/FormFieldOption;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 527
    iget-object v5, v1, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;->optionAvailText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/boldchat/sdk/BoldChatFormView;->access$500(Lcom/boldchat/sdk/BoldChatFormView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/boldchat/sdk/R$color;->bc_online:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 535
    :cond_2
    :goto_3
    return-object p2

    .line 493
    .end local v1    # "holder":Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;
    .end local v3    # "option":Lcom/boldchat/visitor/api/FormFieldOption;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;
    goto/16 :goto_0

    .line 510
    .restart local v3    # "option":Lcom/boldchat/visitor/api/FormFieldOption;
    .restart local v4    # "optionName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Lcom/boldchat/visitor/api/FormFieldOption;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 516
    :cond_5
    if-nez p1, :cond_6

    .line 517
    iget-object v5, v1, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;->optionText:Landroid/widget/TextView;

    iget v6, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mHintTextColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 519
    :cond_6
    iget-object v5, v1, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;->optionText:Landroid/widget/TextView;

    iget v6, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mNormalTextColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 529
    .end local v4    # "optionName":Ljava/lang/String;
    :cond_7
    iget-object v5, v1, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;->optionAvailText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/boldchat/sdk/BoldChatFormView;->access$500(Lcom/boldchat/sdk/BoldChatFormView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/boldchat/sdk/R$color;->bc_offline:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 531
    :cond_8
    iget-object v5, v1, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;->optionAvailText:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 532
    iget-object v5, v1, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter$ViewHolder;->optionAvailText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public setErrorState(Z)V
    .locals 0
    .param p1, "isErrorState"    # Z

    .prologue
    .line 439
    iput-boolean p1, p0, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->mIsErrorState:Z

    .line 440
    return-void
.end method
