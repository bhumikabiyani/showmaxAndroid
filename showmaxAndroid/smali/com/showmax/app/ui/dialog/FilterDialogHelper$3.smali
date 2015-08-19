.class Lcom/showmax/app/ui/dialog/FilterDialogHelper$3;
.super Ljava/lang/Object;
.source "FilterDialogHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/dialog/FilterDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/dialog/FilterDialogHelper;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper$3;->this$0:Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 166
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    .line 167
    .local v0, "spinnerId":I
    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 170
    :pswitch_0
    iget-object v2, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper$3;->this$0:Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper$3;->this$0:Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSections:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->access$500(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Section;

    # setter for: Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;
    invoke-static {v2, v1}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->access$402(Lcom/showmax/app/ui/dialog/FilterDialogHelper;Lcom/showmax/lib/api/model/catalogue/Section;)Lcom/showmax/lib/api/model/catalogue/Section;

    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v2, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper$3;->this$0:Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper$3;->this$0:Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mCategories:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->access$700(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Category;

    # setter for: Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;
    invoke-static {v2, v1}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->access$602(Lcom/showmax/app/ui/dialog/FilterDialogHelper;Lcom/showmax/lib/api/model/catalogue/Category;)Lcom/showmax/lib/api/model/catalogue/Category;

    goto :goto_0

    .line 176
    :pswitch_2
    iget-object v2, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper$3;->this$0:Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    iget-object v1, p0, Lcom/showmax/app/ui/dialog/FilterDialogHelper$3;->this$0:Lcom/showmax/app/ui/dialog/FilterDialogHelper;

    # getter for: Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mAssetTypes:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->access$900(Lcom/showmax/app/ui/dialog/FilterDialogHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    # setter for: Lcom/showmax/app/ui/dialog/FilterDialogHelper;->mSelectedAssetType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    invoke-static {v2, v1}, Lcom/showmax/app/ui/dialog/FilterDialogHelper;->access$802(Lcom/showmax/app/ui/dialog/FilterDialogHelper;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x7f0b00de
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
    .line 185
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
