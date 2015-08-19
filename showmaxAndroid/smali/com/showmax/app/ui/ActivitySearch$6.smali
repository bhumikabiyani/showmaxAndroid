.class Lcom/showmax/app/ui/ActivitySearch$6;
.super Ljava/lang/Object;
.source "ActivitySearch.java"

# interfaces
.implements Lcom/showmax/app/ui/dialog/FilterDialogHelper$FilterDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivitySearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivitySearch;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivitySearch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivitySearch;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySearch$6;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 507
    return-void
.end method

.method public onFilterApplied(ILcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "section"    # Lcom/showmax/lib/api/model/catalogue/Section;
    .param p3, "category"    # Lcom/showmax/lib/api/model/catalogue/Category;
    .param p4, "assetType"    # Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .prologue
    const/4 v4, 0x3

    .line 493
    const-string v0, "[%s]::[onFilterApplied]::[%s]::[%s]::[%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivitySearch;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    aput-object p4, v1, v4

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch$6;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    # setter for: Lcom/showmax/app/ui/ActivitySearch;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;
    invoke-static {v0, p2}, Lcom/showmax/app/ui/ActivitySearch;->access$702(Lcom/showmax/app/ui/ActivitySearch;Lcom/showmax/lib/api/model/catalogue/Section;)Lcom/showmax/lib/api/model/catalogue/Section;

    .line 495
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch$6;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    # setter for: Lcom/showmax/app/ui/ActivitySearch;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;
    invoke-static {v0, p3}, Lcom/showmax/app/ui/ActivitySearch;->access$802(Lcom/showmax/app/ui/ActivitySearch;Lcom/showmax/lib/api/model/catalogue/Category;)Lcom/showmax/lib/api/model/catalogue/Category;

    .line 496
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch$6;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    # setter for: Lcom/showmax/app/ui/ActivitySearch;->mSelectedType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    invoke-static {v0, p4}, Lcom/showmax/app/ui/ActivitySearch;->access$902(Lcom/showmax/app/ui/ActivitySearch;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    .line 497
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch$6;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    # getter for: Lcom/showmax/app/ui/ActivitySearch;->mFragmentSearch:Lcom/showmax/app/ui/fragment/FragmentSearch;
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySearch;->access$400(Lcom/showmax/app/ui/ActivitySearch;)Lcom/showmax/app/ui/fragment/FragmentSearch;

    move-result-object v0

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySearch$6;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    # getter for: Lcom/showmax/app/ui/ActivitySearch;->mSelectedSection:Lcom/showmax/lib/api/model/catalogue/Section;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivitySearch;->access$700(Lcom/showmax/app/ui/ActivitySearch;)Lcom/showmax/lib/api/model/catalogue/Section;

    move-result-object v1

    iget-object v2, p0, Lcom/showmax/app/ui/ActivitySearch$6;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    # getter for: Lcom/showmax/app/ui/ActivitySearch;->mSelectedCategory:Lcom/showmax/lib/api/model/catalogue/Category;
    invoke-static {v2}, Lcom/showmax/app/ui/ActivitySearch;->access$800(Lcom/showmax/app/ui/ActivitySearch;)Lcom/showmax/lib/api/model/catalogue/Category;

    move-result-object v2

    iget-object v3, p0, Lcom/showmax/app/ui/ActivitySearch$6;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    # getter for: Lcom/showmax/app/ui/ActivitySearch;->mSelectedType:Lcom/showmax/lib/api/model/catalogue/Asset$Type;
    invoke-static {v3}, Lcom/showmax/app/ui/ActivitySearch;->access$900(Lcom/showmax/app/ui/ActivitySearch;)Lcom/showmax/lib/api/model/catalogue/Asset$Type;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/showmax/app/ui/fragment/FragmentSearch;->filter(Lcom/showmax/lib/api/model/catalogue/Section;Lcom/showmax/lib/api/model/catalogue/Category;Lcom/showmax/lib/api/model/catalogue/Asset$Type;)V

    .line 500
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch$6;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    invoke-virtual {v0}, Lcom/showmax/app/ui/ActivitySearch;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 501
    return-void
.end method
