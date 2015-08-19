.class Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$5;
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
    .locals 0
    .param p1, "this$0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    .prologue
    .line 239
    iput-object p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$5;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$5;->cancelled:Z

    .line 261
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 249
    iget-boolean v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$5;->cancelled:Z

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$5;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    # invokes: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->setAppearing()V
    invoke-static {v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$1100(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)V

    .line 251
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$5;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    iget-object v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$5;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    # getter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentIndexColor:I
    invoke-static {v1}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$800(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$5;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    # getter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mColors:[I
    invoke-static {v2}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$600(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    # setter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentIndexColor:I
    invoke-static {v0, v1}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$802(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;I)I

    .line 252
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$5;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    iget-object v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$5;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    # getter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mColors:[I
    invoke-static {v1}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$600(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)[I

    move-result-object v1

    iget-object v2, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$5;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    # getter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentIndexColor:I
    invoke-static {v2}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$800(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)I

    move-result v2

    aget v1, v1, v2

    # setter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentColor:I
    invoke-static {v0, v1}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$702(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;I)I

    .line 253
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$5;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    # getter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$1000(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$5;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    # getter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentColor:I
    invoke-static {v1}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$700(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$5;->this$0:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    # getter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepAppearingAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$1200(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 256
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 265
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$5;->cancelled:Z

    .line 245
    return-void
.end method
