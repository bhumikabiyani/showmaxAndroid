.class Lcom/showmax/app/ui/ActivitySearch$3;
.super Ljava/lang/Object;
.source "ActivitySearch.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 339
    iput-object p1, p0, Lcom/showmax/app/ui/ActivitySearch$3;->this$0:Lcom/showmax/app/ui/ActivitySearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 343
    const-string v0, "[%s]::[mOnSearchFocusChangeListener]::[onFocusChange]::[%b]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/showmax/app/ui/ActivitySearch;->TAG:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    return-void
.end method
