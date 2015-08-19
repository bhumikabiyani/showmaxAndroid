.class public Lcom/boldchat/sdk/BoldChatFormView;
.super Landroid/widget/ScrollView;
.source "BoldChatFormView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boldchat/sdk/BoldChatFormView$1;,
        Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;,
        Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;,
        Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;,
        Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;
    }
.end annotation


# instance fields
.field private final mChat:Lcom/boldchat/visitor/api/Chat;

.field private final mContext:Landroid/content/Context;

.field private mForm:Lcom/boldchat/visitor/api/Form;

.field private mFormKeyLabels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/boldchat/visitor/api/FormField;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFormValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/boldchat/visitor/api/FormField;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMainLayout:Landroid/view/ViewGroup;

.field private mRatingBarLabels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/RatingBar;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mSubmitButton:Landroid/widget/Button;

.field private final mSubmitButtonLabelKey:Ljava/lang/String;

.field private mSubmitListener:Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;

.field private final mTitleKey:Ljava/lang/String;

.field private mTitleLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boldchat/visitor/api/Form;Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;Landroid/content/Context;Lcom/boldchat/visitor/api/Chat;)V
    .locals 11
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "titleKey"    # Ljava/lang/String;
    .param p3, "submitButtonLabel"    # Ljava/lang/String;
    .param p4, "submitButtonLabelKey"    # Ljava/lang/String;
    .param p5, "form"    # Lcom/boldchat/visitor/api/Form;
    .param p6, "submitListener"    # Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;
    .param p7, "context"    # Landroid/content/Context;
    .param p8, "chat"    # Lcom/boldchat/visitor/api/Chat;

    .prologue
    .line 67
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/boldchat/sdk/BoldChatFormView;->mFormKeyLabels:Ljava/util/HashMap;

    .line 47
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/boldchat/sdk/BoldChatFormView;->mFormValues:Ljava/util/HashMap;

    .line 48
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/boldchat/sdk/BoldChatFormView;->mRatingBarLabels:Ljava/util/HashMap;

    .line 49
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/boldchat/sdk/BoldChatFormView;->mSelectAdapters:Ljava/util/ArrayList;

    .line 69
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mSubmitListener:Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;

    .line 70
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mForm:Lcom/boldchat/visitor/api/Form;

    .line 71
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mContext:Landroid/content/Context;

    .line 72
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mChat:Lcom/boldchat/visitor/api/Chat;

    .line 73
    iput-object p2, p0, Lcom/boldchat/sdk/BoldChatFormView;->mTitleKey:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/boldchat/sdk/BoldChatFormView;->mSubmitButtonLabelKey:Ljava/lang/String;

    .line 76
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v8}, Lcom/boldchat/sdk/BoldChatFormView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/boldchat/sdk/BoldChatFormView;->setFillViewport(Z)V

    .line 79
    invoke-static/range {p7 .. p7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 80
    .local v7, "inflater":Landroid/view/LayoutInflater;
    sget v8, Lcom/boldchat/sdk/R$layout;->bc_form:I

    iget-object v9, p0, Lcom/boldchat/sdk/BoldChatFormView;->mMainLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/boldchat/sdk/BoldChatFormView;->mMainLayout:Landroid/view/ViewGroup;

    .line 82
    iget-object v8, p0, Lcom/boldchat/sdk/BoldChatFormView;->mMainLayout:Landroid/view/ViewGroup;

    sget v9, Lcom/boldchat/sdk/R$id;->bc_form_title:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/boldchat/sdk/BoldChatFormView;->mTitleLabel:Landroid/widget/TextView;

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v8, p0, Lcom/boldchat/sdk/BoldChatFormView;->mTitleLabel:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    sget-object v10, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 89
    :goto_0
    iget-object v8, p0, Lcom/boldchat/sdk/BoldChatFormView;->mMainLayout:Landroid/view/ViewGroup;

    sget v9, Lcom/boldchat/sdk/R$id;->bc_form_fields:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 91
    .local v5, "formFields":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .line 92
    .local v2, "floatTopIndex":I
    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Lcom/boldchat/visitor/api/Form;->getFormFields()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 93
    invoke-virtual/range {p5 .. p5}, Lcom/boldchat/visitor/api/Form;->getFormFields()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boldchat/visitor/api/FormField;

    .line 94
    .local v4, "formField":Lcom/boldchat/visitor/api/FormField;
    invoke-direct {p0, v7, v4}, Lcom/boldchat/sdk/BoldChatFormView;->getFormFieldLayout(Landroid/view/LayoutInflater;Lcom/boldchat/visitor/api/FormField;)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "fieldLayout":Landroid/view/View;
    invoke-virtual {v4}, Lcom/boldchat/visitor/api/FormField;->isFloatToTop()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 96
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "floatTopIndex":I
    .local v3, "floatTopIndex":I
    invoke-virtual {v5, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move v2, v3

    .end local v3    # "floatTopIndex":I
    .restart local v2    # "floatTopIndex":I
    goto :goto_1

    .line 86
    .end local v1    # "fieldLayout":Landroid/view/View;
    .end local v2    # "floatTopIndex":I
    .end local v4    # "formField":Lcom/boldchat/visitor/api/FormField;
    .end local v5    # "formFields":Landroid/view/ViewGroup;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v8, p0, Lcom/boldchat/sdk/BoldChatFormView;->mTitleLabel:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 98
    .restart local v1    # "fieldLayout":Landroid/view/View;
    .restart local v2    # "floatTopIndex":I
    .restart local v4    # "formField":Lcom/boldchat/visitor/api/FormField;
    .restart local v5    # "formFields":Landroid/view/ViewGroup;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 103
    .end local v1    # "fieldLayout":Landroid/view/View;
    .end local v4    # "formField":Lcom/boldchat/visitor/api/FormField;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v8, p0, Lcom/boldchat/sdk/BoldChatFormView;->mMainLayout:Landroid/view/ViewGroup;

    sget v9, Lcom/boldchat/sdk/R$id;->bc_form_submit:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/boldchat/sdk/BoldChatFormView;->mSubmitButton:Landroid/widget/Button;

    .line 104
    iget-object v8, p0, Lcom/boldchat/sdk/BoldChatFormView;->mSubmitButton:Landroid/widget/Button;

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    sget-object v10, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v8, v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 105
    iget-object v8, p0, Lcom/boldchat/sdk/BoldChatFormView;->mSubmitButton:Landroid/widget/Button;

    new-instance v9, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;-><init>(Lcom/boldchat/sdk/BoldChatFormView;Lcom/boldchat/sdk/BoldChatFormView$1;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v8, p0, Lcom/boldchat/sdk/BoldChatFormView;->mMainLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v8}, Lcom/boldchat/sdk/BoldChatFormView;->addView(Landroid/view/View;)V

    .line 108
    return-void
.end method

.method static synthetic access$100(Lcom/boldchat/sdk/BoldChatFormView;)Lcom/boldchat/visitor/api/Form;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatFormView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mForm:Lcom/boldchat/visitor/api/Form;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boldchat/sdk/BoldChatFormView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatFormView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mSelectAdapters:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/boldchat/sdk/BoldChatFormView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatFormView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mTitleKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/boldchat/sdk/BoldChatFormView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatFormView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mTitleLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/boldchat/sdk/BoldChatFormView;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatFormView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatFormView;->getLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/boldchat/sdk/BoldChatFormView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatFormView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mSubmitButtonLabelKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/boldchat/sdk/BoldChatFormView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatFormView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mSubmitButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boldchat/sdk/BoldChatFormView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatFormView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mFormValues:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boldchat/sdk/BoldChatFormView;)Lcom/boldchat/visitor/api/Chat;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatFormView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mChat:Lcom/boldchat/visitor/api/Chat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boldchat/sdk/BoldChatFormView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatFormView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mRatingBarLabels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boldchat/sdk/BoldChatFormView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatFormView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boldchat/sdk/BoldChatFormView;)Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatFormView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mSubmitListener:Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boldchat/sdk/BoldChatFormView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatFormView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mFormKeyLabels:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/boldchat/sdk/BoldChatFormView;Landroid/view/View;Lcom/boldchat/visitor/api/FormField;)V
    .locals 0
    .param p0, "x0"    # Lcom/boldchat/sdk/BoldChatFormView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/boldchat/visitor/api/FormField;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/boldchat/sdk/BoldChatFormView;->setLabel(Landroid/view/View;Lcom/boldchat/visitor/api/FormField;)V

    return-void
