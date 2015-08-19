.class Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$1;
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
    .line 165
    iput-object p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$1;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 168
    invoke-static {p1}, Lfr/castorflex/android/circularprogressbar/CircularProgressBarUtils;->getAnimatedFraction(Landroid/animation/ValueAnimator;)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v0, v1, v2

    .line 169
    .local v0, "angle":F
    iget-object v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$1;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    invoke-virtual {v1, v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->setCurrentRotationAngle(F)V

    .line 170
    return-void
.end method
