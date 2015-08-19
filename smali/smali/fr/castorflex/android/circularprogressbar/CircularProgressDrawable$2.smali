.class Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$2;
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
    .line 178
    iput-object p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$2;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 181
    invoke-static {p1}, Lfr/castorflex/android/circularprogressbar/CircularProgressBarUtils;->getAnimatedFraction(Landroid/animation/ValueAnimator;)F

    move-result v1

    .line 183
    .local v1, "animatedFraction":F
    iget-object v2, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$2;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    # getter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mFirstSweepAnimation:Z
    invoke-static {v2}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$000(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$2;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    # getter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mMaxSweepAngle:I
    invoke-static {v2}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$100(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v1, v2

    .line 188
    .local v0, "angle":F
    :goto_0
    iget-object v2, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$2;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    invoke-virtual {v2, v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->setCurrentSweepAngle(F)V

    .line 189
    return-void

    .line 186
    .end local v0    # "angle":F
    :cond_0
    iget-object v2, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$2;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    # getter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mMinSweepAngle:I
    invoke-static {v2}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$200(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$2;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    # getter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mMaxSweepAngle:I
    invoke-static {v3}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$100(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)I

    move-result v3

    iget-object v4, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$2;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    # getter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mMinSweepAngle:I
    invoke-static {v4}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$200(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    add-float v0, v2, v3

    .restart local v0    # "angle":F
    goto :goto_0
.end method
