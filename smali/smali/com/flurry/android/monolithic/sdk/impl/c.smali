.class public final Lcom/flurry/android/monolithic/sdk/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/aw;


# instance fields
.field final synthetic a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

.field private b:Landroid/view/View;

.field private c:I

.field private d:Lcom/flurry/android/monolithic/sdk/impl/ax;

.field private e:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;Lcom/flurry/android/monolithic/sdk/impl/a;)V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/c;-><init>(Lcom/flurry/android/FlurryFullscreenTakeoverActivity;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/ar;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 509
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 526
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 514
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 515
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 517
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->d:Lcom/flurry/android/monolithic/sdk/impl/ax;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->d:Lcom/flurry/android/monolithic/sdk/impl/ax;

    invoke-interface {v0}, Lcom/flurry/android/monolithic/sdk/impl/ax;->a()V

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    iget v1, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->c:I

    invoke-virtual {v0, v1}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setRequestedOrientation(I)V

    .line 523
    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->d:Lcom/flurry/android/monolithic/sdk/impl/ax;

    .line 524
    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->e:Landroid/widget/FrameLayout;

    .line 525
    iput-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->b:Landroid/view/View;

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ar;Landroid/view/View;ILcom/flurry/android/monolithic/sdk/impl/ax;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 486
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/c;->a(Lcom/flurry/android/monolithic/sdk/impl/ar;)V

    .line 490
    :cond_0
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->b:Landroid/view/View;

    .line 491
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->c:I

    .line 492
    iput-object p4, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->d:Lcom/flurry/android/monolithic/sdk/impl/ax;

    .line 494
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->e:Landroid/widget/FrameLayout;

    .line 495
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->e:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 496
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->b:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 501
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 504
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0, p3}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->setRequestedOrientation(I)V

    .line 505
    return-void
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/ar;Landroid/view/View;Lcom/flurry/android/monolithic/sdk/impl/ax;)V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/c;->a:Lcom/flurry/android/FlurryFullscreenTakeoverActivity;

    invoke-virtual {v0}, Lcom/flurry/android/FlurryFullscreenTakeoverActivity;->getRequestedOrientation()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/flurry/android/monolithic/sdk/impl/c;->a(Lcom/flurry/android/monolithic/sdk/impl/ar;Landroid/view/View;ILcom/flurry/android/monolithic/sdk/impl/ax;)V

    .line 480
    return-void
.end method
