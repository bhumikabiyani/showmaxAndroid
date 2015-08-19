.class Lcom/showmax/app/ui/ActivitySplash$1;
.super Ljava/lang/Object;
.source "ActivitySplash.java"

# interfaces
.implements Lcom/showmax/app/ui/dialog/SimpleDialogHelper$SimpleDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivitySplash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivitySplash;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivitySplash;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivitySplash;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySplash$1;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 222
    return-void
.end method

.method public onNegativeButtonClick(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 201
    packed-switch p1, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 207
    :pswitch_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$1;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivitySplash;->finish()V

    goto :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onNeutralButtonClick(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 216
    return-void
.end method

.method public onPositiveButtonClick(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 167
    const-string v0, "[ActivitySplash]::[mMessageDialogListener]::[onPositiveButtonClick]::[%d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    packed-switch p1, :pswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$1;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # invokes: Lcom/showmax/app/ui/ActivitySplash;->showWelcomeVideo()V
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySplash;->access$000(Lcom/showmax/app/ui/ActivitySplash;)V

    goto :goto_0

    .line 174
    :pswitch_1
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$1;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # invokes: Lcom/showmax/app/ui/ActivitySplash;->verifyApp()V
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySplash;->access$100(Lcom/showmax/app/ui/ActivitySplash;)V

    goto :goto_0

    .line 177
    :pswitch_2
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$1;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # invokes: Lcom/showmax/app/ui/ActivitySplash;->startInitTask()V
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySplash;->access$200(Lcom/showmax/app/ui/ActivitySplash;)V

    goto :goto_0

    .line 180
    :pswitch_3
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$1;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # invokes: Lcom/showmax/app/ui/ActivitySplash;->verifyApp()V
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySplash;->access$100(Lcom/showmax/app/ui/ActivitySplash;)V

    goto :goto_0

    .line 183
    :pswitch_4
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$1;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySplash;->access$300(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->getBtnLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$1;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySplash;->access$300(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->getBtnLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$1;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/showmax/app/ui/ActivitySplash$1;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # getter for: Lcom/showmax/app/ui/ActivitySplash;->mAppPreflightResponseBody:Lcom/showmax/lib/api/model/AppPreflightResponseBody;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivitySplash;->access$300(Lcom/showmax/app/ui/ActivitySplash;)Lcom/showmax/lib/api/model/AppPreflightResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/showmax/lib/api/model/AppPreflightResponseBody;->getBtnLink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/showmax/app/ui/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    .line 187
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$1;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivitySplash;->finish()V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySplash$1;->this$0:Lcom/showmax/app/ui/ActivitySplash;

    # invokes: Lcom/showmax/app/ui/ActivitySplash;->startInitTask()V
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySplash;->access$200(Lcom/showmax/app/ui/ActivitySplash;)V

    goto :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
