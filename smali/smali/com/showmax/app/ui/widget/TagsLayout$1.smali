.class Lcom/showmax/app/ui/widget/TagsLayout$1;
.super Ljava/lang/Object;
.source "TagsLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/widget/TagsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/widget/TagsLayout;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/widget/TagsLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/widget/TagsLayout;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/showmax/app/ui/widget/TagsLayout$1;->this$0:Lcom/showmax/app/ui/widget/TagsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/showmax/app/ui/widget/TagsLayout$1;->this$0:Lcom/showmax/app/ui/widget/TagsLayout;

    # getter for: Lcom/showmax/app/ui/widget/TagsLayout;->mListener:Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/TagsLayout;->access$000(Lcom/showmax/app/ui/widget/TagsLayout;)Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/showmax/app/ui/widget/TagsLayout$1;->this$0:Lcom/showmax/app/ui/widget/TagsLayout;

    # getter for: Lcom/showmax/app/ui/widget/TagsLayout;->mListener:Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/TagsLayout;->access$000(Lcom/showmax/app/ui/widget/TagsLayout;)Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;

    move-result-object v0

    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/showmax/app/ui/widget/TagsLayout$TagsLayoutListener;->onTagClicked(Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method
