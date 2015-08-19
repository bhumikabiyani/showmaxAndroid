.class Lcom/showmax/app/ui/widget/RefreshProgressBar$1;
.super Ljava/lang/Object;
.source "RefreshProgressBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/widget/RefreshProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/widget/RefreshProgressBar;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/widget/RefreshProgressBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/widget/RefreshProgressBar;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar$1;->this$0:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar$1;->this$0:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    # getter for: Lcom/showmax/app/ui/widget/RefreshProgressBar;->mListener:Lcom/showmax/app/ui/widget/RefreshProgressBar$RefreshProgressBarListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->access$000(Lcom/showmax/app/ui/widget/RefreshProgressBar;)Lcom/showmax/app/ui/widget/RefreshProgressBar$RefreshProgressBarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/showmax/app/ui/widget/RefreshProgressBar$1;->this$0:Lcom/showmax/app/ui/widget/RefreshProgressBar;

    # getter for: Lcom/showmax/app/ui/widget/RefreshProgressBar;->mListener:Lcom/showmax/app/ui/widget/RefreshProgressBar$RefreshProgressBarListener;
    invoke-static {v0}, Lcom/showmax/app/ui/widget/RefreshProgressBar;->access$000(Lcom/showmax/app/ui/widget/RefreshProgressBar;)Lcom/showmax/app/ui/widget/RefreshProgressBar$RefreshProgressBarListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/showmax/app/ui/widget/RefreshProgressBar$RefreshProgressBarListener;->onRefreshClick()V

    .line 124
    :cond_0
    return-void
.end method
