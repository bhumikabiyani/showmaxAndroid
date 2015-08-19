.class public Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;,
        Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$OnEndListener;,
        Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;
    }
.end annotation


# static fields
.field private static final COLOR_EVALUATOR:Landroid/animation/ArgbEvaluator;

.field private static final DEFAULT_ROTATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final END_ANIMATOR_DURATION:I = 0xc8

.field public static final END_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ROTATION_ANIMATOR_DURATION:I = 0x7d0

.field private static final SWEEP_ANIMATOR_DURATION:I = 0x258


# instance fields
.field private final fBounds:Landroid/graphics/RectF;

.field private mAngleInterpolator:Landroid/view/animation/Interpolator;

.field private mBorderWidth:F

.field private mColors:[I

.field private mCurrentColor:I

.field private mCurrentEndRatio:F

.field private mCurrentIndexColor:I

.field private mCurrentRotationAngle:F

.field private mCurrentRotationAngleOffset:F

.field private mCurrentSweepAngle:F

.field private mEndAnimator:Landroid/animation/ValueAnimator;

.field private mFirstSweepAnimation:Z

.field private mMaxSweepAngle:I

.field private mMinSweepAngle:I

.field private mModeAppearing:Z

.field private mOnEndListener:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$OnEndListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mRotationAnimator:Landroid/animation/ValueAnimator;

.field private mRotationSpeed:F

.field private mRunning:Z

.field private mSweepAppearingAnimator:Landroid/animation/ValueAnimator;

.field private mSweepDisappearingAnimator:Landroid/animation/ValueAnimator;

.field private mSweepInterpolator:Landroid/view/animation/Interpolator;

.field private mSweepSpeed:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->COLOR_EVALUATOR:Landroid/animation/ArgbEvaluator;

    .line 37
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->END_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 38
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->DEFAULT_ROTATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 39
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->DEFAULT_SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>([IFFFIILfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 3
    .param p1, "colors"    # [I
    .param p2, "borderWidth"    # F
    .param p3, "sweepSpeed"    # F
    .param p4, "rotationSpeed"    # F
    .param p5, "minSweepAngle"    # I
    .param p6, "maxSweepAngle"    # I
    .param p7, "style"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;
    .param p8, "angleInterpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "sweepInterpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    .line 57
    iput v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentRotationAngleOffset:F

    .line 58
    iput v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentRotationAngle:F

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentEndRatio:F

    .line 81
    iput-object p9, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepInterpolator:Landroid/view/animation/Interpolator;

    .line 82
    iput-object p8, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mAngleInterpolator:Landroid/view/animation/Interpolator;

    .line 83
    iput p2, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mBorderWidth:F

    .line 84
    iput v2, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentIndexColor:I

    .line 85
    iput-object p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mColors:[I

    .line 86
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mColors:[I

    aget v0, v0, v2

    iput v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentColor:I

    .line 87
    iput p3, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepSpeed:F

    .line 88
    iput p4, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mRotationSpeed:F

    .line 89
    iput p5, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mMinSweepAngle:I

    .line 90
    iput p6, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mMaxSweepAngle:I

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 94
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;->ROUNDED:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

    if-ne p7, v0, :cond_0

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 97
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mColors:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    invoke-direct {p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->setupAnimations()V

    .line 100
    return-void

    .line 96
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0
.end method

.method synthetic constructor <init>([IFFFIILfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$1;)V
    .locals 0
    .param p1, "x0"    # [I
    .param p2, "x1"    # F
    .param p3, "x2"    # F
    .param p4, "x3"    # F
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;
    .param p8, "x7"    # Landroid/view/animation/Interpolator;
    .param p9, "x8"    # Landroid/view/animation/Interpolator;
    .param p10, "x9"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$1;

    .prologue
    .line 27
    invoke-direct/range {p0 .. p9}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;-><init>([IFFFIILfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method static synthetic access$000(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)Z
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    .prologue
    .line 27
    iget-boolean v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mFirstSweepAnimation:Z

    return v0
.end method

.method static synthetic access$002(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mFirstSweepAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)I
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    .prologue
    .line 27
    iget v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mMaxSweepAngle:I

    return v0
.end method

.method static synthetic access$1000(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    .prologue
    .line 27
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1100(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)V
    .locals 0
    .param p0, "x0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    .prologue
    .line 27
    invoke-direct {p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->setAppearing()V

    return-void
.end method

.method static synthetic access$1200(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    .prologue
    .line 27
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepAppearingAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1300(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;F)V
    .locals 0
    .param p0, "x0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;
    .param p1, "x1"    # F

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->setEndRatio(F)V

    return-void
.end method

.method static synthetic access$1400(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    .prologue
    .line 27
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mEndAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1500(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$OnEndListener;
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    .prologue
    .line 27
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mOnEndListener:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$OnEndListener;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->DEFAULT_SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1700()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->DEFAULT_ROTATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$200(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)I
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    .prologue
    .line 27
    iget v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mMinSweepAngle:I

    return v0
.end method

.method static synthetic access$302(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;Z)Z
    .locals 0
    .param p0, "x0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mModeAppearing:Z

    return p1
.end method

.method static synthetic access$400(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)V
    .locals 0
    .param p0, "x0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    .prologue
    .line 27
    invoke-direct {p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->setDisappearing()V

    return-void
.end method

.method static synthetic access$500(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    .prologue
    .line 27
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepDisappearingAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$600(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)[I
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    .prologue
    .line 27
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mColors:[I

    return-object v0
.end method

.method static synthetic access$700(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)I
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    .prologue
    .line 27
    iget v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentColor:I

    return v0
.end method

.method static synthetic access$702(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;I)I
    .locals 0
    .param p0, "x0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentColor:I

    return p1
.end method

.method static synthetic access$800(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)I
    .locals 1
    .param p0, "x0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    .prologue
    .line 27
    iget v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentIndexColor:I

    return v0
.end method

.method static synthetic access$802(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;I)I
    .locals 0
    .param p0, "x0"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentIndexColor:I

    return p1
.end method

.method static synthetic access$900()Landroid/animation/ArgbEvaluator;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->COLOR_EVALUATOR:Landroid/animation/ArgbEvaluator;

    return-object v0
.end method

.method private reinitValues()V
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mFirstSweepAnimation:Z

    .line 104
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentEndRatio:F

    .line 105
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    return-void
.end method

.method private setAppearing()V
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mModeAppearing:Z

    .line 150
    iget v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentRotationAngleOffset:F

    iget v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mMinSweepAngle:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentRotationAngleOffset:F

    .line 151
    return-void
.end method

.method private setDisappearing()V
    .locals 2

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mModeAppearing:Z

    .line 155
    iget v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentRotationAngleOffset:F

    iget v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mMaxSweepAngle:I

    rsub-int v1, v1, 0x168

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentRotationAngleOffset:F

    .line 156
    return-void
.end method

.method private setEndRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 382
    iput p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentEndRatio:F

    .line 383
    invoke-virtual {p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->invalidateSelf()V

    .line 384
    return-void
.end method

.method private setupAnimations()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x44160000    # 600.0f

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 162
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mRotationAnimator:Landroid/animation/ValueAnimator;

    .line 163
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mRotationAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mAngleInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mRotationAnimator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x44fa0000    # 2000.0f

    iget v2, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mRotationSpeed:F

    div-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 165
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mRotationAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$1;

    invoke-direct {v1, p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$1;-><init>(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 172
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mRotationAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 173
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mRotationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 175
    new-array v0, v4, [F

    iget v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mMinSweepAngle:I

    int-to-float v1, v1

    aput v1, v0, v7

    iget v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mMaxSweepAngle:I

    int-to-float v1, v1

    aput v1, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepAppearingAnimator:Landroid/animation/ValueAnimator;

    .line 176
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepAppearingAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 177
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepAppearingAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepSpeed:F

    div-float v1, v6, v1

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 178
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepAppearingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$2;

    invoke-direct {v1, p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$2;-><init>(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 191
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepAppearingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$3;

    invoke-direct {v1, p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$3;-><init>(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 219
    new-array v0, v4, [F

    iget v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mMaxSweepAngle:I

    int-to-float v1, v1

    aput v1, v0, v7

    iget v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mMinSweepAngle:I

    int-to-float v1, v1

    aput v1, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepDisappearingAnimator:Landroid/animation/ValueAnimator;

    .line 220
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepDisappearingAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepDisappearingAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepSpeed:F

    div-float v1, v6, v1

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 222
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepDisappearingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$4;

    invoke-direct {v1, p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$4;-><init>(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 239
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepDisappearingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$5;

    invoke-direct {v1, p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$5;-><init>(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 267
    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mEndAnimator:Landroid/animation/ValueAnimator;

    .line 268
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mEndAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->END_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 269
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mEndAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 270
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mEndAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$6;

    invoke-direct {v1, p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$6;-><init>(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 277
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mEndAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$7;

    invoke-direct {v1, p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$7;-><init>(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 301
    return-void

    .line 162
    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    .line 267
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private stopAnimators()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mRotationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 327
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepAppearingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 328
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepDisappearingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 329
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 330
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    .line 110
    iget v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentRotationAngle:F

    iget v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentRotationAngleOffset:F

    sub-float v2, v0, v1

    .line 111
    .local v2, "startAngle":F
    iget v3, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentSweepAngle:F

    .line 112
    .local v3, "sweepAngle":F
    iget-boolean v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mModeAppearing:Z

    if-nez v0, :cond_0

    .line 113
    sub-float v0, v4, v3

    add-float/2addr v2, v0

    .line 115
    :cond_0
    rem-float/2addr v2, v4

    .line 116
    iget v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentEndRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 117
    iget v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentEndRatio:F

    mul-float v6, v3, v0

    .line 118
    .local v6, "newSweepAngle":F
    sub-float v0, v3, v6

    add-float/2addr v0, v2

    rem-float v2, v0, v4

    .line 119
    move v3, v6

    .line 121
    .end local v6    # "newSweepAngle":F
    :cond_1
    iget-object v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    const/4 v4, 0x0

    iget-object v5, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 122
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mRunning:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 141
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 142
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mBorderWidth:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 143
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mBorderWidth:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 144
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mBorderWidth:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 145
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->fBounds:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mBorderWidth:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 146
    return-void
.end method

.method public progressiveStop()V
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->progressiveStop(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$OnEndListener;)V

    .line 364
    return-void
.end method

.method public progressiveStop(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$OnEndListener;)V
    .locals 2
    .param p1, "listener"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$OnEndListener;

    .prologue
    .line 333
    invoke-virtual {p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iput-object p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mOnEndListener:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$OnEndListener;

    .line 337
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mEndAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$8;

    invoke-direct {v1, p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$8;-><init>(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 359
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mEndAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 127
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 131
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 132
    return-void
.end method

.method public setCurrentRotationAngle(F)V
    .locals 0
    .param p1, "currentRotationAngle"    # F

    .prologue
    .line 372
    iput p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentRotationAngle:F

    .line 373
    invoke-virtual {p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->invalidateSelf()V

    .line 374
    return-void
.end method

.method public setCurrentSweepAngle(F)V
    .locals 0
    .param p1, "currentSweepAngle"    # F

    .prologue
    .line 377
    iput p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mCurrentSweepAngle:F

    .line 378
    invoke-virtual {p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->invalidateSelf()V

    .line 379
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mRunning:Z

    .line 309
    invoke-direct {p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->reinitValues()V

    .line 310
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mRotationAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 311
    iget-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mSweepAppearingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 312
    invoke-virtual {p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->mRunning:Z

    .line 321
    invoke-direct {p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->stopAnimators()V

    .line 322
    invoke-virtual {p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->invalidateSelf()V

    goto :goto_0
.end method
