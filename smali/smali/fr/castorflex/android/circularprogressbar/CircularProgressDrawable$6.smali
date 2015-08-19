.class Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$6;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->setupAnimations()V
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
    .line 270
    iput-object p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$6;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 273
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$6;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1}, Lfr/castorflex/android/circularprogressbar/CircularProgressBarUtils;->getAnimatedFraction(Landroid/animation/ValueAnimator;)F

    move-result v2

    sub-float/2addr v1, v2

    # invokes: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->setEndRatio(F)V
    invoke-static {v0, v1}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$1300(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;F)V

    .line 275
    return-void
.end method
