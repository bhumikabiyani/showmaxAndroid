.class Lcom/showmax/app/ui/ActivitySearch$4;
.super Ljava/lang/Object;
.source "ActivitySearch.java"

# interfaces
.implements Lcom/showmax/app/ui/widget/SearchView$SearchViewListener;


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
    .line 348
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySearch$4;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyBoardHidden()V
    .locals 4

    .prologue
    .line 352
    const-string v0, "[%s]::[mSearchViewListener]::[onKeyBoardHidden]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivitySearch;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lcom/showmax/app/ui/ActivitySearch$4;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    # invokes: Lcom/showmax/app/ui/ActivitySearch;->hideKeyboard()V
    invoke-static {v0}, Lcom/showmax/app/ui/ActivitySearch;->access$300(Lcom/showmax/app/ui/ActivitySearch;)V

    .line 354
    return-void
.end method
