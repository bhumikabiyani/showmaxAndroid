.class Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$1;
.super Ljava/lang/Object;
.source "MaterialListPreference.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 4
    .param p1, "dialog"    # Lcom/afollestad/materialdialogs/MaterialDialog;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "which"    # I
    .param p4, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 73
    if-ltz p3, :cond_0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;

    # invokes: Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v1, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->access$000(Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;

    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->setValue(Ljava/lang/String;)V

    .line 78
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
