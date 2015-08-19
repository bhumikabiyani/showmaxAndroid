.class public Landroid/support/design/widget/Snackbar;
.super Ljava/lang/Object;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/Snackbar$Behavior;,
        Landroid/support/design/widget/Snackbar$SnackbarLayout;,
        Landroid/support/design/widget/Snackbar$Duration;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field private static final ANIMATION_FADE_DURATION:I = 0xb4

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field private static final MSG_DISMISS:I = 0x1

.field private static final MSG_SHOW:I

.field private static final sHandler:Landroid/os/Handler;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDuration:I

.field private final mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

.field private final mParent:Landroid/view/ViewGroup;

.field private final mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/Snackbar$1;

    invoke-direct {v2}, Landroid/support/design/widget/Snackbar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/Snackbar;->sHandler:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance v1, Landroid/support/design/widget/Snackbar$3;

    invoke-direct {v1, p0}, Landroid/support/design/widget/Snackbar$3;-><init>(Landroid/support/design/widget/Snackbar;)V

    iput-object v1, p0, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    .line 115
    iput-object p1, p0, Landroid/support/design/widget/Snackbar;->mParent:Landroid/view/ViewGroup;

    .line 116
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/Snackbar;->mContext:Landroid/content/Context;

    .line 118
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 119
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Landroid/support/design/R$layout;->layout_snackbar:I

    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mParent:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    iput-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    .line 120
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Landroid/support/design/widget/Snackbar;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/SnackbarManager$Callback;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/Snackbar;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/design/widget/Snackbar;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/design/widget/Snackbar;

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->animateViewIn()V

    return-void
.end method

.method static synthetic access$300(Landroid/support/design/widget/Snackbar;)Landroid/support/design/widget/Snackbar$SnackbarLayout;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/Snackbar;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/design/widget/Snackbar;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/design/widget/Snackbar;

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->onViewHidden()V

    return-void
.end method

.method private animateViewIn()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    .line 383
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 384
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 385
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    sget-object v2, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/Snackbar$6;

    invoke-direct {v2, p0}, Landroid/support/design/widget/Snackbar$6;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 418
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$anim;->snackbar_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 402
    .local v0, "anim":Landroid/view/animation/Animation;
    sget-object v1, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 403
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 404
    new-instance v1, Landroid/support/design/widget/Snackbar$7;

    invoke-direct {v1, p0}, Landroid/support/design/widget/Snackbar$7;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 416
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private animateViewOut()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xfa

    .line 421
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 422
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    sget-object v2, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/Snackbar$8;

    invoke-direct {v2, p0}, Landroid/support/design/widget/Snackbar$8;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 454
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/design/R$anim;->snackbar_out:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 438
    .local v0, "anim":Landroid/view/animation/Animation;
    sget-object v1, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 439
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 440
    new-instance v1, Landroid/support/design/widget/Snackbar$9;

    invoke-direct {v1, p0}, Landroid/support/design/widget/Snackbar$9;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 452
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "fallback":Landroid/view/ViewGroup;
    :cond_0
    instance-of v2, p0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v2, :cond_1

    .line 173
    check-cast p0, Landroid/view/ViewGroup;

    .line 193
    .end local p0    # "view":Landroid/view/View;
    :goto_0
    return-object p0

    .line 174
    .restart local p0    # "view":Landroid/view/View;
    :cond_1
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_2

    .line 178
    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 181
    check-cast v0, Landroid/view/ViewGroup;

    .line 185
    :cond_3
    if-eqz p0, :cond_4

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 188
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_5

    check-cast v1, Landroid/view/View;

    .end local v1    # "parent":Landroid/view/ViewParent;
    move-object p0, v1

    .line 190
    :cond_4
    :goto_1
    if-nez p0, :cond_0

    move-object p0, v0

    .line 193
    goto :goto_0

    .line 188
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_5
    const/4 p0, 0x0

    goto :goto_1
.end method

.method private isBeingDragged()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 475
    iget-object v4, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 477
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v4, :cond_0

    move-object v1, v2

    .line 478
    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 479
    .local v1, "cllp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 481
    .local v0, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    instance-of v4, v0, Landroid/support/design/widget/SwipeDismissBehavior;

    if-eqz v4, :cond_0

    .line 482
    check-cast v0, Landroid/support/design/widget/SwipeDismissBehavior;

    .end local v0    # "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    invoke-virtual {v0}, Landroid/support/design/widget/SwipeDismissBehavior;->getDragState()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 486
    .end local v1    # "cllp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_0
    return v3
.end method

