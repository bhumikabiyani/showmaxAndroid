.class Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;
.super Ljava/lang/Object;
.source "BoldChatFormView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boldchat/sdk/BoldChatFormView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubmitButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/BoldChatFormView;


# direct methods
.method private constructor <init>(Lcom/boldchat/sdk/BoldChatFormView;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boldchat/sdk/BoldChatFormView;Lcom/boldchat/sdk/BoldChatFormView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boldchat/sdk/BoldChatFormView;
    .param p2, "x1"    # Lcom/boldchat/sdk/BoldChatFormView$1;

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;-><init>(Lcom/boldchat/sdk/BoldChatFormView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 308
    const/4 v6, 0x1

    .line 309
    .local v6, "isValidated":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mForm:Lcom/boldchat/visitor/api/Form;
    invoke-static {v13}, Lcom/boldchat/sdk/BoldChatFormView;->access$100(Lcom/boldchat/sdk/BoldChatFormView;)Lcom/boldchat/visitor/api/Form;

    move-result-object v13

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mForm:Lcom/boldchat/visitor/api/Form;
    invoke-static {v13}, Lcom/boldchat/sdk/BoldChatFormView;->access$100(Lcom/boldchat/sdk/BoldChatFormView;)Lcom/boldchat/visitor/api/Form;

    move-result-object v13

    invoke-virtual {v13}, Lcom/boldchat/visitor/api/Form;->getFormFields()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_b

    .line 310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mForm:Lcom/boldchat/visitor/api/Form;
    invoke-static {v13}, Lcom/boldchat/sdk/BoldChatFormView;->access$100(Lcom/boldchat/sdk/BoldChatFormView;)Lcom/boldchat/visitor/api/Form;

    move-result-object v13

    invoke-virtual {v13}, Lcom/boldchat/visitor/api/Form;->getFormFields()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boldchat/visitor/api/FormField;

    .line 311
    .local v3, "formField":Lcom/boldchat/visitor/api/FormField;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mFormValues:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/boldchat/sdk/BoldChatFormView;->access$200(Lcom/boldchat/sdk/BoldChatFormView;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 312
    .local v12, "valueView":Landroid/view/View;
    if-eqz v12, :cond_0

    .line 313
    instance-of v13, v12, Landroid/widget/EditText;

    if-eqz v13, :cond_6

    move-object v13, v12

    .line 314
    check-cast v13, Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/boldchat/visitor/api/FormField;->setValue(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v3}, Lcom/boldchat/visitor/api/FormField;->getType()Lcom/boldchat/visitor/api/FormFieldType;

    move-result-object v13

    sget-object v14, Lcom/boldchat/visitor/api/FormFieldType;->Email:Lcom/boldchat/visitor/api/FormFieldType;

    if-ne v13, v14, :cond_3

    invoke-virtual {v3}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 316
    invoke-virtual {v3}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x40

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 317
    .local v2, "atIndex":I
    if-lez v2, :cond_1

    invoke-virtual {v3}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-lt v2, v13, :cond_0

    :cond_1
    move-object v13, v12

    .line 318
    check-cast v13, Landroid/widget/EditText;

    const-string v14, "api#email#error"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {v15}, Lcom/boldchat/sdk/BoldChatFormView;->access$300(Lcom/boldchat/sdk/BoldChatFormView;)Lcom/boldchat/visitor/api/Chat;

    move-result-object v15

    invoke-virtual {v15}, Lcom/boldchat/visitor/api/Chat;->getBrandings()Ljava/util/Map;

    move-result-object v15

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 319
    if-eqz v6, :cond_2

    .line 320
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 321
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    invoke-virtual {v13, v12}, Lcom/boldchat/sdk/BoldChatFormView;->smoothScrollToCenter(Landroid/view/View;)V

    .line 323
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 325
    .end local v2    # "atIndex":I
    :cond_3
    invoke-virtual {v3}, Lcom/boldchat/visitor/api/FormField;->isRequired()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v3}, Lcom/boldchat/visitor/api/FormField;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object v13, v12

    .line 326
    check-cast v13, Landroid/widget/EditText;

    const-string v14, "api#chat#required_error"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mChat:Lcom/boldchat/visitor/api/Chat;
    invoke-static {v15}, Lcom/boldchat/sdk/BoldChatFormView;->access$300(Lcom/boldchat/sdk/BoldChatFormView;)Lcom/boldchat/visitor/api/Chat;

    move-result-object v15

    invoke-virtual {v15}, Lcom/boldchat/visitor/api/Chat;->getBrandings()Ljava/util/Map;

    move-result-object v15

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/boldchat/sdk/BoldChatSession;->getBranding(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 328
    if-eqz v6, :cond_4

    .line 329
    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    .line 330
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    invoke-virtual {v13, v12}, Lcom/boldchat/sdk/BoldChatFormView;->smoothScrollToCenter(Landroid/view/View;)V

    .line 332
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 334
    :cond_5
    check-cast v12, Landroid/widget/EditText;

    .end local v12    # "valueView":Landroid/view/View;
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 336
    .restart local v12    # "valueView":Landroid/view/View;
    :cond_6
    instance-of v13, v12, Landroid/widget/Spinner;

    if-eqz v13, :cond_8

    move-object v11, v12

    .line 337
    check-cast v11, Landroid/widget/Spinner;

    .line 338
    .local v11, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/boldchat/visitor/api/FormFieldOption;

    .line 339
    .local v10, "selectedItem":Lcom/boldchat/visitor/api/FormFieldOption;
    invoke-virtual {v11}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;

    .line 340
    .local v1, "adapter":Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;
    if-eqz v10, :cond_7

    .line 341
    invoke-virtual {v10}, Lcom/boldchat/visitor/api/FormFieldOption;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/boldchat/visitor/api/FormField;->setValue(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v3}, Lcom/boldchat/visitor/api/FormField;->isRequired()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 343
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->setErrorState(Z)V

    goto/16 :goto_0

    .line 345
    :cond_7
    invoke-virtual {v3}, Lcom/boldchat/visitor/api/FormField;->isRequired()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 346
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->setErrorState(Z)V

    .line 347
    invoke-virtual {v1}, Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;->notifyDataSetChanged()V

    .line 348
    if-eqz v6, :cond_0

    .line 349
    invoke-virtual {v11}, Landroid/widget/Spinner;->requestFocus()Z

    .line 350
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    invoke-virtual {v13, v11}, Lcom/boldchat/sdk/BoldChatFormView;->smoothScrollToCenter(Landroid/view/View;)V

    .line 351
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 354
    .end local v1    # "adapter":Lcom/boldchat/sdk/BoldChatFormView$SelectAdapter;
    .end local v10    # "selectedItem":Lcom/boldchat/visitor/api/FormFieldOption;
    .end local v11    # "spinner":Landroid/widget/Spinner;
    :cond_8
    instance-of v13, v12, Landroid/widget/RatingBar;

    if-eqz v13, :cond_0

    move-object v9, v12

    .line 355
    check-cast v9, Landroid/widget/RatingBar;

    .line 356
    .local v9, "ratingBar":Landroid/widget/RatingBar;
    invoke-virtual {v9}, Landroid/widget/RatingBar;->getRating()F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 357
    .local v8, "rating":I
    if-lez v8, :cond_9

    .line 358
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/boldchat/visitor/api/FormField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 359
    :cond_9
    invoke-virtual {v3}, Lcom/boldchat/visitor/api/FormField;->isRequired()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 361
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mRatingBarLabels:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/boldchat/sdk/BoldChatFormView;->access$400(Lcom/boldchat/sdk/BoldChatFormView;)Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 362
    .local v7, "label":Landroid/widget/TextView;
    if-eqz v7, :cond_a

    .line 363
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    invoke-virtual {v13}, Lcom/boldchat/sdk/BoldChatFormView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/boldchat/sdk/R$color;->bc_required:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    :cond_a
    if-eqz v6, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    invoke-virtual {v13, v9}, Lcom/boldchat/sdk/BoldChatFormView;->smoothScrollToCenter(Landroid/view/View;)V

    .line 367
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 374
    .end local v3    # "formField":Lcom/boldchat/visitor/api/FormField;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "label":Landroid/widget/TextView;
    .end local v8    # "rating":I
    .end local v9    # "ratingBar":Landroid/widget/RatingBar;
    .end local v12    # "valueView":Landroid/view/View;
    :cond_b
    if-eqz v6, :cond_c

    .line 375
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/boldchat/sdk/BoldChatFormView;->access$500(Lcom/boldchat/sdk/BoldChatFormView;)Landroid/content/Context;

    move-result-object v13

    const-string v14, "input_method"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 376
    .local v5, "imm":Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    invoke-virtual {v13}, Lcom/boldchat/sdk/BoldChatFormView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mSubmitListener:Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;
    invoke-static {v13}, Lcom/boldchat/sdk/BoldChatFormView;->access$600(Lcom/boldchat/sdk/BoldChatFormView;)Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/boldchat/sdk/BoldChatFormView$SubmitButtonListener;->this$0:Lcom/boldchat/sdk/BoldChatFormView;

    # getter for: Lcom/boldchat/sdk/BoldChatFormView;->mForm:Lcom/boldchat/visitor/api/Form;
    invoke-static {v14}, Lcom/boldchat/sdk/BoldChatFormView;->access$100(Lcom/boldchat/sdk/BoldChatFormView;)Lcom/boldchat/visitor/api/Form;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/boldchat/sdk/BoldChatFormView$SubmitListener;->onFormSubmit(Lcom/boldchat/visitor/api/Form;)V

    .line 379
    .end local v5    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_c
    return-void
.end method
