.class Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$3;
.super Ljava/lang/Object;
.source "LanguagesDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 119
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$3;->this$0:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 123
    const-string v0, "[%s]::[onCancel]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    # getter for: Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->access$100()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$3;->this$0:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mLanguagesDialogListener:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;
    invoke-static {v0}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->access$200(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;)Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$3;->this$0:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mLanguagesDialogListener:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;
    invoke-static {v0}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->access$200(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;)Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$3;->this$0:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mType:I
    invoke-static {v1}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->access$300(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;->onCancel(I)V

    .line 127
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$3;->this$0:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    const/4 v1, 0x0

    # setter for: Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mLanguagesDialogListener:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;
    invoke-static {v0, v1}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->access$202(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;)Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;

    .line 129
    :cond_0
    return-void
.end method
