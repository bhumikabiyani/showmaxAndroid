.class Lcom/showmax/app/ui/dialog/FilterDialogHelper$2;
.super Ljava/lang/Object;
.source "FilterDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 119
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper$2;->this$0:Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper$2;->this$0:Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    # invokes: Lcom/showmax/app/ui/dialog/FilterDialogHelper;->cleanUp()V
    invoke-static {v0}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->access$300(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)V

    .line 123
    return-void
.end method
