.class public Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
.super Ljava/lang/Object;
.source "AlertDialogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/AlertDialogWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

.field private negativeDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private neutralDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveDialogListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->neutralDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->positiveDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->negativeDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private addButtonsCallback()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->positiveDialogListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->negativeDialogListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v1, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$3;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$3;-><init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 211
    :cond_1
    return-void
.end method

.method private addListCallbacks()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v1, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$2;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$2;-><init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 184
    :cond_0
    return-void
.end method

.method private setUpMultiChoiceCallback([ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 5
    .param p1, "checkedItems"    # [Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 257
    const/4 v2, 0x0

    .line 259
    .local v2, "selectedIndicesArr":[Ljava/lang/Integer;
    if-eqz p1, :cond_2

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v1, "selectedIndices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 262
    aget-boolean v3, p1, v0

    if-eqz v3, :cond_0

    .line 263
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "selectedIndicesArr":[Ljava/lang/Integer;
    check-cast v2, [Ljava/lang/Integer;

    .line 269
    .end local v0    # "i":I
    .end local v1    # "selectedIndices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v2    # "selectedIndicesArr":[Ljava/lang/Integer;
    :cond_2
    iget-object v3, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v4, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;

    invoke-direct {v4, p0, p1, p2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;-><init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    invoke-virtual {v3, v2, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackMultiChoice([Ljava/lang/Integer;Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 289
    return-void
.end method


# virtual methods
.method public alwaysCallMultiChoiceCallback()Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallMultiChoiceCallback()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 253
    return-object p0
.end method

.method public alwaysCallSingleChoiceCallback()Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallSingleChoiceCallback()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 248
    return-object p0
.end method

.method public autoDismiss(Z)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "dismiss"    # Z

    .prologue
    .line 39
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 40
    return-object p0
.end method

.method public create()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->addButtonsCallback()V

    .line 165
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->addListCallbacks()V

    .line 166
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iput-object p1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    .line 154
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v1, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$1;

    invoke-direct {v1, p0, p2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$1;-><init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackCustom:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;

    .line 160
    return-object p0
.end method

.method public setCancelable(Z)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 122
    return-object p0
.end method

.method public setIcon(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->iconRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 65
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->icon(Landroid/graphics/drawable/Drawable;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 70
    return-object p0
.end method

.method public setIconAttribute(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "attrId"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->iconAttr(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 75
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 127
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 128
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 133
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 134
    return-object p0
.end method

.method public setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 45
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 50
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 228
    invoke-direct {p0, p2, p3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setUpMultiChoiceCallback([ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    .line 229
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/String;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "checkedItems"    # [Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 242
    invoke-direct {p0, p2, p3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setUpMultiChoiceCallback([ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    .line 243
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 81
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->negativeDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 88
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->negativeDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 89
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 109
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->neutralDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 110
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 116
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->neutralDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 117
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 332
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 333
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 337
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 338
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnKeyListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 347
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->keyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 348
    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnShowListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 342
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->showListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 343
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 95
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->positiveDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 96
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 102
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->positiveDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 103
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 321
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v1, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$6;

    invoke-direct {v1, p0, p3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$6;-><init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p2, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackSingleChoice(ILcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 328
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 301
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v1, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$5;

    invoke-direct {v1, p0, p3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$5;-><init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p2, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackSingleChoice(ILcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 308
    return-object p0
.end method

.method public setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 55
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 60
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 214
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(Landroid/view/View;Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 215
    return-object p0
.end method

.method public show()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->create()Landroid/app/Dialog;

    move-result-object v0

    .line 171
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 172
    return-object v0
.end method
