.class Lcom/showmax/app/ui/dialog/SimpleDialogHelper$2;
.super Ljava/lang/Object;
.source "SimpleDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 107
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$2;->this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 111
    const-string v0, "[%s]::[onCancel]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    # getter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$200()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$2;->this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mSimpleDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;
    invoke-static {v0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$000(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$2;->this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mSimpleDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;
    invoke-static {v0}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$000(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$2;->this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mDialogType:I
    invoke-static {v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$100(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;->onCancel(I)V

    .line 115
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$2;->this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    const/4 v1, 0x0

    # setter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mSimpleDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;
    invoke-static {v0, v1}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$002(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    .line 117
    :cond_0
    return-void
.end method
