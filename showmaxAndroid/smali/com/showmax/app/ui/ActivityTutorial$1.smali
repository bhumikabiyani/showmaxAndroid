.class Lcom/showmax/app/ui/ActivityTutorial$1;
.super Ljava/lang/Object;
.source "ActivityTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityTutorial;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityTutorial;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityTutorial;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityTutorial$1;->this$0:Lcom/showmax/app/ui/ActivityTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityTutorial$1;->this$0:Lcom/showmax/app/ui/ActivityTutorial;

    const/4 v1, 0x5

    # invokes: Lcom/showmax/app/ui/ActivityTutorial;->setResultAndFinish(I)V
    invoke-static {v0, v1}, Lcom/showmax/app/ui/ActivityTutorial;->access$000(Lcom/showmax/app/ui/ActivityTutorial;I)V

    .line 107
    return-void
.end method
