.class Lcom/showmax/app/ui/dialog/SimpleDialogHelper$3;
.super Ljava/lang/Object;
.source "SimpleDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 121
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$3;->this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

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

    .line 125
    const-string v0, "[%s]::[onDismiss]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    # getter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$200()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$3;->this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    # setter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mDialogType:I
    invoke-static {v0, v3}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$102(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;I)I

    .line 129
    iget-object v0, p0, Lcom/showmax/app/ui/dialog/SimpleDialogHelper$3;->this$0:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    # setter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->mSimpleDialogListener:Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;
    invoke-static {v0, v4}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$002(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;

    .line 130
    # setter for: Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->sInstance:Lcom/showmax/app/ui/dialog/SimpleDialogHelper;
    invoke-static {v4}, Lcom/showmax/app/ui/dialog/SimpleDialogHelper;->access$302(Lcom/showmax/app/ui/dialog/SimpleDialogHelper;)Lcom/showmax/app/ui/dialog/SimpleDialogHelper;

    .line 131
    return-void
.end method
