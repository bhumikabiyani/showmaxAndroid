.class Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;
.super Ljava/lang/Object;
.source "AlertDialogWrapper.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setUpMultiChoiceCallback([ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

.field final synthetic val$checkedItems:[Z

.field final synthetic val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$checkedItems:[Z

    iput-object p3, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;[Ljava/lang/Integer;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;
    .param p2, "which"    # [Ljava/lang/Integer;
    .param p3, "text"    # [Ljava/lang/CharSequence;

    .prologue
    .line 273
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 274
    .local v2, "whichList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$checkedItems:[Z

    if-eqz v3, :cond_1

    .line 275
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$checkedItems:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 277
    iget-object v3, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$checkedItems:[Z

    aget-boolean v1, v3, v0

    .line 279
    .local v1, "oldChecked":Z
    iget-object v3, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$checkedItems:[Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v3, v0

    .line 281
    iget-object v3, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$checkedItems:[Z

    aget-boolean v3, v3, v0

    if-eq v1, v3, :cond_0

    .line 282
    iget-object v3, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$listener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v4, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;->val$checkedItems:[Z

    aget-boolean v4, v4, v0

    invoke-interface {v3, p1, v0, v4}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 275
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "i":I
    .end local v1    # "oldChecked":Z
    :cond_1
    const/4 v3, 0x1

    return v3
.end method