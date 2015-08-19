.class public Lcom/showmax/app/ui/widget/LetterSpacingRobotoTextView;
.super Lcom/eevoskos/robotoviews/widget/RobotoTextView;
.source "LetterSpacingRobotoTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/showmax/app/ui/widget/LetterSpacingRobotoTextView$LetterSpacing;
    }
.end annotation


# instance fields
.field private mLetterSpacing:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/eevoskos/robotoviews/widget/RobotoTextView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/showmax/app/ui/widget/LetterSpacingRobotoTextView;->mLetterSpacing:F

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/eevoskos/robotoviews/widget/RobotoTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/showmax/app/ui/widget/LetterSpacingRobotoTextView;->mLetterSpacing:F

    .line 33
    invoke-direct {p0, p2}, Lcom/showmax/app/ui/widget/LetterSpacingRobotoTextView;->init(Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/eevoskos/robotoviews/widget/RobotoTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/showmax/app/ui/widget/LetterSpacingRobotoTextView;->mLetterSpacing:F

    .line 39
    invoke-direct {p0, p2}, Lcom/showmax/app/ui/widget/LetterSpacingRobotoTextView;->init(Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private applyLetterSpacing()V
    .locals 7

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/LetterSpacingRobotoTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "text":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 73
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 76
    const-string v4, "\u00a0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 80
    .local v1, "finalText":Landroid/text/SpannableString;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 82
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 84
    new-instance v4, Landroid/text/style/ScaleXSpan;

    iget v5, p0, Lcom/showmax/app/ui/widget/LetterSpacingRobotoTextView;->mLetterSpacing:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    invoke-direct {v4, v5}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    add-int/lit8 v5, v2, 0x1

    const/16 v6, 0x21

    invoke-virtual {v1, v4, v2, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 82
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 87
    :cond_2
    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v1, v4}, Lcom/eevoskos/robotoviews/widget/RobotoTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 88
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/showmax/app/ui/widget/LetterSpacingRobotoTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/showmax/app/R$styleable;->LetterSpacingRobotoTextView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/showmax/app/ui/widget/LetterSpacingRobotoTextView;->mLetterSpacing:F

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method


# virtual methods
.method public getLetterSpacing()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/showmax/app/ui/widget/LetterSpacingRobotoTextView;->mLetterSpacing:F

    return v0
.end method

.method public setLetterSpacing(F)V
    .locals 0
    .param p1, "letterSpacing"    # F

    .prologue
    .line 49
    iput p1, p0, Lcom/showmax/app/ui/widget/LetterSpacingRobotoTextView;->mLetterSpacing:F

    .line 50
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/LetterSpacingRobotoTextView;->applyLetterSpacing()V

    .line 51
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/eevoskos/robotoviews/widget/RobotoTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 57
    invoke-direct {p0}, Lcom/showmax/app/ui/widget/LetterSpacingRobotoTextView;->applyLetterSpacing()V

    .line 58
    return-void
.end method
