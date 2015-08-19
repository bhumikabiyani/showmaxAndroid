.class final Lcom/flurry/android/monolithic/sdk/impl/w;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/flurry/android/monolithic/sdk/impl/o;


# direct methods
.method private constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/o;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/o;Lcom/flurry/android/monolithic/sdk/impl/p;)V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/w;-><init>(Lcom/flurry/android/monolithic/sdk/impl/o;)V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 412
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHideCustomView()"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no activity present"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 421
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->n(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->r(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 428
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->r(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 431
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 432
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/o;->p(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 433
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->p(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/o;->n(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 435
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->q(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->q(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 437
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->q(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 438
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->q(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 439
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->q(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 441
    :cond_3
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 443
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->s(Lcom/flurry/android/monolithic/sdk/impl/o;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/j;->a(Landroid/app/Activity;I)V

    .line 444
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->t(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 446
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 447
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 448
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;Landroid/view/View;)Landroid/view/View;

    .line 450
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v1, v1, Lcom/flurry/android/monolithic/sdk/impl/o;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v2, v2, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 327
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShowCustomView(14)"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no activity present"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 336
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->n(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->o(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 338
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->o(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1, p1}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;Landroid/view/View;)Landroid/view/View;

    .line 343
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    invoke-static {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;I)I

    .line 344
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1, p3}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 346
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 347
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->p(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 348
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->p(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/o;->n(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 356
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v2}, Lcom/flurry/android/monolithic/sdk/impl/o;->p(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 361
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->q(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/x;

    const v3, 0x1030011

    invoke-direct {v2, p0, v0, v3, v0}, Lcom/flurry/android/monolithic/sdk/impl/x;-><init>(Lcom/flurry/android/monolithic/sdk/impl/w;Landroid/content/Context;ILandroid/app/Activity;)V

    invoke-static {v1, v2}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 378
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->q(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 380
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->q(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/y;

    invoke-direct {v2, p0}, Lcom/flurry/android/monolithic/sdk/impl/y;-><init>(Lcom/flurry/android/monolithic/sdk/impl/w;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 390
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->q(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Lcom/flurry/android/monolithic/sdk/impl/z;

    invoke-direct {v2, p0}, Lcom/flurry/android/monolithic/sdk/impl/z;-><init>(Lcom/flurry/android/monolithic/sdk/impl/w;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 401
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->q(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 402
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v1}, Lcom/flurry/android/monolithic/sdk/impl/o;->q(Lcom/flurry/android/monolithic/sdk/impl/o;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 405
    :cond_2
    invoke-static {v0, p2, v6}, Lcom/flurry/android/monolithic/sdk/impl/j;->a(Landroid/app/Activity;IZ)Z

    .line 407
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v1, v1, Lcom/flurry/android/monolithic/sdk/impl/o;->b:Lcom/flurry/android/impl/ads/FlurryAdModule;

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    iget-object v2, v2, Lcom/flurry/android/monolithic/sdk/impl/o;->d:Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v6/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 310
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShowCustomView(7)"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-static {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->a(Lcom/flurry/android/monolithic/sdk/impl/o;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no activity present"

    invoke-static {v2, v0, v1}, Lcom/flurry/android/monolithic/sdk/impl/ja;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/w;->a:Lcom/flurry/android/monolithic/sdk/impl/o;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/o;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 319
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/flurry/android/monolithic/sdk/impl/w;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method
