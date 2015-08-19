.class Lcom/showmax/app/ui/dialog/SimpleDialogHelper$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "SimpleDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/dialog/SimpleDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mSimpleDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;
    invoke-static {v0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$000(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mSimpleDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;
    invoke-static {v0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$000(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mDialogType:I
    invoke-static {v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$100(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;->onNegativeButtonClick(I)V

    .line 94
    :cond_0
    return-void
.end method

.method public onNeutral(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mSimpleDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;
    invoke-static {v0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$000(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mSimpleDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;
    invoke-static {v0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$000(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mDialogType:I
    invoke-static {v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$100(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;->onNeutralButtonClick(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mSimpleDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;
    invoke-static {v0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$000(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mSimpleDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;
    invoke-static {v0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$000(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mDialogType:I
    invoke-static {v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$100(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;->onPositiveButtonClick(I)V

    .line 85
    :cond_0
    return-void
.end method
