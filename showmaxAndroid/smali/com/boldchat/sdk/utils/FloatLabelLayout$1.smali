.class Lcom/boldchat/sdk/utils/FloatLabelLayout$1;
.super Ljava/lang/Object;
.source "FloatLabelLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/utils/FloatLabelLayout;->setEditText(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boldchat/sdk/utils/FloatLabelLayout;


# direct methods
.method constructor <init>(Lcom/boldchat/sdk/utils/FloatLabelLayout;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout$1;->this$0:Lcom/boldchat/sdk/utils/FloatLabelLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout$1;->this$0:Lcom/boldchat/sdk/utils/FloatLabelLayout;

    invoke-virtual {v0}, Lcom/boldchat/sdk/utils/FloatLabelLayout;->hideLabel()V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout$1;->this$0:Lcom/boldchat/sdk/utils/FloatLabelLayout;

    invoke-virtual {v0}, Lcom/boldchat/sdk/utils/FloatLabelLayout;->showLabel()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 135
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 139
    return-void
.end method
