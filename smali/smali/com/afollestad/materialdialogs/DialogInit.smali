.class Lcom/afollestad/materialdialogs/DialogInit;
.super Ljava/lang/Object;
.source "DialogInit.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newPrimaryColor"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 388
    const v3, 0x1010036

    invoke-static {p0, v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    .line 389
    .local v1, "fallBackButtonColor":I
    if-nez p1, :cond_0

    move p1, v1

    .line 390
    :cond_0
    new-array v2, v7, [[I

    new-array v3, v6, [I

    const v4, -0x101009e

    aput v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v5, [I

    aput-object v3, v2, v6

    .line 394
    .local v2, "states":[[I
    new-array v0, v7, [I

    const v3, 0x3ecccccd    # 0.4f

    invoke-static {p1, v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->adjustAlpha(IF)I

    move-result v3

    aput v3, v0, v5

    aput p1, v0, v6

    .line 398
    .local v0, "colors":[I
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public static getInflateLayout(Lcom/afollestad/materialdialogs/MaterialDialog$Builder;)I
    .locals 2
    .param p0, "builder"    # Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 45
    sget v0, Lcom/afollestad/materialdialogs/R$layout;->md_dialog_custom:I

    .line 55
    :goto_0
    return v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 47
    :cond_2
    sget v0, Lcom/afollestad/materialdialogs/R$layout;->md_dialog_list:I

    goto :goto_0

    .line 48
    :cond_3
    iget v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress:I

    const/4 v1, -0x2

    if-le v0, v1, :cond_4

    .line 49
    sget v0, Lcom/afollestad/materialdialogs/R$layout;->md_dialog_progress:I

    goto :goto_0

    .line 50
    :cond_4
    iget-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->indeterminateProgress:Z

    if-eqz v0, :cond_5

    .line 51
    sget v0, Lcom/afollestad/materialdialogs/R$layout;->md_dialog_progress_indeterminate:I

    goto :goto_0

    .line 52
    :cond_5
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputCallback:Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;

    if-eqz v0, :cond_6

    .line 53
    sget v0, Lcom/afollestad/materialdialogs/R$layout;->md_dialog_input:I

    goto :goto_0

    .line 55
    :cond_6
    sget v0, Lcom/afollestad/materialdialogs/R$layout;->md_dialog_basic:I

    goto :goto_0
.end method

.method public static getTheme(Lcom/afollestad/materialdialogs/MaterialDialog$Builder;)I
    .locals 5
    .param p0, "builder"    # Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .prologue
    .line 38
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    sget v3, Lcom/afollestad/materialdialogs/R$attr;->md_dark_theme:I

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->theme:Lcom/afollestad/materialdialogs/Theme;

    sget-object v4, Lcom/afollestad/materialdialogs/Theme;->DARK:Lcom/afollestad/materialdialogs/Theme;

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v0

    .line 39
    .local v0, "darkTheme":Z
    if-eqz v0, :cond_1

    sget-object v1, Lcom/afollestad/materialdialogs/Theme;->DARK:Lcom/afollestad/materialdialogs/Theme;

    :goto_1
    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->theme:Lcom/afollestad/materialdialogs/Theme;

    .line 40
    if-eqz v0, :cond_2

    sget v1, Lcom/afollestad/materialdialogs/R$style;->MD_Dark:I

    :goto_2
    return v1

    .line 38
    .end local v0    # "darkTheme":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 39
    .restart local v0    # "darkTheme":Z
    :cond_1
    sget-object v1, Lcom/afollestad/materialdialogs/Theme;->LIGHT:Lcom/afollestad/materialdialogs/Theme;

    goto :goto_1

    .line 40
    :cond_2
    sget v1, Lcom/afollestad/materialdialogs/R$style;->MD_Light:I

    goto :goto_2
.end method

.method public static init(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 26
    .param p0, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;

    .prologue
    .line 60
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 63
    .local v5, "builder":Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    iget-boolean v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCancelable(Z)V

    .line 64
    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->backgroundColor:I

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 65
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$attr;->md_background_color:I

    invoke-static/range {v22 .. v23}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->backgroundColor:I

    .line 66
    :cond_0
    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->backgroundColor:I

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    move-object/from16 v22, v0

    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->backgroundColor:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setBackgroundColor(I)V

    .line 70
    :cond_1
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$attr;->md_positive_color:I

    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColor:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColor:I

    .line 71
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$attr;->md_neutral_color:I

    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralColor:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralColor:I

    .line 72
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$attr;->md_negative_color:I

    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColor:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColor:I

    .line 73
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$attr;->md_widget_color:I

    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    .line 76
    iget-boolean v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColorSet:Z

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 77
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x1010036

    invoke-static/range {v22 .. v23}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v21

    .line 78
    .local v21, "titleColorFallback":I
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$attr;->md_title_color:I

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColor:I

    .line 79
    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColor:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 81
    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColor:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/afollestad/materialdialogs/util/DialogUtils;->isColorDark(I)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 82
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->theme:Lcom/afollestad/materialdialogs/Theme;

    move-object/from16 v22, v0

    sget-object v23, Lcom/afollestad/materialdialogs/Theme;->DARK:Lcom/afollestad/materialdialogs/Theme;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 83
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x1010039

    invoke-static/range {v22 .. v23}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColor:I

    .line 88
    .end local v21    # "titleColorFallback":I
    :cond_2
    :goto_0
    iget-boolean v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColorSet:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    .line 89
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x1010038

    invoke-static/range {v22 .. v23}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v6

    .line 90
    .local v6, "contentColorFallback":I
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$attr;->md_content_color:I

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v1, v6}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    .line 91
    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ne v0, v6, :cond_3

    .line 93
    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/afollestad/materialdialogs/util/DialogUtils;->isColorDark(I)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 94
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->theme:Lcom/afollestad/materialdialogs/Theme;

    move-object/from16 v22, v0

    sget-object v23, Lcom/afollestad/materialdialogs/Theme;->DARK:Lcom/afollestad/materialdialogs/Theme;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 95
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x101003a

    invoke-static/range {v22 .. v23}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    .line 100
    .end local v6    # "contentColorFallback":I
    :cond_3
    :goto_1
    iget-boolean v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemColorSet:Z

    move/from16 v22, v0

    if-nez v22, :cond_4

    .line 101
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$attr;->md_item_color:I

    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    move/from16 v24, v0

    invoke-static/range {v22 .. v24}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemColor:I

    .line 104
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$id;->title:I

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->title:Landroid/widget/TextView;

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$id;->icon:I

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$id;->titleFrame:I

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->titleFrame:Landroid/view/View;

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$id;->content:I

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$id;->contentListView:I

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ListView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultPositive:I

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultNeutral:I

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$id;->buttonDefaultNegative:I

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 115
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputCallback:Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    if-nez v22, :cond_5

    .line 116
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x104000a

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText:Ljava/lang/CharSequence;

    .line 119
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v23, v0

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1a

    const/16 v22, 0x0

    :goto_2
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setVisibility(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v23, v0

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1b

    const/16 v22, 0x0

    :goto_3
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setVisibility(I)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v23, v0

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1c

    const/16 v22, 0x0

    :goto_4
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setVisibility(I)V

    .line 124
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1d

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :goto_5
    iget v12, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->maxIconSize:I

    .line 139
    .local v12, "maxIconSize":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v12, v0, :cond_6

    .line 140
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$attr;->md_icon_max_size:I

    invoke-static/range {v22 .. v23}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDimension(Landroid/content/Context;I)I

    move-result v12

    .line 141
    :cond_6
    iget-boolean v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->limitIconToDefaultSize:Z

    move/from16 v22, v0

    if-nez v22, :cond_7

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$attr;->md_icon_limit_icon_to_default_size:I

    invoke-static/range {v22 .. v23}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveBoolean(Landroid/content/Context;I)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 142
    :cond_7
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    sget v23, Lcom/afollestad/materialdialogs/R$dimen;->md_icon_max_size:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 143
    :cond_8
    const/16 v22, -0x1

    move/from16 v0, v22

    if-le v12, v0, :cond_9

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ImageView;->requestLayout()V

    .line 151
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v22

    sget v23, Lcom/afollestad/materialdialogs/R$attr;->md_divider:I

    invoke-static/range {v22 .. v23}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v8

    .line 152
    .local v8, "dividerFallback":I
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$attr;->md_divider_color:I

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dividerColor:I

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    move-object/from16 v22, v0

    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dividerColor:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setDividerColor(I)V

    .line 156
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    if-nez v22, :cond_1f

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->titleFrame:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_21

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    if-eqz v22, :cond_21

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    move-object/from16 v22, v0

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    move-object/from16 v22, v0

    new-instance v23, Landroid/text/method/LinkMovementMethod;

    invoke-direct/range {v23 .. v23}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    move-object/from16 v22, v0

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->regularFont:Landroid/graphics/Typeface;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentLineSpacingMultiplier:F

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 175
    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColor:I

    move/from16 v22, v0

    if-nez v22, :cond_20

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v23

    const v24, 0x1010036

    invoke-static/range {v23 .. v24}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 180
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    move-object/from16 v22, v0

    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    move-object/from16 v22, v0

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/afollestad/materialdialogs/GravityEnum;->getGravityInt()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setGravity(I)V

    .line 182
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x11

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_b

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    move-object/from16 v22, v0

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/afollestad/materialdialogs/GravityEnum;->getTextAlignment()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 191
    :cond_b
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    move-object/from16 v22, v0

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->buttonsGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setButtonGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    move-object/from16 v22, v0

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->btnStackedGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setButtonStackedGravity(Lcom/afollestad/materialdialogs/GravityEnum;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    move-object/from16 v22, v0

    iget-boolean v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->forceStacking:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->setForceStack(Z)V

    .line 195
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0xe

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_22

    .line 196
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x101038c

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v20

    .line 197
    .local v20, "textAllCaps":Z
    if-eqz v20, :cond_c

    .line 198
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$attr;->textAllCaps:I

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v20

    .line 204
    :cond_c
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v17, v0

    .line 205
    .local v17, "positiveTextView":Lcom/afollestad/materialdialogs/internal/MDButton;
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->mediumFont:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 206
    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setAllCapsCompat(Z)V

    .line 207
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColor:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/afollestad/materialdialogs/DialogInit;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v22, v0

    sget-object v23, Lcom/afollestad/materialdialogs/DialogAction;->POSITIVE:Lcom/afollestad/materialdialogs/DialogAction;

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->getButtonSelector(Lcom/afollestad/materialdialogs/DialogAction;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStackedSelector(Landroid/graphics/drawable/Drawable;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v22, v0

    sget-object v23, Lcom/afollestad/materialdialogs/DialogAction;->POSITIVE:Lcom/afollestad/materialdialogs/DialogAction;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->getButtonSelector(Lcom/afollestad/materialdialogs/DialogAction;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDButton;->setDefaultSelector(Landroid/graphics/drawable/Drawable;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v22, v0

    sget-object v23, Lcom/afollestad/materialdialogs/DialogAction;->POSITIVE:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTag(Ljava/lang/Object;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->positiveButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDButton;->setVisibility(I)V

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 218
    .local v13, "negativeTextView":Lcom/afollestad/materialdialogs/internal/MDButton;
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->mediumFont:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 219
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setAllCapsCompat(Z)V

    .line 220
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeColor:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/afollestad/materialdialogs/DialogInit;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v22, v0

    sget-object v23, Lcom/afollestad/materialdialogs/DialogAction;->NEGATIVE:Lcom/afollestad/materialdialogs/DialogAction;

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->getButtonSelector(Lcom/afollestad/materialdialogs/DialogAction;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStackedSelector(Landroid/graphics/drawable/Drawable;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v22, v0

    sget-object v23, Lcom/afollestad/materialdialogs/DialogAction;->NEGATIVE:Lcom/afollestad/materialdialogs/DialogAction;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->getButtonSelector(Lcom/afollestad/materialdialogs/DialogAction;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDButton;->setDefaultSelector(Landroid/graphics/drawable/Drawable;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v22, v0

    sget-object v23, Lcom/afollestad/materialdialogs/DialogAction;->NEGATIVE:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTag(Ljava/lang/Object;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->negativeButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDButton;->setVisibility(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    .line 231
    .local v14, "neutralTextView":Lcom/afollestad/materialdialogs/internal/MDButton;
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->mediumFont:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 232
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setAllCapsCompat(Z)V

    .line 233
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralColor:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/afollestad/materialdialogs/DialogInit;->getActionTextStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v22, v0

    sget-object v23, Lcom/afollestad/materialdialogs/DialogAction;->NEUTRAL:Lcom/afollestad/materialdialogs/DialogAction;

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->getButtonSelector(Lcom/afollestad/materialdialogs/DialogAction;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDButton;->setStackedSelector(Landroid/graphics/drawable/Drawable;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v22, v0

    sget-object v23, Lcom/afollestad/materialdialogs/DialogAction;->NEUTRAL:Lcom/afollestad/materialdialogs/DialogAction;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->getButtonSelector(Lcom/afollestad/materialdialogs/DialogAction;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDButton;->setDefaultSelector(Landroid/graphics/drawable/Drawable;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v22, v0

    sget-object v23, Lcom/afollestad/materialdialogs/DialogAction;->NEUTRAL:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDButton;->setTag(Ljava/lang/Object;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/internal/MDButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->neutralButton:Lcom/afollestad/materialdialogs/internal/MDButton;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDButton;->setVisibility(I)V

    .line 243
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackMultiChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 244
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    .line 245
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    if-gtz v22, :cond_f

    :cond_e
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11

    .line 246
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getListSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    if-nez v22, :cond_25

    .line 252
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackSingleChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;

    move-object/from16 v22, v0

    if-eqz v22, :cond_23

    .line 253
    sget-object v22, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->SINGLE:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    .line 262
    :cond_10
    :goto_a
    new-instance v22, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->getLayoutForType(Lcom/afollestad/materialdialogs/MaterialDialog$ListType;)I

    move-result v23

    sget v24, Lcom/afollestad/materialdialogs/R$id;->title:I

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:[Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialogAdapter;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;II[Ljava/lang/CharSequence;)V

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    .line 271
    :cond_11
    :goto_b
    invoke-static/range {p0 .. p0}, Lcom/afollestad/materialdialogs/DialogInit;->setupProgressDialog(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 274
    invoke-static/range {p0 .. p0}, Lcom/afollestad/materialdialogs/DialogInit;->setupInputDialog(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 277
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView:Landroid/view/View;

    move-object/from16 v22, v0

    if-eqz v22, :cond_13

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$id;->customViewFrame:I

    invoke-virtual/range {v22 .. v23}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    .line 279
    .local v9, "frame":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->customViewFrame:Landroid/widget/FrameLayout;

    .line 280
    iget-object v11, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView:Landroid/view/View;

    .line 281
    .local v11, "innerView":Landroid/view/View;
    iget-boolean v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->wrapCustomViewInScroll:Z

    move/from16 v22, v0

    if-eqz v22, :cond_12

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 285
    .local v18, "r":Landroid/content/res/Resources;
    sget v22, Lcom/afollestad/materialdialogs/R$dimen;->md_dialog_frame_margin:I

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 286
    .local v10, "framePadding":I
    new-instance v19, Landroid/widget/ScrollView;

    invoke-virtual/range {p0 .. p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 287
    .local v19, "sv":Landroid/widget/ScrollView;
    sget v22, Lcom/afollestad/materialdialogs/R$dimen;->md_content_padding_top:I

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 288
    .local v16, "paddingTop":I
    sget v22, Lcom/afollestad/materialdialogs/R$dimen;->md_content_padding_bottom:I

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 289
    .local v15, "paddingBottom":I
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    .line 290
    instance-of v0, v11, Landroid/widget/EditText;

    move/from16 v22, v0

    if-eqz v22, :cond_26

    .line 292
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v10, v1, v10, v15}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 298
    :goto_c
    new-instance v22, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    move-object/from16 v11, v19

    .line 303
    .end local v10    # "framePadding":I
    .end local v15    # "paddingBottom":I
    .end local v16    # "paddingTop":I
    .end local v18    # "r":Landroid/content/res/Resources;
    .end local v19    # "sv":Landroid/widget/ScrollView;
    :cond_12
    new-instance v22, Landroid/view/ViewGroup$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    .end local v9    # "frame":Landroid/widget/FrameLayout;
    .end local v11    # "innerView":Landroid/view/View;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->setOnShowListenerInternal()V

    .line 311
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->showListener:Landroid/content/DialogInterface$OnShowListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_14

    .line 312
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->showListener:Landroid/content/DialogInterface$OnShowListener;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 313
    :cond_14
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_15

    .line 314
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 315
    :cond_15
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16

    .line 316
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 317
    :cond_16
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_17

    .line 318
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->keyListener:Landroid/content/DialogInterface$OnKeyListener;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 321
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->invalidateList()V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setViewInternal(Landroid/view/View;)V

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->checkIfListInitScroll()V

    .line 324
    return-void

    .line 84
    .end local v8    # "dividerFallback":I
    .end local v12    # "maxIconSize":I
    .end local v13    # "negativeTextView":Lcom/afollestad/materialdialogs/internal/MDButton;
    .end local v14    # "neutralTextView":Lcom/afollestad/materialdialogs/internal/MDButton;
    .end local v17    # "positiveTextView":Lcom/afollestad/materialdialogs/internal/MDButton;
    .end local v20    # "textAllCaps":Z
    .restart local v21    # "titleColorFallback":I
    :cond_18
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->theme:Lcom/afollestad/materialdialogs/Theme;

    move-object/from16 v22, v0

    sget-object v23, Lcom/afollestad/materialdialogs/Theme;->LIGHT:Lcom/afollestad/materialdialogs/Theme;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 85
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x1010039

    invoke-static/range {v22 .. v23}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColor:I

    goto/16 :goto_0

    .line 96
    .end local v21    # "titleColorFallback":I
    .restart local v6    # "contentColorFallback":I
    :cond_19
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->theme:Lcom/afollestad/materialdialogs/Theme;

    move-object/from16 v22, v0

    sget-object v23, Lcom/afollestad/materialdialogs/Theme;->LIGHT:Lcom/afollestad/materialdialogs/Theme;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 97
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x101003a

    invoke-static/range {v22 .. v23}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    goto/16 :goto_1

    .line 119
    .end local v6    # "contentColorFallback":I
    :cond_1a
    const/16 v22, 0x8

    goto/16 :goto_2

    .line 120
    :cond_1b
    const/16 v22, 0x8

    goto/16 :goto_3

    .line 121
    :cond_1c
    const/16 v22, 0x8

    goto/16 :goto_4

    .line 128
    :cond_1d
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$attr;->md_icon:I

    invoke-static/range {v22 .. v23}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 129
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1e

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 133
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->icon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 159
    .end local v7    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "dividerFallback":I
    .restart local v12    # "maxIconSize":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->title:Landroid/widget/TextView;

    move-object/from16 v22, v0

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->title:Landroid/widget/TextView;

    move-object/from16 v22, v0

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->mediumFont:Landroid/graphics/Typeface;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->title:Landroid/widget/TextView;

    move-object/from16 v22, v0

    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleColor:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->title:Landroid/widget/TextView;

    move-object/from16 v22, v0

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/afollestad/materialdialogs/GravityEnum;->getGravityInt()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setGravity(I)V

    .line 163
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x11

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_a

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->title:Landroid/widget/TextView;

    move-object/from16 v22, v0

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->titleGravity:Lcom/afollestad/materialdialogs/GravityEnum;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/afollestad/materialdialogs/GravityEnum;->getTextAlignment()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto/16 :goto_6

    .line 178
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    move-object/from16 v22, v0

    iget v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveColor:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setLinkTextColor(I)V

    goto/16 :goto_7

    .line 186
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->content:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 200
    :cond_22
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->context:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/afollestad/materialdialogs/R$attr;->textAllCaps:I

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result v20

    .restart local v20    # "textAllCaps":Z
    goto/16 :goto_9

    .line 254
    .restart local v13    # "negativeTextView":Lcom/afollestad/materialdialogs/internal/MDButton;
    .restart local v14    # "neutralTextView":Lcom/afollestad/materialdialogs/internal/MDButton;
    .restart local v17    # "positiveTextView":Lcom/afollestad/materialdialogs/internal/MDButton;
    :cond_23
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackMultiChoice:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;

    move-object/from16 v22, v0

    if-eqz v22, :cond_24

    .line 255
    sget-object v22, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->MULTI:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    .line 256
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndices:[Ljava/lang/Integer;

    move-object/from16 v22, v0

    if-eqz v22, :cond_10

    .line 257
    new-instance v22, Ljava/util/ArrayList;

    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->selectedIndices:[Ljava/lang/Integer;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->selectedIndicesList:Ljava/util/List;

    goto/16 :goto_a

    .line 260
    :cond_24
    sget-object v22, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->REGULAR:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->listType:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    goto/16 :goto_a

    .line 264
    :cond_25
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;

    move/from16 v22, v0

    if-eqz v22, :cond_11

    .line 266
    iget-object v0, v5, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    check-cast v22, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/simplelist/MaterialSimpleListAdapter;->setDialog(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    goto/16 :goto_b

    .line 295
    .restart local v9    # "frame":Landroid/widget/FrameLayout;
    .restart local v10    # "framePadding":I
    .restart local v11    # "innerView":Landroid/view/View;
    .restart local v15    # "paddingBottom":I
    .restart local v16    # "paddingTop":I
    .restart local v18    # "r":Landroid/content/res/Resources;
    .restart local v19    # "sv":Landroid/widget/ScrollView;
    :cond_26
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v16

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v15}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 296
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v10, v0, v10, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_c
.end method

.method private static setupInputDialog(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 5
    .param p0, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;

    .prologue
    const/4 v4, -0x1

    .line 357
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 358
    .local v0, "builder":Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    const v2, 0x1020009

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    .line 359
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->regularFont:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 361
    iget-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputPrefill:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputPrefill:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->setInternalInputCallback()V

    .line 364
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputHint:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 366
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    iget v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 367
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    iget v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v2, v3}, Lcom/afollestad/materialdialogs/util/DialogUtils;->adjustAlpha(IF)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 368
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-static {v1, v2}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/EditText;I)V

    .line 370
    iget v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputType:I

    if-eq v1, v4, :cond_2

    .line 371
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    iget v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputType:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 372
    iget v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputType:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_2

    .line 374
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 378
    :cond_2
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    sget v2, Lcom/afollestad/materialdialogs/R$id;->minMax:I

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->inputMinMax:Landroid/widget/TextView;

    .line 379
    iget v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputMaxLength:I

    if-le v1, v4, :cond_3

    .line 380
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->invalidateInputMinMaxIndicator(I)V

    goto/16 :goto_0

    .line 382
    :cond_3
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->inputMinMax:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->inputMinMax:Landroid/widget/TextView;

    goto/16 :goto_0
.end method

.method private static setupProgressDialog(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 6
    .param p0, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;

    .prologue
    const/4 v5, 0x0

    .line 327
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 328
    .local v0, "builder":Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    iget-boolean v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->indeterminateProgress:Z

    if-nez v2, :cond_0

    iget v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress:I

    const/4 v3, -0x2

    if-le v2, v3, :cond_1

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    const v3, 0x102000d

    invoke-virtual {v2, v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 330
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    if-nez v2, :cond_2

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 331
    :cond_2
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    iget v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->widgetColor:I

    invoke-static {v2, v3}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/ProgressBar;I)V

    .line 333
    iget-boolean v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->indeterminateProgress:Z

    if-nez v2, :cond_1

    .line 334
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 335
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    iget v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progressMax:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 336
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    sget v3, Lcom/afollestad/materialdialogs/R$id;->label:I

    invoke-virtual {v2, v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressLabel:Landroid/widget/TextView;

    .line 337
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressLabel:Landroid/widget/TextView;

    iget v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressLabel:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->mediumFont:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 339
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->view:Lcom/afollestad/materialdialogs/internal/MDRootLayout;

    sget v3, Lcom/afollestad/materialdialogs/R$id;->minMax:I

    invoke-virtual {v2, v3}, Lcom/afollestad/materialdialogs/internal/MDRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressMinMax:Landroid/widget/TextView;

    .line 340
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressMinMax:Landroid/widget/TextView;

    iget v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->contentColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 341
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressMinMax:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->regularFont:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 342
    iget-boolean v2, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->showMinMax:Z

    if-eqz v2, :cond_3

    .line 343
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressMinMax:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressMinMax:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progressMax:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 346
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 347
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 351
    .end local v1    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_1
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressLabel:Landroid/widget/TextView;

    const-string v3, "0%"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 349
    :cond_3
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog;->mProgressMinMax:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
