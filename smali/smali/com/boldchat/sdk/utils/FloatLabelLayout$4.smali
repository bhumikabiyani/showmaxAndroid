.class Lcom/boldchat/sdk/utils/FloatLabelLayout$4;
.super Ljava/lang/Object;
.source "FloatLabelLayout.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 177
    iput-object p1, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout$4;->this$0:Lcom/boldchat/sdk/utils/FloatLabelLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "focused"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout$4;->this$0:Lcom/boldchat/sdk/utils/FloatLabelLayout;

    # getter for: Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boldchat/sdk/utils/FloatLabelLayout;->access$000(Lcom/boldchat/sdk/utils/FloatLabelLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setActivated(Z)V

    .line 184
    :cond_0
    return-void
.end method
