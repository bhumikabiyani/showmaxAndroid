.class Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$1;
.super Ljava/lang/Object;
.source "SlidingMenuHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$1;->this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$1;->this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    move-object v0, p1

    check-cast v0, Lcom/showmax/app/ui/widget/CheckableLinearLayout;

    # invokes: Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->setSectionItemChecked(Lcom/showmax/app/ui/widget/CheckableLinearLayout;)V
    invoke-static {v1, v0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->access$000(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;Lcom/showmax/app/ui/widget/CheckableLinearLayout;)V

    .line 214
    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$1;->this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    const v0, 0x7f0b0006

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/showmax/lib/api/model/catalogue/Section;

    # setter for: Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;
    invoke-static {v1, v0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->access$102(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;Lcom/showmax/lib/api/model/catalogue/Section;)Lcom/showmax/lib/api/model/catalogue/Section;

    .line 215
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$1;->this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    # getter for: Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mListener:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;
    invoke-static {v0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->access$200(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$1;->this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    # getter for: Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;
    invoke-static {v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->access$100(Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;)Lcom/showmax/lib/api/model/catalogue/Section;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$SlidingMenuHelperListener;->onSectionItemClick(Lcom/showmax/lib/api/model/catalogue/Section;)V

    .line 216
    iget-object v0, p0, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper$1;->this$0:Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;

    invoke-virtual {v0}, Lcom/showmax/app/ui/sidemenu/SlidingMenuHelper;->toggleMenu()V

    .line 217
    return-void
.end method
