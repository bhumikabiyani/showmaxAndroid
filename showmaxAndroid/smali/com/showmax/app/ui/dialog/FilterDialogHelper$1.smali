.class Lcom/showmax/app/ui/dialog/FilterDialogHelper$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "FilterDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/showmax/app/ui/dialog/FilterDialogHelper;->showFilterDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/showmax/lib/api/model/catalogue/Section;Ljava/util/ArrayList;Lcom/showmax/lib/api/model/catalogue/Category;Ljava/util/ArrayList;Lcom/showmax/lib/api/model/catalogue/Asset$Type;Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/dialog/FilterDialogHelper;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mFilterDialogListener:Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;
    invoke-static {v0}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->access$100(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mFilterDialogListener:Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;
    invoke-static {v0}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->access$100(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mType:I
    invoke-static {v1}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->access$200(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;->onCancel(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 1
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    # invokes: Lcom/showmax/app/ui/dialog/FilterDialogHelper;->notifyFilterListener()V
    invoke-static {v0}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->access$000(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)V

    .line 110
    return-void
.end method
