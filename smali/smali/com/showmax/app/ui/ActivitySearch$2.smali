.class Lcom/showmax/app/ui/ActivitySearch$2;
.super Ljava/lang/Object;
.source "ActivitySearch.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 324
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySearch$2;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 328
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch$2;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/showmax/app/ui/ActivitySearch;->access$002(Lcom/showmax/app/ui/ActivitySearch;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch$2;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySearch$2;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    # getter for: Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivitySearch;->access$000(Lcom/showmax/app/ui/ActivitySearch;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/showmax/app/ui/ActivitySearch;->submitSearchQuery(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/showmax/app/ui/ActivitySearch;->access$200(Lcom/showmax/app/ui/ActivitySearch;Ljava/lang/String;)V

    .line 332
    const/4 v0, 0x1

    .line 334
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
