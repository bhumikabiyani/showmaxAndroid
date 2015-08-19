.class Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$1;
.super Ljava/lang/Object;
.source "MaterialEditTextPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 91
    :cond_0
    return-void
.end method
