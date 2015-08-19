.class Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$8;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->progressiveStop(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$OnEndListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;


# direct methods
.method constructor <init>(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    .prologue
    .line 337
    iput-object p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$8;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 352
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 345
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$8;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    # getter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mEndAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$1400(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 346
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$8;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    # getter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mOnEndListener:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$OnEndListener;
    invoke-static {v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$1500(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$OnEndListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$8;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    # getter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mOnEndListener:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$OnEndListener;
    invoke-static {v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$1500(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$OnEndListener;

    move-result-object v0

    iget-object v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$8;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    invoke-interface {v0, v1}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$OnEndListener;->onEnd(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)V

    .line 347
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 357
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 341
    return-void
.end method
