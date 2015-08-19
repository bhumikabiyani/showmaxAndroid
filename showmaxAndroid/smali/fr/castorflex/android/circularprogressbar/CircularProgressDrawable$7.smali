.class Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$7;
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
.field private cancelled:Z

.field final synthetic this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;


# direct methods
.method constructor <init>(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    .prologue
    .line 277
    iput-object p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$7;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$7;->cancelled:Z

    .line 294
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 287
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$7;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    const/4 v1, 0x0

    # invokes: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->setEndRatio(F)V
    invoke-static {v0, v1}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$1300(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;F)V

    .line 288
    iget-boolean v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$7;->cancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$7;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    invoke-virtual {v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->stop()V

    .line 289
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 299
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$7;->cancelled:Z

    .line 283
    return-void
.end method
