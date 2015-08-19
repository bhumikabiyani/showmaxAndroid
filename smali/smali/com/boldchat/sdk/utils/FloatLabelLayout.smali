.class public final Lcom/boldchat/sdk/utils/FloatLabelLayout;
.super Landroid/widget/FrameLayout;
.source "FloatLabelLayout.java"


# static fields
.field private static final ANIMATION_DURATION:J = 0x96L

.field private static final DEFAULT_PADDING_LEFT_RIGHT_DP:F = 12.0f


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mLabel:Landroid/widget/TextView;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/boldchat/sdk/utils/FloatLabelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/boldchat/sdk/utils/FloatLabelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    sget-object v2, Lcom/boldchat/sdk/R$styleable;->FloatLabelLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct {p0, v3}, Lcom/boldchat/sdk/utils/FloatLabelLayout;->dipsToPix(F)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 74
    .local v1, "sidePadding":I
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    .line 75
    iget-object v2, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76
    iget-object v2, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v2, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    const v3, 0x1030046

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 80
    iget-object v2, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v5, v5}, Lcom/boldchat/sdk/utils/FloatLabelLayout;->addView(Landroid/view/View;II)V

    .line 82
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/boldchat/sdk/utils/FloatLabelLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/boldchat/sdk/utils/FloatLabelLayout;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method private dipsToPix(F)I
    .locals 2
    .param p1, "dps"    # F

    .prologue
    .line 262
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/boldchat/sdk/utils/FloatLabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 2
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    .line 121
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/boldchat/sdk/utils/FloatLabelLayout$1;

    invoke-direct {v1, p0}, Lcom/boldchat/sdk/utils/FloatLabelLayout$1;-><init>(Lcom/boldchat/sdk/utils/FloatLabelLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 145
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/boldchat/sdk/utils/FloatLabelLayout$2;

    invoke-direct {v1, p0}, Lcom/boldchat/sdk/utils/FloatLabelLayout$2;-><init>(Lcom/boldchat/sdk/utils/FloatLabelLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 155
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method

.method private setSpinner(Landroid/widget/Spinner;)V
    .locals 2
    .param p1, "spinner"    # Landroid/widget/Spinner;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mSpinner:Landroid/widget/Spinner;

    .line 161
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/boldchat/sdk/utils/FloatLabelLayout$3;

    invoke-direct {v1, p0}, Lcom/boldchat/sdk/utils/FloatLabelLayout$3;-><init>(Lcom/boldchat/sdk/utils/FloatLabelLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 177
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/boldchat/sdk/utils/FloatLabelLayout$4;

    invoke-direct {v1, p0}, Lcom/boldchat/sdk/utils/FloatLabelLayout$4;-><init>(Lcom/boldchat/sdk/utils/FloatLabelLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 186
    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 87
    instance-of v1, p1, Landroid/widget/EditText;

    if-nez v1, :cond_0

    instance-of v1, p1, Landroid/widget/Spinner;

    if-eqz v1, :cond_5

    .line 88
    :cond_0
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "We already have an EditText, can only have one"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v1, p1

    .line 93
    check-cast v1, Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/boldchat/sdk/utils/FloatLabelLayout;->setEditText(Landroid/widget/EditText;)V

    .line 96
    :cond_2
    instance-of v1, p1, Landroid/widget/Spinner;

    if-eqz v1, :cond_4

    .line 98
    iget-object v1, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_3

    .line 99
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "We already have an EditText, can only have one"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v1, p1

    .line 101
    check-cast v1, Landroid/widget/Spinner;

    invoke-direct {p0, v1}, Lcom/boldchat/sdk/utils/FloatLabelLayout;->setSpinner(Landroid/widget/Spinner;)V

    .line 106
    :cond_4
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 108
    iget-object v1, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 109
    move-object p3, v0

    .line 114
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSpinner()Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method public hideLabel()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 239
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 241
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 242
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/boldchat/sdk/utils/FloatLabelLayout$5;

    invoke-direct {v1, p0}, Lcom/boldchat/sdk/utils/FloatLabelLayout$5;-><init>(Lcom/boldchat/sdk/utils/FloatLabelLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showLabel()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 216
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 222
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 223
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 224
    iget-object v0, p0, Lcom/boldchat/sdk/utils/FloatLabelLayout;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 231
    :cond_1
    return-void
.end method
