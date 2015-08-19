.class public Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAngleInterpolator:Landroid/view/animation/Interpolator;

.field private mColors:[I

.field private mMaxSweepAngle:I

.field private mMinSweepAngle:I

.field private mRotationSpeed:F

.field private mStrokeWidth:F

.field private mStyle:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

.field private mSweepInterpolator:Landroid/view/animation/Interpolator;

.field private mSweepSpeed:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;-><init>(Landroid/content/Context;Z)V

    .line 399
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "editMode"    # Z

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    # getter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->DEFAULT_SWEEP_INTERPOLATOR:Landroid/view/animation/Interpolator;
    invoke-static {}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$1600()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mSweepInterpolator:Landroid/view/animation/Interpolator;

    .line 395
    # getter for: Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->DEFAULT_ROTATION_INTERPOLATOR:Landroid/view/animation/Interpolator;
    invoke-static {}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->access$1700()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mAngleInterpolator:Landroid/view/animation/Interpolator;

    .line 402
    invoke-direct {p0, p1, p2}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->initValues(Landroid/content/Context;Z)V

    .line 403
    return-void
.end method

.method private initValues(Landroid/content/Context;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "editMode"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfr/castorflex/android/circularprogressbar/R$dimen;->cpb_default_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mStrokeWidth:F

    .line 407
    iput v2, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mSweepSpeed:F

    .line 408
    iput v2, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mRotationSpeed:F

    .line 409
    if-eqz p2, :cond_0

    .line 410
    new-array v0, v4, [I

    const v1, -0xffff01

    aput v1, v0, v3

    iput-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mColors:[I

    .line 411
    const/16 v0, 0x14

    iput v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mMinSweepAngle:I

    .line 412
    const/16 v0, 0x12c

    iput v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mMaxSweepAngle:I

    .line 418
    :goto_0
    sget-object v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;->ROUNDED:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

    iput-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mStyle:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

    .line 419
    return-void

    .line 414
    :cond_0
    new-array v0, v4, [I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lfr/castorflex/android/circularprogressbar/R$color;->cpb_default_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v0, v3

    iput-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mColors:[I

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfr/castorflex/android/circularprogressbar/R$integer;->cpb_default_min_sweep_angle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mMinSweepAngle:I

    .line 416
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lfr/castorflex/android/circularprogressbar/R$integer;->cpb_default_max_sweep_angle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mMaxSweepAngle:I

    goto :goto_0
.end method


# virtual methods
.method public angleInterpolator(Landroid/view/animation/Interpolator;)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 475
    const-string v0, "Angle interpolator"

    invoke-static {p1, v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressBarUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    iput-object p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mAngleInterpolator:Landroid/view/animation/Interpolator;

    .line 477
    return-object p0
.end method

.method public build()Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;
    .locals 11

    .prologue
    .line 481
    new-instance v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    iget-object v1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mColors:[I

    iget v2, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mStrokeWidth:F

    iget v3, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mSweepSpeed:F

    iget v4, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mRotationSpeed:F

    iget v5, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mMinSweepAngle:I

    iget v6, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mMaxSweepAngle:I

    iget-object v7, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mStyle:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

    iget-object v8, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mAngleInterpolator:Landroid/view/animation/Interpolator;

    iget-object v9, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mSweepInterpolator:Landroid/view/animation/Interpolator;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;-><init>([IFFFIILfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$1;)V

    return-object v0
.end method

.method public color(I)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 422
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mColors:[I

    .line 423
    return-object p0
.end method

.method public colors([I)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;
    .locals 0
    .param p1, "colors"    # [I

    .prologue
    .line 427
    invoke-static {p1}, Lfr/castorflex/android/circularprogressbar/CircularProgressBarUtils;->checkColors([I)V

    .line 428
    iput-object p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mColors:[I

    .line 429
    return-object p0
.end method

.method public maxSweepAngle(I)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;
    .locals 0
    .param p1, "maxSweepAngle"    # I

    .prologue
    .line 451
    invoke-static {p1}, Lfr/castorflex/android/circularprogressbar/CircularProgressBarUtils;->checkAngle(I)V

    .line 452
    iput p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mMaxSweepAngle:I

    .line 453
    return-object p0
.end method

.method public minSweepAngle(I)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;
    .locals 0
    .param p1, "minSweepAngle"    # I

    .prologue
    .line 445
    invoke-static {p1}, Lfr/castorflex/android/circularprogressbar/CircularProgressBarUtils;->checkAngle(I)V

    .line 446
    iput p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mMinSweepAngle:I

    .line 447
    return-object p0
.end method

.method public rotationSpeed(F)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;
    .locals 0
    .param p1, "rotationSpeed"    # F

    .prologue
    .line 439
    invoke-static {p1}, Lfr/castorflex/android/circularprogressbar/CircularProgressBarUtils;->checkSpeed(F)V

    .line 440
    iput p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mRotationSpeed:F

    .line 441
    return-object p0
.end method

.method public strokeWidth(F)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 457
    const-string v0, "StrokeWidth"

    invoke-static {p1, v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressBarUtils;->checkPositiveOrZero(FLjava/lang/String;)V

    .line 458
    iput p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mStrokeWidth:F

    .line 459
    return-object p0
.end method

.method public style(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;
    .locals 1
    .param p1, "style"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

    .prologue
    .line 463
    const-string v0, "Style"

    invoke-static {p1, v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressBarUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    iput-object p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mStyle:Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Style;

    .line 465
    return-object p0
.end method

.method public sweepInterpolator(Landroid/view/animation/Interpolator;)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;
    .locals 1
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 469
    const-string v0, "Sweep interpolator"

    invoke-static {p1, v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressBarUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    iput-object p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mSweepInterpolator:Landroid/view/animation/Interpolator;

    .line 471
    return-object p0
.end method

.method public sweepSpeed(F)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;
    .locals 0
    .param p1, "sweepSpeed"    # F

    .prologue
    .line 433
    invoke-static {p1}, Lfr/castorflex/android/circularprogressbar/CircularProgressBarUtils;->checkSpeed(F)V

    .line 434
    iput p1, p0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->mSweepSpeed:F

    .line 435
    return-object p0
.end method
