.class public Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;
.super Ljava/lang/Object;
.source "SimpleDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/dialog/SimpleDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCancelable:Z

.field private mContext:Landroid/content/Context;

.field private mDialogType:I

.field private mMessage:Ljava/lang/String;

.field private mNegativeBtn:Ljava/lang/String;

.field private mNeutralBtn:Ljava/lang/String;

.field private mPositiveBtn:Ljava/lang/String;

.field private mSimpleDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialogType"    # I

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mContext:Landroid/content/Context;

    .line 151
    iput p2, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mDialogType:I

    .line 152
    return-void
.end method


# virtual methods
.method public cancelable(Z)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;
    .locals 0
    .param p1, "cancelable"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mCancelable:Z

    .line 225
    return-object p0
.end method

.method public listener(Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;
    .locals 0
    .param p1, "listener"    # Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mSimpleDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    .line 218
    return-object p0
.end method

.method public message(I)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;
    .locals 1
    .param p1, "messageResId"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->message(Ljava/lang/String;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public message(Ljava/lang/String;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mMessage:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public negativeBtn(I)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;
    .locals 1
    .param p1, "negativeBtnResId"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->negativeBtn(Ljava/lang/String;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public negativeBtn(Ljava/lang/String;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;
    .locals 0
    .param p1, "negativeBtn"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mNegativeBtn:Ljava/lang/String;

    .line 199
    return-object p0
.end method

.method public neutralBtn(I)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;
    .locals 1
    .param p1, "neutralBtnResId"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->neutralBtn(Ljava/lang/String;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public neutralBtn(Ljava/lang/String;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;
    .locals 0
    .param p1, "neutralBtn"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mNeutralBtn:Ljava/lang/String;

    .line 211
    return-object p0
.end method

.method public positiveBtn(I)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;
    .locals 1
    .param p1, "positiveBtnResId"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->positiveBtn(Ljava/lang/String;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public positiveBtn(Ljava/lang/String;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;
    .locals 0
    .param p1, "positiveBtn"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mPositiveBtn:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 231
    # invokes: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->getInstance()Lcom/showmax/app/ui/dialog/SimpleDialogHelper;
    invoke-static {}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$400()Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    move-result-object v1

    iget v2, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mDialogType:I

    # setter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mDialogType:I
    invoke-static {v1, v2}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$102(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;I)I

    .line 232
    # invokes: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->getInstance()Lcom/showmax/app/ui/dialog/SimpleDialogHelper;
    invoke-static {}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$400()Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mSimpleDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    # setter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mSimpleDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;
    invoke-static {v1, v2}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$002(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    .line 234
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    .local v0, "builder":Lcom/afollestad/materialdialogs/MaterialDialog$Builder;
    iget-boolean v1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 236
    iget-object v1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 237
    iget-object v1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 238
    iget-object v1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mPositiveBtn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 239
    iget-object v1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mNegativeBtn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 240
    iget-object v1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mNeutralBtn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 241
    # invokes: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->getInstance()Lcom/showmax/app/ui/dialog/SimpleDialogHelper;
    invoke-static {}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$400()Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    move-result-object v1

    # getter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mButtonCallback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
    invoke-static {v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$500(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 242
    # invokes: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->getInstance()Lcom/showmax/app/ui/dialog/SimpleDialogHelper;
    invoke-static {}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$400()Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    move-result-object v1

    # getter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;
    invoke-static {v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$600(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 243
    # invokes: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->getInstance()Lcom/showmax/app/ui/dialog/SimpleDialogHelper;
    invoke-static {}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$400()Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    move-result-object v1

    # getter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$700(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 244
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 245
    return-void
.end method

.method public title(I)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->title(Ljava/lang/String;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public title(Ljava/lang/String;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$Builder;->mTitle:Ljava/lang/String;

    .line 163
    return-object p0
.end method
