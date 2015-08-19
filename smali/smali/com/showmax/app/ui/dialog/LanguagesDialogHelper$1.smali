.class Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$1;
.super Ljava/lang/Object;
.source "LanguagesDialogHelper.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->showLanguageDialog(Landroid/content/Context;IILjava/util/ArrayList;Lcom/showmax/lib/api/model/catalogue/Language;Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 6
    .param p1, "materialDialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 89
    iget-object v1, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mLanguages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->access$000(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Language;

    .line 90
    .local v0, "selectedLanguage":Lcom/showmax/lib/api/model/catalogue/Language;
    const-string v1, "[%s]::[onSelection]::[%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    # getter for: Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->access$100()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/showmax/lib/api/model/catalogue/Language;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mLanguagesDialogListener:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;
    invoke-static {v1}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->access$200(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;)Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mLanguagesDialogListener:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;
    invoke-static {v1}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->access$200(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;)Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mType:I
    invoke-static {v2}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->access$300(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;->onLanguageSelected(ILcom/showmax/lib/api/model/catalogue/Language;)V

    .line 96
    :cond_0
    return v5
.end method
