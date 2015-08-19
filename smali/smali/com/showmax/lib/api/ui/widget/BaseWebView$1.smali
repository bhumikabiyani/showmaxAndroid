.class Lcom/showmax/lib/api/ui/widget/BaseWebView$1;
.super Ljava/lang/Object;
.source "BaseWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/showmax/lib/api/ui/widget/BaseWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDownX:F

.field final synthetic this$0:Lcom/showmax/lib/api/ui/widget/BaseWebView;


# direct methods
.method constructor <init>(Lcom/showmax/lib/api/ui/widget/BaseWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/lib/api/ui/widget/BaseWebView;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView$1;->this$0:Lcom/showmax/lib/api/ui/widget/BaseWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 114
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 134
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 119
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView$1;->mDownX:F

    goto :goto_0

    .line 128
    :pswitch_1
    iget v0, p0, Lcom/showmax/lib/api/ui/widget/BaseWebView$1;->mDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
