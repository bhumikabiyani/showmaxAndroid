.class Lcom/showmax/app/ui/widget/ContentWarningView$2;
.super Ljava/lang/Object;
.source "ContentWarningView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/showmax/app/ui/widget/ContentWarningView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/showmax/app/ui/widget/ContentWarningView;


# direct methods
.method constructor <init>(Lcom/showmax/app/ui/widget/ContentWarningView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/showmax/app/ui/widget/ContentWarningView;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/showmax/app/ui/widget/ContentWarningView$2;->this$0:Lcom/showmax/app/ui/widget/ContentWarningView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 143
    const-string v0, "[ContentWarningView]::[mCloseBtn]::[onTouch]::[event: %d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mautilus/lib/common/util/MauLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    return v3
.end method