.method public static make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    .line 140
    new-instance v0, Landroid/support/design/widget/Snackbar;

    invoke-static {p0}, Landroid/support/design/widget/Snackbar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/widget/Snackbar;-><init>(Landroid/view/ViewGroup;)V

    .line 141
    .local v0, "snackbar":Landroid/support/design/widget/Snackbar;
    invoke-virtual {v0, p1}, Landroid/support/design/widget/Snackbar;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;

    .line 142
    invoke-virtual {v0, p2}, Landroid/support/design/widget/Snackbar;->setDuration(I)Landroid/support/design/widget/Snackbar;

    .line 143
    return-object v0
.end method

.method private onViewHidden()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 468
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->onDismissed(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 469
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 314
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/SnackbarManager;->dismiss(Landroid/support/design/widget/SnackbarManager$Callback;)V

    .line 315
    return-void
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Landroid/support/design/widget/Snackbar;->mDuration:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    return-object v0
.end method

.method final hideView()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->isBeingDragged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    :cond_0
    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->onViewHidden()V

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->animateViewOut()V

    goto :goto_0
.end method

.method public setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 203
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 213
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getActionView()Landroid/widget/TextView;

    move-result-object v0

    .line 215
    .local v0, "tv":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 216
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    :goto_0
    return-object p0

    .line 219
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    new-instance v1, Landroid/support/design/widget/Snackbar$2;

    invoke-direct {v1, p0, p2}, Landroid/support/design/widget/Snackbar$2;-><init>(Landroid/support/design/widget/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setActionTextColor(I)Landroid/support/design/widget/Snackbar;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 249
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getActionView()Landroid/widget/TextView;

    move-result-object v0

    .line 250
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    return-object p0
.end method

.method public setActionTextColor(Landroid/content/res/ColorStateList;)Landroid/support/design/widget/Snackbar;
    .locals 2
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 239
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getActionView()Landroid/widget/TextView;

    move-result-object v0

    .line 240
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 241
    return-object p0
.end method

.method public setDuration(I)Landroid/support/design/widget/Snackbar;
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 282
    iput p1, p0, Landroid/support/design/widget/Snackbar;->mDuration:I

    .line 283
    return-object p0
.end method

.method public setText(I)Landroid/support/design/widget/Snackbar;
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 271
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/Snackbar;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 260
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    .line 261
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-object p0
.end method

.method public show()V
    .locals 3

    .prologue
    .line 307
    invoke-static {}, Landroid/support/design/widget/SnackbarManager;->getInstance()Landroid/support/design/widget/SnackbarManager;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/Snackbar;->mDuration:I

    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mManagerCallback:Landroid/support/design/widget/SnackbarManager$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/SnackbarManager;->show(ILandroid/support/design/widget/SnackbarManager$Callback;)V

    .line 308
    return-void
.end method

.method final showView()V
    .locals 4

    .prologue
    .line 330
    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 331
    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 333
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 336
    new-instance v0, Landroid/support/design/widget/Snackbar$Behavior;

    invoke-direct {v0, p0}, Landroid/support/design/widget/Snackbar$Behavior;-><init>(Landroid/support/design/widget/Snackbar;)V

    .line 337
    .local v0, "behavior":Landroid/support/design/widget/Snackbar$Behavior;
    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v2}, Landroid/support/design/widget/Snackbar$Behavior;->setStartAlphaSwipeDistance(F)V

    .line 338
    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v2}, Landroid/support/design/widget/Snackbar$Behavior;->setEndAlphaSwipeDistance(F)V

    .line 339
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/design/widget/Snackbar$Behavior;->setSwipeDirection(I)V

    .line 340
    new-instance v2, Landroid/support/design/widget/Snackbar$4;

    invoke-direct {v2, p0}, Landroid/support/design/widget/Snackbar$4;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v2}, Landroid/support/design/widget/Snackbar$Behavior;->setListener(Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;)V

    .line 361
    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 364
    .end local v0    # "behavior":Landroid/support/design/widget/Snackbar$Behavior;
    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mParent:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 367
    :cond_1
    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 369
    invoke-direct {p0}, Landroid/support/design/widget/Snackbar;->animateViewIn()V

    .line 380
    :goto_0
    return-void

    .line 372
    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    new-instance v3, Landroid/support/design/widget/Snackbar$5;

    invoke-direct {v3, p0}, Landroid/support/design/widget/Snackbar$5;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->setOnLayoutChangeListener(Landroid/support/design/widget/Snackbar$SnackbarLayout$OnLayoutChangeListener;)V

    goto :goto_0
.end method
