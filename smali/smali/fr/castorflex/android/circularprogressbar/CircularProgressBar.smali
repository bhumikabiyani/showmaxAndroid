.class public Lfr/castorflex/android/circularprogressbar/CircularProgressBar;
.super Landroid/widget/ProgressBar;
.source "CircularProgressBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    sget v0, Lfr/castorflex/android/circularprogressbar/R$attr;->cpbStyle:I

    invoke-direct {p0, p1, p2, v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct/range {p0 .. p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual/range {p0 .. p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressBar;->isInEditMode()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 27
    new-instance v17, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;-><init>(Landroid/content/Context;Z)V

    invoke-virtual/range {v17 .. v17}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->build()Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lfr/castorflex/android/circularprogressbar/CircularProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 32
    .local v13, "res":Landroid/content/res/Resources;
    sget-object v17, Lfr/castorflex/android/circularprogressbar/R$styleable;->CircularProgressBar:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 35
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v17, Lfr/castorflex/android/circularprogressbar/R$styleable;->CircularProgressBar_cpb_color:I

    sget v18, Lfr/castorflex/android/circularprogressbar/R$color;->cpb_default_color:I

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 36
    .local v7, "color":I
    sget v17, Lfr/castorflex/android/circularprogressbar/R$styleable;->CircularProgressBar_cpb_stroke_width:I

    sget v18, Lfr/castorflex/android/circularprogressbar/R$dimen;->cpb_default_stroke_width:I

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    .line 37
    .local v15, "strokeWidth":F
    sget v17, Lfr/castorflex/android/circularprogressbar/R$styleable;->CircularProgressBar_cpb_sweep_speed:I

    sget v18, Lfr/castorflex/android/circularprogressbar/R$string;->cpb_default_sweep_speed:I

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v16

    .line 38
    .local v16, "sweepSpeed":F
    sget v17, Lfr/castorflex/android/circularprogressbar/R$styleable;->CircularProgressBar_cpb_rotation_speed:I

    sget v18, Lfr/castorflex/android/circularprogressbar/R$string;->cpb_default_rotation_speed:I

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    .line 39
    .local v14, "rotationSpeed":F
    sget v17, Lfr/castorflex/android/circularprogressbar/R$styleable;->CircularProgressBar_cpb_colors:I

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 40
    .local v9, "colorsId":I
    sget v17, Lfr/castorflex/android/circularprogressbar/R$styleable;->CircularProgressBar_cpb_min_sweep_angle:I

    sget v18, Lfr/castorflex/android/circularprogressbar/R$integer;->cpb_default_min_sweep_angle:I

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    .line 41
    .local v12, "minSweepAngle":I
    sget v17, Lfr/castorflex/android/circularprogressbar/R$styleable;->CircularProgressBar_cpb_max_sweep_angle:I

    sget v18, Lfr/castorflex/android/circularprogressbar/R$integer;->cpb_default_max_sweep_angle:I

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    .line 42
    .local v11, "maxSweepAngle":I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    const/4 v8, 0x0

    .line 46
    .local v8, "colors":[I
    if-eqz v9, :cond_1

    .line 47
    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    .line 51
    :cond_1
    new-instance v17, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->sweepSpeed(F)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;

    move-result-object v17

    .line 53
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->rotationSpeed(F)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;

    move-result-object v17

    .line 54
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->strokeWidth(F)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;

    move-result-object v17

    .line 55
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->minSweepAngle(I)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;

    move-result-object v17

    .line 56
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->maxSweepAngle(I)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;

    move-result-object v6

    .line 58
    .local v6, "builder":Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;
    if-eqz v8, :cond_2

    array-length v0, v8

    move/from16 v17, v0

    if-lez v17, :cond_2

    .line 59
    invoke-virtual {v6, v8}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->colors([I)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;

    .line 63
    :goto_1
    invoke-virtual {v6}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->build()Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    move-result-object v10

    .line 64
    .local v10, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lfr/castorflex/android/circularprogressbar/CircularProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 61
    .end local v10    # "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v6, v7}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;->color(I)Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$Builder;

    goto :goto_1
.end method

.method private checkIndeterminateDrawable()Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    .local v0, "ret":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    if-nez v1, :cond_1

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The drawable is not a CircularProgressDrawable"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_1
    check-cast v0, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    .end local v0    # "ret":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method


# virtual methods
.method public progressiveStop()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->progressiveStop()V

    .line 76
    return-void
.end method

.method public progressiveStop(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$OnEndListener;)V
    .locals 1
    .param p1, "listener"    # Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$OnEndListener;

    .prologue
    .line 79
    invoke-direct {p0}, Lfr/castorflex/android/circularprogressbar/CircularProgressBar;->checkIndeterminateDrawable()Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable;->progressiveStop(Lfr/castorflex/android/circularprogressbar/CircularProgressDrawable$OnEndListener;)V

    .line 80
    return-void
.end method
