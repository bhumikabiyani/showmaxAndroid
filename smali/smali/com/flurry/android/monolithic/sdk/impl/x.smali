.class Lcom/flurry/android/monolithic/sdk/impl/x;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/flurry/android/monolithic/sdk/impl/w;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/w;Landroid/content/Context;ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/x;->b:Lcom/flurry/android/monolithic/sdk/impl/w;

    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/x;->a:Landroid/app/Activity;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/x;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/x;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
