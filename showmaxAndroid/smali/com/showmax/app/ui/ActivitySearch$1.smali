.class Lcom/showmax/app/ui/ActivitySearch$1;
.super Ljava/lang/Object;
.source "ActivitySearch.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 301
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySearch$1;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 319
    const-string v0, "[%s]::[mSearchTextWatcher]::[afterTextChanged]::[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivitySearch;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 305
    const-string v0, "[%s]::[mSearchTextWatcher]::[beforeTextChanged]::[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivitySearch;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 311
    const-string v0, "[%s]::[mSearchTextWatcher]::[onTextChanged]::[%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivitySearch;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch$1;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/showmax/app/ui/ActivitySearch;->access$002(Lcom/showmax/app/ui/ActivitySearch;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch$1;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    iget-object v1, p0, Lcom/showmax/app/ui/ActivitySearch$1;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    # getter for: Lcom/showmax/app/ui/ActivitySearch;->mSearchQuery:Ljava/lang/String;
    invoke-static {v1}, Lcom/showmax/app/ui/ActivitySearch;->access$000(Lcom/showmax/app/ui/ActivitySearch;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/showmax/app/ui/ActivitySearch;->startSearchQuery(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/showmax/app/ui/ActivitySearch;->access$100(Lcom/showmax/app/ui/ActivitySearch;Ljava/lang/String;)V

    .line 314
    return-void
.end method
