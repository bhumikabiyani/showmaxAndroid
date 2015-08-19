.class Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$4;
.super Ljava/lang/Object;
.source "LanguagesDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 133
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$4;->this$0:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 137
    const-string v0, "[%s]::[onDismiss]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    # getter for: Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->access$100()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$4;->this$0:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    # setter for: Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mType:I
    invoke-static {v0, v4}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->access$302(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;I)I

    .line 141
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$4;->this$0:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    # setter for: Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mLanguagesDialogListener:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;
    invoke-static {v0, v3}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->access$202(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;)Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$LanguagesDialogListener;

    .line 142
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper$4;->this$0:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    # setter for: Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->mLanguages:Ljava/util/ArrayList;
    invoke-static {v0, v3}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->access$002(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 143
    # setter for: Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->sInstance:Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;
    invoke-static {v3}, Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;->access$402(Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;)Lcom/showmax/app/ui/dialog/LanguagesDialogHelper;

    .line 144
    return-void
.end method
