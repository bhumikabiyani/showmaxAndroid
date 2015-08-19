.class Lcom/boldchat/sdk/utils/FloatLabelLayout$3;
.super Ljava/lang/Object;
.source "FloatLabelLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boldchat/sdk/utils/FloatLabelLayout;->setSpinner(Landroid/widget/Spinner;)V
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
    .line 161
    iput-object p1, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout$3;->this$0:Lcom/boldchat/sdk/utils/FloatLabelLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout$3;->this$0:Lcom/boldchat/sdk/utils/FloatLabelLayout;

    # getter for: Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boldchat/sdk/utils/FloatLabelLayout;->access$000(Lcom/boldchat/sdk/utils/FloatLabelLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout$3;->this$0:Lcom/boldchat/sdk/utils/FloatLabelLayout;

    invoke-virtual {v0}, Lcom/boldchat/sdk/utils/FloatLabelLayout;->hideLabel()V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout$3;->this$0:Lcom/boldchat/sdk/utils/FloatLabelLayout;

    invoke-virtual {v0}, Lcom/boldchat/sdk/utils/FloatLabelLayout;->showLabel()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