.end method

.method private addRequiredLabel(Lcom/boldchat/visitor/api/FormField;Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "field"    # Lcom/boldchat/visitor/api/FormField;
    .param p2, "baseLabel"    # Ljava/lang/CharSequence;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 273
    invoke-virtual {p1}, Lcom/boldchat/visitor/api/FormField;->isRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    const-string v1, "#%06X"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/boldchat/sdk/BoldChatFormView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/boldchat/sdk/R$color;->bc_required_label:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const v4, 0xffffff

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "color":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <font color=\"%s\">%s</font>"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    const-string v4, "api#chat#required_label"

    iget-object v5, p0, Lcom/boldchat/sdk/BoldChatFormView;->mChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v5}, Lcom/boldchat/visitor/api/Chat;->getBrandings()Ljava/util/Map;

    move-result-object v5

    invoke-static {v4, v5, p3}, Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    .line 277
    .end local v0    # "color":Ljava/lang/String;
    .end local p2    # "baseLabel":Ljava/lang/CharSequence;
    :cond_0
    return-object p2
.end method

.method private getFormFieldLayout(Landroid/view/LayoutInflater;Lcom/boldchat/visitor/api/FormField;)Landroid/view/View;
    .locals 18
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "formField"    # Lcom/boldchat/visitor/api/FormField;

    .prologue
    .line 118
    const/4 v10, -0x1

    .line 119
    .local v10, "layout":I
    sget-object v16, Lcom/boldchat/sdk/BoldChatFormView$1;->$SwitchMap$com$boldchat$visitor$api$FormFieldType:[I

    invoke-virtual/range {p2 .. p2}, Lcom/boldchat/visitor/api/FormField;->getType()Lcom/boldchat/visitor/api/FormFieldType;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/boldchat/visitor/api/FormFieldType;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 144
    :goto_0
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v10, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 146
    .local v5, "fieldLayout":Landroid/view/View;
    sget v16, Lcom/boldchat/sdk/R$id;->bc_form_label:I

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 147
    .local v8, "labelView":Landroid/widget/TextView;
    sget v16, Lcom/boldchat/sdk/R$id;->bc_form_text:I

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    .line 148
    .local v14, "textView":Landroid/widget/EditText;
    sget v16, Lcom/boldchat/sdk/R$id;->bc_form_select:I

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Spinner;

    .line 149
    .local v13, "spinnerView":Landroid/widget/Spinner;
    sget v16, Lcom/boldchat/sdk/R$id;->bc_form_rating:I

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RatingBar;

    .line 150
    .local v11, "ratingBar":Landroid/widget/RatingBar;
    sget v16, Lcom/boldchat/sdk/R$id;->bc_floating_label:I

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/boldchat/sdk/utils/FloatLabelLayout;

    .line 152
    .local v6, "floatingLabel":Lcom/boldchat/sdk/utils/FloatLabelLayout;
    if-eqz v8, :cond_0

    .line 153
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1}, Lcom/boldchat/sdk/BoldChatFormView;->setLabel(Landroid/view/View;Lcom/boldchat/visitor/api/FormField;)V

    .line 156
    :cond_0
    if-eqz v6, :cond_1

    .line 157
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v6, v1}, Lcom/boldchat/sdk/BoldChatFormView;->setLabel(Landroid/view/View;Lcom/boldchat/visitor/api/FormField;)V

    .line 160
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/boldchat/visitor/api/FormField;->getAdditionalHeading()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 161
    sget v16, Lcom/boldchat/sdk/R$id;->bc_form_additional_heading:I

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 162
    .local v3, "additionalHeading":Landroid/widget/TextView;
    if-eqz v3, :cond_2

    .line 163
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Lcom/boldchat/visitor/api/FormField;->getAdditionalHeading()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .end local v3    # "additionalHeading":Landroid/widget/TextView;
    :cond_2
    if-eqz v14, :cond_4

    .line 169
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/boldchat/sdk/BoldChatFormView;->setLabel(Landroid/view/View;Lcom/boldchat/visitor/api/FormField;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 171
    invoke-virtual/range {p2 .. p2}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatFormView;->mFormValues:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_4
    if-eqz v13, :cond_a

    .line 177
    new-instance v2, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;-><init>(Lcom/boldchat/sdk/BoldChatFormView;Lcom/boldchat/visitor/api/FormField;)V

    .line 178
    .local v2, "adapter":Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;
    invoke-virtual {v13, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatFormView;->mSelectAdapters:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    const/4 v12, 0x0

    .line 182
    .local v12, "selectionValue":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/boldchat/visitor/api/FormField;->getDefaultOption()Lcom/boldchat/visitor/api/FormFieldOption;

    move-result-object v16

    if-eqz v16, :cond_5

    .line 183
    invoke-virtual/range {p2 .. p2}, Lcom/boldchat/visitor/api/FormField;->getDefaultOption()Lcom/boldchat/visitor/api/FormFieldOption;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/boldchat/visitor/api/FormFieldOption;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 185
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_6

    .line 186
    invoke-virtual/range {p2 .. p2}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 188
    :cond_6
    if-eqz v12, :cond_7

    .line 189
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/boldchat/visitor/api/FormField;->getOptions()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_7

    .line 190
    invoke-virtual/range {p2 .. p2}, Lcom/boldchat/visitor/api/FormField;->getOptions()Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/boldchat/visitor/api/FormFieldOption;

    invoke-virtual/range {v16 .. v16}, Lcom/boldchat/visitor/api/FormFieldOption;->getValue()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 191
    add-int/lit8 v16, v7, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 197
    .end local v7    # "i":I
    :cond_7
    const-string v16, "language"

    invoke-virtual/range {p2 .. p2}, Lcom/boldchat/visitor/api/FormField;->getKey()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 198
    const/4 v9, 0x0

    .line 199
    .local v9, "language":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/boldchat/visitor/api/FormField;->getDefaultOption()Lcom/boldchat/visitor/api/FormFieldOption;

    move-result-object v16

    if-eqz v16, :cond_8

    .line 200
    invoke-virtual/range {p2 .. p2}, Lcom/boldchat/visitor/api/FormField;->getDefaultOption()Lcom/boldchat/visitor/api/FormFieldOption;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/boldchat/visitor/api/FormFieldOption;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 203
    :cond_8
    new-instance v16, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9, v6}, Lcom/boldchat/sdk/BoldChatFormView$LanguageChanger;-><init>(Lcom/boldchat/sdk/BoldChatFormView;Ljava/lang/String;Lcom/boldchat/sdk/utils/FloatLabelLayout;)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 206
    .end local v9    # "language":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatFormView;->mFormValues:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .end local v2    # "adapter":Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;
    .end local v12    # "selectionValue":Ljava/lang/String;
    :cond_a
    if-eqz v11, :cond_c

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatFormView;->mFormValues:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual/range {p2 .. p2}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_b

    .line 213
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 214
    .local v15, "value":I
    const/16 v16, 0x5

    move/from16 v0, v16

    if-gt v15, v0, :cond_b

    .line 215
    int-to-float v0, v15

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/RatingBar;->setRating(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v15    # "value":I
    :cond_b
    :goto_2
    if-eqz v8, :cond_c

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boldchat/sdk/BoldChatFormView;->mRatingBarLabels:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/boldchat/visitor/api/FormField;->isVisible()Z

    move-result v16

    if-nez v16, :cond_d

    .line 227
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 230
    :cond_d
    return-object v5

    .line 121
    .end local v5    # "fieldLayout":Landroid/view/View;
    .end local v6    # "floatingLabel":Lcom/boldchat/sdk/utils/FloatLabelLayout;
    .end local v8    # "labelView":Landroid/widget/TextView;
    .end local v11    # "ratingBar":Landroid/widget/RatingBar;
    .end local v13    # "spinnerView":Landroid/widget/Spinner;
    .end local v14    # "textView":Landroid/widget/EditText;
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lcom/boldchat/visitor/api/FormField;->isMultiLine()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 122
    sget v10, Lcom/boldchat/sdk/R$layout;->bc_form_text_multiline:I

    goto/16 :goto_0

    .line 124
    :cond_e
    sget v10, Lcom/boldchat/sdk/R$layout;->bc_form_text:I

    .line 126
    goto/16 :goto_0

    .line 128
    :pswitch_1
    sget v10, Lcom/boldchat/sdk/R$layout;->bc_form_email:I

    .line 129
    goto/16 :goto_0

    .line 131
    :pswitch_2
    sget v10, Lcom/boldchat/sdk/R$layout;->bc_form_phone:I

    .line 132
    goto/16 :goto_0

    .line 135
    :pswitch_3
    sget v10, Lcom/boldchat/sdk/R$layout;->bc_form_select:I

    .line 136
    goto/16 :goto_0

    .line 138
    :pswitch_4
    sget v10, Lcom/boldchat/sdk/R$layout;->bc_form_rating:I

    goto/16 :goto_0

    .line 189
    .restart local v2    # "adapter":Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;
    .restart local v5    # "fieldLayout":Landroid/view/View;
    .restart local v6    # "floatingLabel":Lcom/boldchat/sdk/utils/FloatLabelLayout;
    .restart local v7    # "i":I
    .restart local v8    # "labelView":Landroid/widget/TextView;
    .restart local v11    # "ratingBar":Landroid/widget/RatingBar;
    .restart local v12    # "selectionValue":Ljava/lang/String;
    .restart local v13    # "spinnerView":Landroid/widget/Spinner;
    .restart local v14    # "textView":Landroid/widget/EditText;
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 217
    .end local v2    # "adapter":Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;
    .end local v7    # "i":I
    .end local v12    # "selectionValue":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 218
    .local v4, "e":Ljava/lang/NumberFormatException;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/RatingBar;->setRating(F)V

    goto :goto_2

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mChat:Lcom/boldchat/visitor/api/Chat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/Chat;->getBrandings()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/Chat;->getBrandings()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/boldchat/sdk/BoldChatFormView;->mChat:Lcom/boldchat/visitor/api/Chat;

    invoke-virtual {v0}, Lcom/boldchat/visitor/api/Chat;->getBrandings()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getScrollTop(Landroid/view/View;)I
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 402
    if-eq p1, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_1

    .line 403
    :cond_0
    const/4 v0, 0x0

    .line 405
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/boldchat/sdk/BoldChatFormView;->getScrollTop(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private setLabel(Landroid/view/View;Lcom/boldchat/visitor/api/FormField;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "field"    # Lcom/boldchat/visitor/api/FormField;

    .prologue
    .line 240
    invoke-virtual {p2}, Lcom/boldchat/visitor/api/FormField;->getLabelBrandingKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/boldchat/sdk/BoldChatFormView;->getLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 241
    .local v0, "label":Ljava/lang/CharSequence;
    if-nez v0, :cond_3

    .line 242
    invoke-virtual {p2}, Lcom/boldchat/visitor/api/FormField;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Lcom/boldchat/sdk/BoldChatFormView;->addRequiredLabel(Lcom/boldchat/visitor/api/FormField;Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 246
    :goto_0
    invoke-virtual {p2}, Lcom/boldchat/visitor/api/FormField;->getLabelBrandingKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatFormView;->mFormKeyLabels:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 248
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v1, :cond_0

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .restart local v1    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v2, p0, Lcom/boldchat/sdk/BoldChatFormView;->mFormKeyLabels:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 253
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v1    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    instance-of v2, p1, Landroid/widget/EditText;

    if-eqz v2, :cond_4

    .line 257
    check-cast p1, Landroid/widget/EditText;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 263
    :cond_2
    :goto_1
    return-void

    .line 244
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, p2, v0, v2}, Lcom/boldchat/sdk/BoldChatFormView;->addRequiredLabel(Lcom/boldchat/visitor/api/FormField;Ljava/lang/CharSequence;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_4
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 259
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_1

    .line 260
    .restart local p1    # "view":Landroid/view/View;
    :cond_5
    instance-of v2, p1, Lcom/boldchat/sdk/utils/FloatLabelLayout;

    if-eqz v2, :cond_2

    .line 261
    check-cast p1, Lcom/boldchat/sdk/utils/FloatLabelLayout;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/boldchat/sdk/utils/FloatLabelLayout;->getLabel()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public smoothScrollToCenter(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatFormView;->getScrollTop(Landroid/view/View;)I

    move-result v3

    .line 388
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 389
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/boldchat/sdk/BoldChatFormView;->getHeight()I

    move-result v2

    .line 390
    .local v2, "scrollHeight":I
    shr-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v3

    shr-int/lit8 v5, v2, 0x1

    sub-int v1, v4, v5

    .line 391
    .local v1, "idealPosition":I
    if-gez v1, :cond_0

    .line 392
    const/4 v1, 0x0

    .line 393
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/boldchat/sdk/BoldChatFormView;->smoothScrollTo(II)V

    .line 394
    return-void
.end method
