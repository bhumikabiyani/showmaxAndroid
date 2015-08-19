.class Lcom/showmax/app/ui/widget/ThreeViewPager$3;
.super Ljava/lang/Object;
.source "ThreeViewPager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/app/ui/widget/ThreeViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/widget/ThreeViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/widget/ThreeViewPager;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$3;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 260
    :goto_0
    return v2

    .line 254
    :pswitch_0
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$3;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    const/4 v1, 0x1

    # setter for: Lcom/showmax/app/ui/widget/ThreeViewPager;->mPageAutoChangePaused:Z
    invoke-static {v0, v1}, Lcom/showmax/app/ui/widget/ThreeViewPager;->access$102(Lcom/showmax/app/ui/widget/ThreeViewPager;Z)Z

    goto :goto_0

    .line 257
    :pswitch_1
    iget-object v0, p0, Lcom/showmax/app/ui/widget/ThreeViewPager$3;->this$0:Lcom/showmax/app/ui/widget/ThreeViewPager;

    # setter for: Lcom/showmax/app/ui/widget/ThreeViewPager;->mPageAutoChangePaused:Z
    invoke-static {v0, v2}, Lcom/showmax/app/ui/widget/ThreeViewPager;->access$102(Lcom/showmax/app/ui/widget/ThreeViewPager;Z)Z

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
