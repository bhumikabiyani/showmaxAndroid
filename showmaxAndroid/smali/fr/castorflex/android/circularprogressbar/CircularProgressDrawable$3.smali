.class Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$3;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;


# direct methods
.method constructor <init>(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)V
    .locals 1
    .param p1, "this$0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    .prologue
    .line 191
    iput-object p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$3;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$3;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$3;->cancelled:Z

    .line 212
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 202
    iget-boolean v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$3;->cancelled:Z

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$3;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    const/4 v1, 0x0

    # setter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mFirstSweepAnimation:Z
    invoke-static {v0, v1}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$002(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;Z)Z

    .line 204
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$3;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    # invokes: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->setDisappearing()V
    invoke-static {v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$400(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)V

    .line 205
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$3;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    # getter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepDisappearingAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$500(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 207
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 216
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$3;->cancelled:Z

    .line 197
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$3;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    const/4 v1, 0x1

    # setter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mModeAppearing:Z
    invoke-static {v0, v1}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$302(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;Z)Z

    .line 198
    return-void
.end method
