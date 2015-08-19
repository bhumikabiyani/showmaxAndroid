.class Lcom/showmax/app/ui/dialog/ProgressDialogHelper$1;
.super Ljava/lang/Object;
.source "ProgressDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/showmax/lib/api/io/ApiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/dialog/ProgressDialogHelper;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/dialog/ProgressDialogHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 68
    const-string v0, "[%s]::[onCancel]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    # getter for: Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->access$000()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->mCancelableCallback:Lcom/showmax/lib/api/io/ApiCallback;
    invoke-static {v0}, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->access$100(Lcom/showmax/app/ui/dialog/ProgressDialogHelper;)Lcom/showmax/lib/api/io/ApiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->mCancelableCallback:Lcom/showmax/lib/api/io/ApiCallback;
    invoke-static {v0}, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->access$100(Lcom/showmax/app/ui/dialog/ProgressDialogHelper;)Lcom/showmax/lib/api/io/ApiCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/lib/api/io/ApiCallback;->cancel()V

    .line 72
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/ProgressDialogHelper$1;->this$0:Lcom/showmax/app/ui/dialog/ProgressDialogHelper;

    const/4 v1, 0x0

    # setter for: Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->mCancelableCallback:Lcom/showmax/lib/api/io/ApiCallback;
    invoke-static {v0, v1}, Lcom/showmax/app/ui/dialog/ProgressDialogHelper;->access$102(Lcom/showmax/app/ui/dialog/ProgressDialogHelper;Lcom/showmax/lib/api/io/ApiCallback;)Lcom/showmax/lib/api/io/ApiCallback;

    .line 74
    :cond_0
    return-void
.end method
