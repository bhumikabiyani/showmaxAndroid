.class Lcom/showmax/app/ui/ActivityMyFlix$1;
.super Ljava/lang/Object;
.source "ActivityMyFlix.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/ActivityMyFlix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/ActivityMyFlix;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/ActivityMyFlix;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/ActivityMyFlix;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/showmax/app/ui/ActivityMyFlix$1;->this$0:Lcom/showmax/app/ui/ActivityMyFlix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 212
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 207
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/showmax/app/ui/ActivityMyFlix$1;->this$0:Lcom/showmax/app/ui/ActivityMyFlix;

    # setter for: Lcom/showmax/app/ui/ActivityMyFlix;->mCurrentFragmentPosition:I
    invoke-static {v0, p1}, Lcom/showmax/app/ui/ActivityMyFlix;->access$002(Lcom/showmax/app/ui/ActivityMyFlix;I)I

    .line 202
    return-void
.end method
